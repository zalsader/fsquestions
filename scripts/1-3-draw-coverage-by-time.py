import matplotlib.pyplot as plt
import matplotlib.dates as mdates
import matplotlib
from matplotlib.ticker import FuncFormatter
import squarify
import csv
import numpy as np
import datetime as dt

FILENAME = 'csv/1-3-coveragebytime.csv'
TOTALFN = 310 #TODO hardcoded

def total_coverage(num):
    return float(num)/TOTALFN

def read_coverage_time(fname):
    dates = []
    coverage1 = []
    coverage2 = []
    coverage5 = []
    coverage10 = []
    with open(fname, 'r') as csvfile:
        myreader = csv.DictReader(csvfile)
        for row in myreader:
            dates.append(dt.datetime.strptime(row['yearmonth'],'%Y-%m').date())
            coverage1.append(total_coverage(row['covered1']))
            coverage2.append(total_coverage(row['covered2']))
            coverage5.append(total_coverage(row['covered5']))
            coverage10.append(total_coverage(row['covered10']))
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
    ax.xaxis.set_major_formatter(mdates.DateFormatter('%m/%Y'))
    ax.yaxis.set_major_formatter(FuncFormatter(lambda y, _: '{:.0%}'.format(y)))
    ax.set_ylim([0,0.4])
    plt.margins(0)
    #plt.show()
    plt.savefig('figures/1-3-coverage-by-time.pdf', bbox_inches='tight')
