import sqlite3
from datetime import date
import os

try:
    db_connection = sqlite3.connect('C:\\Users\\Public\\2023.db')
    sql_query1 = '''CREATE TEMPORARY TABLE temp1 as select * from alarm_daily where eventid = "POWER" AND (firstoccurrence like "2023-12%");'''

    sql_query2 = '''CREATE TEMPORARY TABLE temp2 as select * from alarm_daily where (eventid = "Service Unavailable" or eventid = "Resource Activation Timeout") AND (firstoccurrence like "2023-12%");'''

    sql_query3 = '''CREATE TEMPORARY TABLE temp3 as select hostname,e1,time1,e2,time2,zip, ((Cast((JulianDay((time2)) - JulianDay(time1)) * 24 * 60 * 60 As Integer))) as delta, substr(substr(additionalinfo1,-4,4),2,2) as cell
from (select hostname,e1,time1,e2,time2,additionalinfo1,zip
from (select temp1.zip,temp1.id,temp1.hostname,temp1.firstoccurrence as time1,temp1.eventid as e1,temp2.id,temp2.firstoccurrence as time2,temp2.eventid as e2,temp2.additionalinfo1, temp1.zip as zip
from temp1 left JOIN temp2	on temp1.hostname = temp2.hostname and temp2.firstoccurrence BETWEEN temp1.firstoccurrence and temp1.enddate) as t) as t2
where e2 is not null
group by hostname, cell, time1;'''

    sql_query4 = '''CREATE TEMPORARY TABLE temp4 as select hostname,zip,e1,max(time1) as maxt,e2,time2, delta from temp3 group by hostname;'''

    sql_query5 = '''select hostname,zip,e1,maxt,e2,time2, delta from temp4 where delta >= 180;'''


    db_cursor = db_connection.cursor()
    print("Conected to SQLite")
    db_cursor.execute(sql_query1)
    db_connection.commit()
    print("[■■■■■○○○○○○○○○○○○○○○○○○○○]		20%")

    db_cursor.execute(sql_query2)
    db_connection.commit()
    print("[■■■■■■■■■■○○○○○○○○○○○○○○○]		40%")

    db_cursor.execute(sql_query3)
    db_connection.commit()
    print("[■■■■■■■■■■■■■■■○○○○○○○○○○]		60%")

    db_cursor.execute(sql_query4)
    db_connection.commit()
    print("[■■■■■■■■■■■■■■■■■■■■○○○○○]		80%")

    db_cursor.execute(sql_query5)
    db_connection.commit()
    print("[■■■■■■■■■■■■■■■■■■■■■■■■■]		100%")

    
    for result in db_cursor:
        
        data = db_cursor.fetchall()
        print(*data, sep='\n')
    
    
        print(' ')    
        print('________________________________________________________________________')

    input('Press inter for exit\n')
    db_cursor.close()

except sqlite3.Error as error:
    print("Ошибка sqlite", error)
finally:
    if (db_connection):
        db_connection.close()
        print("Close SQLite")
