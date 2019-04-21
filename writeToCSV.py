wave = []
# create wave here

import csv

f = open('wave.csv', 'w')
f.write(','.join([str(val) for val in wave]))
f.close()