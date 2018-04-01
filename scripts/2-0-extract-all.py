import matplotlib.pyplot as plt
import matplotlib
import csv
import numpy as np
from wordcloud import WordCloud
from os import path
import re
import nltk

d = path.dirname(__file__)
TFILENAME = path.join(d, 'csv', '2-0-alltitles.csv')
QBFILENAME = path.join(d, 'csv', '2-0-allquestionbodies.csv')
ABFILENAME = path.join(d, 'csv', '2-0-allanswerbodies.csv')
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

def load_stop_words():
    default_stopwords = set(nltk.corpus.stopwords.words('english'))
    with open(CUSTOMSW) as f:
        content = f.readlines()
    custom_stopwords = set([x.strip() for x in content])
    all_stopwords = default_stopwords | custom_stopwords
    return all_stopwords

def get_word_frequency(text, mostcommon=100):
    words = nltk.word_tokenize(text)
    words = [word for word in words if len(word) > 1]
    words = [word for word in words if not unicode(word, 'utf-8').isnumeric()]
    words = [word.lower() for word in words]
    all_stopwords = load_stop_words()
    words = [word for word in words if word not in all_stopwords]
    stemmer = nltk.stem.snowball.PorterStemmer()
    words = [stemmer.stem(word) for word in words]
    words = [word for word in words if word not in all_stopwords]
    fdist = nltk.FreqDist(words)
    result = {}
    for word, frequency in fdist.most_common(mostcommon):
         result[word] = frequency
    return result

if __name__ == '__main__':
    wc = WordCloud(
        width = 1600,
        height = 800,
        background_color='white',
        colormap=matplotlib.cm.inferno,
        max_font_size = 240,
        min_font_size = 20
    )

    titles = ' '.join(read_and_filter(TFILENAME))
    qbodies = ' '.join(read_and_filter(QBFILENAME))
    qfreq = get_word_frequency(qbodies+ ' ' +titles)
    wordcloud = wc.generate_from_frequencies(qfreq)
    plt.figure(figsize=(20,10))
    plt.imshow(wordcloud, interpolation="bilinear")
    plt.axis("off")
    plt.tight_layout(pad=0)
    plt.savefig('figures/2-0-allquestions.pdf', bbox_inches='tight')

    abodies = ' '.join(read_and_filter(QBFILENAME))
    afreq = get_word_frequency(abodies)
    wordcloud = wc.generate_from_frequencies(afreq)
    plt.figure(figsize=(20,10))
    plt.imshow(wordcloud, interpolation="bilinear")
    plt.axis("off")
    plt.tight_layout(pad=0)
    plt.savefig('figures/2-0-allanswers.pdf', bbox_inches='tight')
    plt.show()
