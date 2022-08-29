import numpy
import pandas as pd


#df = pd.read_csv('file.csv', usecols=[0],encoding='utf-8').T
df = pd.read_csv('file.csv', encoding='utf-8')
#print(df.values)
#print(df)

#print(df.iloc[:, 0:1])#all row, col
#print(df.iloc[-1, :])#row-1, col
print(df.iloc[:, 1].values) #all row, col 1
#print(df.x)
#select columns such as x

#print(df.loc[0])
#select row 0

#print(df.loc[0:1])
#select rows from 0 to 1


###寫入新檔案
dff=df.iloc[:, 1].values

with open('your_file.txt', 'w') as f:
    for item in dff:
        f.write("%s\n" % item)
