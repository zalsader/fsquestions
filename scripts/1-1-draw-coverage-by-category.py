import matplotlib.pyplot as plt
import matplotlib
import squarify
import csv

FILENAME = 'csv/1-1-2-coveragebycategory.csv'

def read_coverage(fname):
    categories = []
    coverages = []
    sizes = []
    with open(FILENAME, 'r') as csvfile:
        myreader = csv.DictReader(csvfile)
        for row in myreader:
            categories.append(row['name'])
            sizes.append(float(row['totalCount']))
            coverages.append(float(row['covered1']) / float(row['totalCount']))
    return (categories, sizes, coverages)


if __name__ == '__main__':
    (categories, sizes, coverages) = read_coverage(FILENAME)
    #TODO hardcoded labels
    categories[1] = 'Events based on\nfile descriptors'
    categories[2] = 'The Filesystem for\nExporting Kernel Objects'
    categories[6] = 'The Filesystem\ntypes'
    categories[9] = 'Registration\nand Superblocks'
    categories[12] = 'Journalling API\nData Types'
    categories[13] = 'Journalling API\nFunctions'
    # TODO end hardcoded labels
    cmap = matplotlib.cm.Blues
    mini=min(coverages)
    maxi=max(coverages)
    norm = matplotlib.colors.Normalize(vmin=mini, vmax=maxi)
    colors = [cmap(norm(value)) for value in coverages]
    plt.figure(1, figsize=(10,6))
    plt.subplot(111)
    squarify.plot(sizes=sizes, alpha=.7, color=colors, label=categories)
    plt.axis('off')
    #plt.show()
    plt.savefig('figures/1-1-coveragebycategory.pdf', bbox_inches='tight')
