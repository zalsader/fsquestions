import requests
import time
from random import randint
from dotenv import load_dotenv
import os
load_dotenv()

ROOTURL = 'https://api.github.com'
USERNAME = os.getenv('USERNAME')
TOKEN = os.getenv('TOKEN')
LOGFILE = 'githubSearch.log'
SOURCEFILE = 'kernelfsfunctions.txt'
RESULTFILE = 'kernelfsfunctions_usage.csv'

def search_github(term, languages):
    query = term + ' language:' + ','.join(languages)
    res = requests.get(ROOTURL  + '/search/code', auth=(USERNAME, TOKEN), params={'q':query})
    logf = open(LOGFILE,'a')
    logf.write(query)
    count = res.json().get('total_count', None)
    logf.write(str(count))
    logf.write('\n')
    #logf.write(res.text)
    #logf.write('\n')
    logf.close()
    return count

def read_file_list(fname):
    with open(fname) as f:
        content = f.readlines()
    content = [x.strip() for x in content]
    return content

def read_done_list(fname):
    content = read_file_list(fname)
    content = [x.split(',')[0].strip('"') for x in content]
    return content

if __name__ == '__main__':
    fsfunctions = read_file_list(SOURCEFILE)
    donefunctions = read_done_list(RESULTFILE)
    if not donefunctions:
        logf = open(LOGFILE,'w')
        logf.close()
        csvf = open(RESULTFILE,'w')
        csvf.write('"name","count"\n')
        donefunctions = []
    else:
        csvf = open(RESULTFILE,'a')

    for fn in fsfunctions:
        if fn in donefunctions:
            continue
        count = search_github(fn, ['c', 'c++'])
        print (fn, count)
        csvf.write('"%s",%d\n'%(fn,count))
        time.sleep(randint(3,8))
    csvf.close()
