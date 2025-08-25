import os
import shutil
import datetime
import time
from datetime import date, timedelta

data_name = datetime.datetime.today() - timedelta(days=1)
data_name = data_name.strftime("%Y")
fname = data_name + '.db'
from_src = 'L:\\*'
to_src = 'C:\\Users\\Public'

print(f'Start copy {fname}')

shutil.copy(os.path.join(from_src, fname),
            os.path.join(to_src))
print(f'Copy {fname} is done')
time.sleep(5)
