import os
import pandas as pd

count = 0
link = r'C:\\Users\\Public\\SN\\'
newfile = 'C:\\Users\\Public\\pd.csv'
dirls = []
dirls = os.listdir(link)

print(*dirls, sep = '\n')

for file in dirls:
    print(file + ' - open file')
    path = link + file
    file = str(file[5:7] + '.' + file[8:10] + '.' + file[11:15])
    df = pd.read_csv(path, delimiter=';', header=None, low_memory=False)
    df = df.iloc[:, [0,2,3]]
    df = df.drop_duplicates()
    df.columns = ['BS', 'DU', 'SN']

    df = df.assign(Date=lambda x: file)
    count = count + 1
    print('Read', count, 'files')
    df.to_csv(newfile, mode='a', index= False , header= False )

print('Script is finished, read ', count, ' files')
