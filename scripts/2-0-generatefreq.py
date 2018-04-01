import nltk
from nltk.corpus import stopwords
from os import path
import csv
import re
d = path.dirname(__file__)
QBFILENAME = path.join(d, 'csv', '2-0-allquestionbodies.csv')
CUSTOMSW = path.join(d, '2-0-customstopwords.txt')

def filter_text(text):
    text = re.sub(r'<pre>[\s\S]*?<\/pre>', ' ', text)
    text = re.sub(r'\&\w+\;', ' ', text)
    text = re.sub(r'<[\s\S]*?>', ' ', text)
    return text

def read_and_filter(fname):
    text = []
    with open(fname, 'r') as csvfile:
        myreader = csv.reader(csvfile)
        next(myreader, None)
        for row in myreader:
            text.append(filter_text(row[0]))
    return text

qbodies = ' '.join(read_and_filter(QBFILENAME))
words = nltk.word_tokenize(qbodies)

# Remove single-character tokens (mostly punctuation)
words = [word for word in words if len(word) > 1]

# Remove numbers
words = [word for word in words if not unicode(word, 'utf-8').isnumeric()]

# Lowercase all words (default_stopwords are lowercase too)
words = [word.lower() for word in words]
default_stopwords = set(stopwords.words('english'))

with open(CUSTOMSW) as f:
    content = f.readlines()
custom_stopwords = set([x.strip() for x in content])
all_stopwords = default_stopwords | custom_stopwords
words = [word for word in words if word not in all_stopwords]
stemmer = nltk.stem.snowball.PorterStemmer()
words = [stemmer.stem(word) for word in words]
words = [word for word in words if word not in all_stopwords]
fdist = nltk.FreqDist(words)

# Output top 50 words

for word, frequency in fdist.most_common(200):
    print(u'{};{}'.format(word, frequency))
