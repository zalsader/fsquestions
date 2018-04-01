import matplotlib.pyplot as plt
import matplotlib
import squarify
import csv

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
        xdata.append(ucounts[k])
        ydata.append(fscounts[k])
    plt.plot(xdata, ydata, 'ko')
    plt.yscale('log')
    plt.xscale('log')
    plt.xlabel('Number of Github References')
    plt.ylabel('Number of Questions Referenced')
    #plt.show()
    plt.savefig('figures/1-2-usage-vs-coverage.pdf', bbox_inches='tight')
