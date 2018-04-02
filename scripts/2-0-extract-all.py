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

def save_freq_as_csv(fname, fdist, mostcommon=100):
    with open(fname, 'w') as f:
        wr = csv.writer(f)
        wr.writerow(('word', 'frequency'))
        wr.writerows(fdist.most_common(mostcommon))

def load_stop_words():
    default_stopwords = set(nltk.corpus.stopwords.words('english'))
    with open(CUSTOMSW) as f:
        content = f.readlines()
    custom_stopwords = set([x.strip() for x in content])
    all_stopwords = default_stopwords | custom_stopwords
    return all_stopwords

def get_word_frequency(text, ngramscount=1, mostcommon=100):
    words = nltk.word_tokenize(text)
    words = [word for word in words if len(word) > 2]
    words = [word for word in words if not unicode(word, 'utf-8').isnumeric() and not re.match(r'^\W', word)]
    words = [word.lower() for word in words]
    all_stopwords = load_stop_words()
    words = [word for word in words if word not in all_stopwords]
    stemmer = nltk.stem.snowball.PorterStemmer()
    words = [stemmer.stem(word) for word in words]
    words = [word for word in words if word not in all_stopwords]
    if ngramscount > 1:
        words = [','.join(gram) for gram in nltk.ngrams(words, ngramscount)]
    fdist = nltk.FreqDist(words)
    result = {}
    for word, frequency in fdist.most_common(mostcommon):
         result[word] = frequency
    return (result, fdist)

if __name__ == '__main__':
    wc = WordCloud(
        width = 1600,
        height = 800,
        background_color='white',
        colormap=matplotlib.cm.copper,
        max_font_size = 240,
        min_font_size = 20
    )

    for n in range(1,4):
        titles = ' '.join(read_and_filter(TFILENAME))
        qbodies = ' '.join(read_and_filter(QBFILENAME))
        qfreq,qfreqdist = get_word_frequency(qbodies+ ' ' +titles, ngramscount = n)
        name = '2-0-%d-allquestions'%n
        save_freq_as_csv('csv/%s.csv'%name, qfreqdist)
        wordcloud = wc.generate_from_frequencies(qfreq)
        plt.figure(figsize=(20,10))
        plt.imshow(wordcloud, interpolation="bilinear")
        plt.axis("off")
        plt.tight_layout(pad=0)
        plt.savefig('figures/%s.pdf'%name, bbox_inches='tight')

        abodies = ' '.join(read_and_filter(QBFILENAME))
        afreq,afreqdist = get_word_frequency(abodies, ngramscount = n)
        name = '2-0-%d-allanswers'%n
        save_freq_as_csv('csv/%s.csv'%name, afreqdist)
        wordcloud = wc.generate_from_frequencies(afreq)
        plt.figure(figsize=(20,10))
        plt.imshow(wordcloud, interpolation="bilinear")
        plt.axis("off")
        plt.tight_layout(pad=0)
        plt.savefig('figures/%s.pdf'%name, bbox_inches='tight')
    # plt.show()
