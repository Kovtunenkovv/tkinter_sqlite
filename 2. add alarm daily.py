import openpyxl
import sqlite3
import os
import datetime
from datetime import date, timedelta
import pandas as pd
import logging

# Настройка логирования
logging.basicConfig(filename='script.log', level=logging.ERROR)

# Константы
BASE_PATH = "L:\\technical\\Эксплуатация_БС_UMTS\\Регламент_эксплуатация\\Распределение по группам\\Зона 3\\ЗИП\\!Ковтуненко\\"
data_name = datetime.datetime.today() - timedelta(days=1)
data_name = data_name.strftime("%Y")
DB_PATH = BASE_PATH + "py\\Daily\\" + data_name + ".db"
ALARMS_PATH = BASE_PATH + "Alarms Ericsson daily MOS " + data_name + "\\"
BS_FILE = "bs_reg.xlsx"

# Чтение справочника BS
with openpyxl.load_workbook(filename=BS_FILE, read_only=True) as wb_bs:
    ws_bs = wb_bs.active
    bs_dict = {row[0].value: row[1].value for row in ws_bs.iter_rows()}

try:
    with sqlite3.connect(DB_PATH) as db_connection:
        db_cursor = db_connection.cursor()
        
        # Создание таблиц
        db_cursor.execute('''CREATE TABLE IF NOT EXISTS alarm_daily (
                            id INTEGER PRIMARY KEY AUTOINCREMENT,
                            zip TEXT,
                            site TEXT,
                            hostname TEXT NOT NULL,
                            firstoccurrence DATE,
                            enddate DATE,
                            severity TEXT,
                            eventid TEXT,
                            additionalinfo1 TEXT);''')
        
        db_cursor.execute('''CREATE TABLE IF NOT EXISTS alarm_date (
                            id INTEGER PRIMARY KEY AUTOINCREMENT,
                            start_date DATE);''')
        
        # Обработка файлов
        for wb_dir in os.listdir(ALARMS_PATH):
            df = pd.read_excel(ALARMS_PATH + wb_dir, engine='openpyxl')
            df['firstoccurrence'] = pd.to_datetime(df['firstoccurrence'], format="%Y/%m/%d %H:%M:%S")
            df['enddate'] = pd.to_datetime(df['enddate'], format="%Y/%m/%d %H:%M:%S")
            df['hostname'] = df['hostname'].apply(lambda x: x[4:10] if isinstance(x, str) and "TCU_" in x else x[:6])
            df['zip'] = df['hostname'].map(bs_dict).fillna("BS not use")
            
            # Вставка данных
            df.to_sql('alarm_daily', db_connection, if_exists='append', index=False)
            
except Exception as e:
    logging.error(f"Ошибка: {e}")
