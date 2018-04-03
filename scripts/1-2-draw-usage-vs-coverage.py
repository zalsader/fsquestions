import matplotlib.pyplot as plt
import matplotlib
import numpy as np
import squarify
import csv
from scipy.stats import linregress

FSTALLYNAME = 'csv/1-1-1-fstally.csv'
FSUSAGENAME = 'csv/1-2-fsfunctions_usage.csv'


def read_counts(fname):
    counts = {}
    with open(fname, 'r') as csvfile:
        myreader = csv.reader(csvfile)
        next(myreader, None)
        for row in myreader:
            counts[row[0]] = int(row[1])
    return counts

if __name__ == '__main__':
    #TODO calculate and draw trend
    fscounts = read_counts(FSTALLYNAME)
    ucounts = read_counts(FSUSAGENAME)
    xdata = []
    ydata = []
    for k in fscounts:
        if fscounts[k] == 0:
            continue
        xdata.append(ucounts[k])
        ydata.append(fscounts[k])
    plt.plot(xdata, ydata, 'ko', alpha=0.5)
    logx = np.log(xdata)
    logy = np.log(ydata)
    print linregress(logx,logy)
    coof = np.polyfit(logx, logy, 1)
    p = np.poly1d(coof)
    yfit = lambda x: np.exp(p(np.log(x)))
    orderedx = np.sort(xdata)
    plt.plot(orderedx,yfit(orderedx), 'k--')
    # the line equation:
    print "y=%.6fx+(%.6f)"%(coof[0],coof[1])
    # y=0.541294x+(-6.112327)
    plt.yscale('log')
    plt.xscale('log')
    plt.ylim([0.75,500])
    plt.xlabel('Number of Github References')
    plt.ylabel('Number of Questions Referenced')
    #plt.show()
    plt.savefig('figures/1-2-usage-vs-coverage.pdf', bbox_inches='tight')
