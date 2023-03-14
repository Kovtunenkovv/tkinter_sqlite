import tkinter as tk
from tkinter import ttk
from tkinter import messagebox
from tkinter import *
import sqlite3
import datetime

window = tk.Tk()
window.title("Daily blinking")
window.geometry('1280x800')
#window.minsize(800,600)
#window.maxsize(1800,1600) d-masta-killa -(был тут) if- хуиф, then-хуен

frame_up = tk.Frame(window) #bg='green' 
frame_down = tk.Frame(window) #bg='blue'

frame_up.pack(side='top',fill='both',expand=True)
frame_down.pack(side='bottom', fill='both', expand=True)

l_zip_text=tk.Label(frame_up, text = 'Rigion')
l_zip_search=tk.Entry(frame_up)                                         
l_zip_search.get()
l_hostname_text=tk.Label(frame_up, text = 'BS')
l_hostname_search=tk.Entry(frame_up)                                    
l_hostname_search.get()
l_firstoccurrence_text=tk.Label(frame_up, text = 'Date')
l_firstoccurrence_search=tk.Entry(frame_up)                             
l_firstoccurrence_search.get()
l_eventid_text=tk.Label(frame_up, text = 'Alarm')
l_eventis_search=tk.Entry(frame_up)                                     
l_eventis_search.get()
l_limit_text=tk.Label(frame_up, text = 'Limit')
l_limit_search=tk.Entry(frame_up)
l_limit_search.get()

l_zip_text.grid(row="0",column="0",padx=10,pady=10)
l_zip_search.grid(row="0",column="1",padx=10,pady=10)
l_hostname_text.grid(row="1",column="0",padx=10,pady=10)
l_hostname_search.grid(row="1",column="1",padx=10,pady=10)
l_firstoccurrence_text.grid(row="2",column="0",padx=10,pady=10)
l_firstoccurrence_search.grid(row="2",column="1",padx=10,pady=10)
l_eventid_text.grid(row="3",column="0",padx=10,pady=10)
l_eventis_search.grid(row="3",column="1",padx=10,pady=10)
l_limit_text.grid(row="4",column="0",padx=10,pady=10)
l_limit_search.grid(row="4",column="1",padx=10,pady=10)

table = ttk.Treeview(frame_down, show='headings')
heads =['id','zip','site','hostname','first','end','severity','eventid','info']
table['columns'] = heads
all_data =[]

table.column("#1",width=50)
table.column("#2",width=70)
table.column("#3",width=100)
table.column("#4",width=100)
table.column("#5",width=150)
table.column("#6",width=150)
table.column("#7",width=50)
table.column("#8",width=150)

with sqlite3.connect('9-3.db') as db:
    cursor=db.cursor()
    query ="""select * from alarm_daily limit 50"""
            #"""SELECT * FROM alarm_daily WHERE zip=? and hostname=? and firstoccurrence like=?% and eventid=? limit=?, 
            #(l_zip_search,l_hostname_search,l_firstoccurrence_search, l_eventis_search, l_limit_search)"""                    
    
    cursor.execute(query)
    all_data=cursor.fetchall()

for header in heads:
    table.heading(header,text=header,anchor='center')
    table.column(header,anchor='center')
  
scroll=ttk.Scrollbar(frame_down, command=table.yview)
table.configure(yscrollcommand=scroll.set)
scroll.pack(side=tk.RIGHT, fill=tk.Y) sosi hui u sobaki

for row in all_data:
    table.insert('',tk.END,values=row)

table.pack(expand=tk.YES, fill='both')

def clicked_def(): 
    template = "SELECT * FROM alarm_daily {WHERE} {PARAM}"                  ###
    button.configure(text="update")
    with sqlite3.connect('9-3.db') as db:
        cursor=db.cursor()
        query = """SELECT * FROM alarm_daily where zip = 'SEA' limit 50"""
        cursor.execute(query)
        all_data=cursor
        
    for item in table.get_children():
        print(item)
        table.delete(item)

    for row in all_data:
        table.insert('',tk.END,values=row)

    table.update()
    window.update()
        
    button.configure(text="Enter data")

    #return all_data

# Button
button = tk.Button(frame_up, text="Enter data", command=clicked_def)
button.grid(row=5, column=0, padx=50, pady=10)

window.mainloop() #Эта функция вызывает бесконечный цикл окна
