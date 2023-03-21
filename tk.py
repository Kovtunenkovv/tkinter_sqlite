import tkinter as tk
from tkinter import ttk
from tkinter import messagebox
from tkinter import *
from tkcalendar import DateEntry, Calendar 
import sqlite3
import datetime

window = tk.Tk()
window.title("Daily blinking")
window.geometry('1280x800') #root.attributes('-fullscreen', True) 
#window.minsize(800,600)
#window.maxsize(1800,1600)

frame_up = tk.Frame(window, width=1280, height=100) #bg='green' 
frame_down = tk.Frame(window) #bg='blue'

frame_up.pack() #side='top',fill='both',expand=True
frame_down.pack(side='bottom', fill='both', expand=True)

regions = ('CNT','NEA','NWS','SEA','SWS')

l_zip_text=tk.Label(frame_up, text = 'Rigion')
l_zip_search=ttk.Combobox(frame_up, values=regions)
l_hostname_text=tk.Label(frame_up, text = 'BS')
l_hostname_search=tk.Entry(frame_up)                                    
l_firstoccurrence_text=tk.Label(frame_up, text = 'Date')
l_firstoccurrence_search=DateEntry(frame_up, date_pattern='YYYY-mm-dd', foreground ='black', 
                                    normalforeground = 'black', selectforeground='red', background = 'white')
l_enddate_search=DateEntry(frame_up, date_pattern='YYYY-mm-dd', foreground ='black', 
                                    normalforeground = 'black', selectforeground='red', background = 'white')

l_zip_search.get()
l_hostname_search.get()
l_firstoccurrence_search.get()
l_enddate_search.get()

l_zip_text.grid(row="0",column="1",padx=10,pady=10)
l_zip_search.grid(row="0",column="2",padx=10,pady=10)
l_hostname_text.grid(row="0",column="3",padx=10,pady=10)
l_hostname_search.grid(row="0",column="4",padx=10,pady=10)
l_firstoccurrence_text.grid(row="0",column="5",padx=10,pady=10)
l_firstoccurrence_search.grid(row="0",column="6",padx=10,pady=10)
l_enddate_search.grid(row="0",column="7",padx=10,pady=10)

table = ttk.Treeview(frame_down, show='headings', columns=('#1', '#2', '#3', '#4', '#5','#6'))
heads =['zip','hostname','first','end','eventid','info']
table['columns'] = heads

table.column("#1",minwidth=45, width=60, stretch='no')
table.column("#2",minwidth=60, width=70, stretch='no')
table.column("#3",minwidth=40, width=150, stretch='no')
table.column("#4",minwidth=40, width=150, stretch='no')
table.column("#5",minwidth=40, width=160, stretch='no')
table.column("#6",minwidth=40, width=1100, stretch='no')
all_data =[]

with sqlite3.connect('9-3.db') as db: #9-3.db
    #9-3.db
    #L:\\technical\\Эксплуатация_БС_UMTS\\Регламент_эксплуатация\\Распределение по группам\\Зона 3\\ЗИП\\!Ковтуненко\\py\\2023.db
    cursor=db.cursor()
    query ="""select zip,hostname,firstoccurrence,enddate,eventid,additionalinfo1 from alarm_daily limit 50"""                   
    cursor.execute(query)
    all_data=cursor.fetchall()

for header in heads:
    table.heading(header,text=header,anchor='center')
    table.column(header,anchor='center')
  
scroll=ttk.Scrollbar(frame_down, command=table.yview)
table.configure(yscrollcommand=scroll.set)
scroll.pack(side=tk.RIGHT, fill=tk.Y)

scroll=ttk.Scrollbar(frame_down, command=table.yview)
table.configure(yscrollcommand=scroll.set)
scroll.pack(side=tk.BOTTOM, fill=tk.X)

for row in all_data:
    table.insert('',tk.END,values=row)
table.pack(expand=tk.YES, fill='both')

def clicked_def():
    zip = l_zip_search.get()
    hostname = l_hostname_search.get()
    firstoccurrence = l_firstoccurrence_search.get()
    enddate = l_enddate_search.get()
    #eventid = l_eventis_search.get()
    #limit = l_limit_search.get()
    button.configure(text="update")
        
    for item in table.get_children():
        table.delete(item)

    with sqlite3.connect('9-3.db') as db: 
        #9-3.db
        #L:\\technical\\Эксплуатация_БС_UMTS\\Регламент_эксплуатация\\Распределение по группам\\Зона 3\\ЗИП\\!Ковтуненко\\py\\2023.db
        cursor=db.cursor()
        query = """SELECT zip,hostname,firstoccurrence,enddate,eventid,additionalinfo1 FROM alarm_daily where zip = '{}' AND hostname LIKE '{}%' AND firstoccurrence BETWEEN '{}%' AND '{}%' """.format(zip, hostname, firstoccurrence, enddate)
        cursor.execute(query)
        all_data=cursor.fetchall()

    for row in all_data:
        table.insert('',tk.END,values=row)

    table.update()
    window.update()    
    button.configure(text="Enter data")
    print(zip, hostname, firstoccurrence, enddate)
    return all_data

# Button
button = tk.Button(frame_up, text="Enter data", command=clicked_def)
button.grid(row=0, column=8, padx=100, pady=5)

window.mainloop()
