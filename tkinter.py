import tkinter as tk
from tkinter import ttk
import sqlite3
import datetime


def clicked():  
    lbl.configure(text="обновление")
    all_data =[]
    with sqlite3.connect('9-3.db') as db:
        cursor=db.cursor()
        query = """SELECT * FROM alarm_daily limit 10"""
        cursor.execute(query)
        all_data=cursor
    #return all_data


window = tk.Tk()
window.title("Daily blinking")
window.geometry('800x600')
#window.minsize(800,600)
#window.maxsize(1800,1600)

frame_up = tk.Frame(window, bg='green')
frame_down = tk.Frame(window, bg='blue')

frame_up.pack(side='top',fill='both',expand=True)
frame_down.pack(side='bottom', fill='both', expand=True)

l_zip_text=tk.Label(frame_up, text = 'Регион')
l_zip_search=tk.Label(frame_up,text = 'поиск') ###
l_hostname_text=tk.Label(frame_up, text = 'БС')
l_hostname_search=tk.Label(frame_up,text = 'поиск') ###
l_date_text=tk.Label(frame_up, text = 'Дата')
l_date_search=tk.Label(frame_up,text = 'поиск') ###
l_eventid_text=tk.Label(frame_up, text = 'Авария')
l_eventis_search=tk.Label(frame_up,text = 'поиск') ###

l_zip_text.grid(row="0",column="0",padx=10,pady=10)
l_zip_search.grid(row="0",column="1",padx=10,pady=10)
l_hostname_text.grid(row="1",column="0",padx=10,pady=10)
l_hostname_search.grid(row="1",column="1",padx=10,pady=10)
l_date_text.grid(row="2",column="0",padx=10,pady=10)
l_date_search.grid(row="2",column="1",padx=10,pady=10)
l_eventid_text.grid(row="3",column="0",padx=10,pady=10)
l_eventis_search.grid(row="3",column="1",padx=10,pady=10)

table = ttk.Treeview(frame_down)
table['columns'] = [0,1,2,3,4,5,6,7,8]
all_data =[]
with sqlite3.connect('9-3.db') as db:
    cursor=db.cursor()
    query = """SELECT * FROM alarm_daily limit 10"""
    cursor.execute(query)
    all_data=cursor.fetchall()

for row in all_data:
    table.insert('',tk.END,values=row)

table.pack(expand=tk.YES, fill='both')



window.mainloop() #Эта функция вызывает бесконечный цикл окна