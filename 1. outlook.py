from exchangelib import Credentials, Account, Configuration, DELEGATE, FileAttachment, ItemAttachment, Message
import os.path
import datetime
from datetime import date, timedelta

data_name = datetime.datetime.today() - timedelta(days=1)
data_name = data_name.strftime("%Y")
nowdate = datetime.datetime.now()

with open('C:\\Users\\Public\\outlook.txt', 'r') as file:
    list = file.read().splitlines()
webmail = list[0]
lgn = list[1]
smtp = list[2]
psw = list[3]
link = list[4]
cnt = int(list[5])
folder = list[6]

credentials = Credentials(username=lgn, password=psw)
config = Configuration(server=webmail, credentials=credentials)
account = Account(primary_smtp_address=smtp, config=config, autodiscover=False, access_type=DELEGATE)
path = link + " " + data_name + "\\" 

itemout = None

nowdate = datetime.datetime.now()

for item in account.inbox.children: 
    if item.name == folder:
        itemout = item


if itemout != None:
    for item in itemout.all().filter(subject__contains='Alarms Ericsson daily MOS')[:cnt]:
        for attachment in item.attachments:
            date_str = str(item.datetime_sent)
            date = datetime.datetime.strptime(date_str[:19], "%Y-%m-%d %H:%M:%S")
            print("текущая дата: " + nowdate.strftime("%Y%m%d"))
            print("дата отправки: " + date.strftime("%Y%m%d"))
            
            if nowdate.strftime("%Y%m%d") == date.strftime("%Y%m%d"):
                nowdate = date - datetime.timedelta(days=1)
                date = (date - datetime.timedelta(days=1)).strftime("%Y%m%d")
                
                print("вложение: " + attachment.name)
                print("название файла: " + date)
                print(" ")
                local_path = os.path.join(path, date + ".xlsx")
                with open(local_path, 'wb') as f:
                    f.write(attachment.content)
          
