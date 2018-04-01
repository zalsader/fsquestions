import matplotlib.pyplot as plt
import matplotlib
import squarify
import csv
import numpy as np

FILENAME = 'csv/1-3-coveragebytime.csv'


def read_coverage_time(fname):
    dates = []
    coverage1 = []
    coverage2 = []
    coverage5 = []
    coverage10 = []
    with open(fname, 'r') as csvfile:
        myreader = csv.DictReader(csvfile)
        for row in myreader:
            #TODO calculate coverage
            #dates.append(row['yearmonth'])
            dates.append(row['yearmonthnum'])
            coverage1.append(int(row['covered1']))
            coverage2.append(int(row['covered2']))
            coverage5.append(int(row['covered5']))
            coverage10.append(int(row['covered10']))
    return (dates, coverage1, coverage2, coverage5, coverage10)

if __name__ == '__main__':
    (dates, coverage1, coverage2, coverage5, coverage10) = read_coverage_time(FILENAME)
    coverage1 = np.cumsum(coverage1)
    coverage2 = np.cumsum(coverage2)
    coverage5 = np.cumsum(coverage5)
    coverage10 = np.cumsum(coverage10)
    fig, ax = plt.subplots()
    cmap = matplotlib.cm.Blues
    norm = matplotlib.colors.Normalize(vmin=0, vmax=4)
    ax.fill_between(dates, 0, coverage1, color=cmap(norm(1)))
    ax.fill_between(dates, 0, coverage2, color=cmap(norm(2)))
    ax.fill_between(dates, 0, coverage5, color=cmap(norm(3)))
    ax.fill_between(dates, 0, coverage10, color=cmap(norm(4)))
    #plt.show()
    plt.savefig('figures/1-3-coverage-by-time.pdf', bbox_inches='tight')
