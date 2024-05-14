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



SQL:

WITH UniqueCounts AS (SELECT BS, DU, COUNT(DISTINCT SN) AS Count FROM tbl GROUP BY BS, DU)
SELECT tbl.BS, tbl.DU, UC.Count,
MAX(CASE WHEN (tbl.Date) = '01.01.2024' THEN tbl.SN ELSE NULL END) AS `W1`, 
MAX(CASE WHEN (tbl.Date) = '08.01.2024' THEN tbl.SN ELSE NULL END) AS `W2`, 
MAX(CASE WHEN (tbl.Date) = '15.01.2024' THEN tbl.SN ELSE NULL END) AS `W3`, 
MAX(CASE WHEN (tbl.Date) = '22.01.2024' THEN tbl.SN ELSE NULL END) AS `W4`, 
MAX(CASE WHEN (tbl.Date) = '29.01.2024' THEN tbl.SN ELSE NULL END) AS `W5`, 
MAX(CASE WHEN (tbl.Date) = '05.02.2024' THEN tbl.SN ELSE NULL END) AS `W6`, 
MAX(CASE WHEN (tbl.Date) = '12.02.2024' THEN tbl.SN ELSE NULL END) AS `W7`, 
MAX(CASE WHEN (tbl.Date) = '19.02.2024' THEN tbl.SN ELSE NULL END) AS `W8`, 
MAX(CASE WHEN (tbl.Date) = '26.02.2024' THEN tbl.SN ELSE NULL END) AS `W9`, 
MAX(CASE WHEN (tbl.Date) = '04.03.2024' THEN tbl.SN ELSE NULL END) AS `W10`, 
MAX(CASE WHEN (tbl.Date) = '11.03.2024' THEN tbl.SN ELSE NULL END) AS `W11`, 
MAX(CASE WHEN (tbl.Date) = '18.03.2024' THEN tbl.SN ELSE NULL END) AS `W12`, 
MAX(CASE WHEN (tbl.Date) = '25.03.2024' THEN tbl.SN ELSE NULL END) AS `W13`, 
MAX(CASE WHEN (tbl.Date) = '01.04.2024' THEN tbl.SN ELSE NULL END) AS `W14`,
MAX(CASE WHEN (tbl.Date) = '08.04.2024' THEN tbl.SN ELSE NULL END) AS `W15`,
MAX(CASE WHEN (tbl.Date) = '15.04.2024' THEN tbl.SN ELSE NULL END) AS `W16`,
MAX(CASE WHEN (tbl.Date) = '22.04.2024' THEN tbl.SN ELSE NULL END) AS `W17`,
MAX(CASE WHEN (tbl.Date) = '29.04.2024' THEN tbl.SN ELSE NULL END) AS `W18`,
MAX(CASE WHEN (tbl.Date) = '06.05.2024' THEN tbl.SN ELSE NULL END) AS `W19`,
MAX(CASE WHEN (tbl.Date) = '13.05.2024' THEN tbl.SN ELSE NULL END) AS `W20`,
MAX(CASE WHEN (tbl.Date) = '20.05.2024' THEN tbl.SN ELSE NULL END) AS `W21`

FROM tbl
JOIN UniqueCounts UC ON tbl.BS = UC.BS AND tbl.DU = UC.DU
GROUP BY tbl.BS, tbl.DU, UC.Count
ORDER BY UC.count desc
limit 1000
