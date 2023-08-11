CREATE TEMPORARY TABLE temp1 as select * from alarm_daily where zip = "SEA" AND eventid = "POWER" AND (
firstoccurrence like "2023-08-07%" or 
firstoccurrence like "2023-08-08%" or 
firstoccurrence like "2023-08-09%" or 
firstoccurrence like "2023-08-10%" or 
firstoccurrence like "2023-08-11%" or 
firstoccurrence like "2023-08-12%" or
firstoccurrence like "2023-08-13%")
;

CREATE TEMPORARY TABLE temp2 as select * from alarm_daily where zip = "SEA" AND (eventid = "Service Unavailable" or eventid = "Resource Activation Timeout") 
AND (
firstoccurrence like "2023-08-07%" or 
firstoccurrence like "2023-08-08%" or 
firstoccurrence like "2023-08-09%" or 
firstoccurrence like "2023-08-10%" or 
firstoccurrence like "2023-08-11%" or 
firstoccurrence like "2023-08-12%" or
firstoccurrence like "2023-08-13%")
;

select hostname,e1,MAX(time1) as maxtime,e2,time2, ((Cast((JulianDay((time2)) - JulianDay(time1)) * 24 * 60 * 60 As Integer))) as delta, substr(substr(additionalinfo1,-4,4),2,2) as cell
from (select hostname,e1,time1 as time1,e2,time2,additionalinfo1 
from (select temp1.id,temp1.hostname,temp1.firstoccurrence as time1,temp1.eventid as e1,temp2.id,temp2.firstoccurrence as time2,temp2.eventid as e2,temp2.additionalinfo1
from temp1 left JOIN temp2	on temp1.hostname = temp2.hostname and temp2.firstoccurrence BETWEEN temp1.firstoccurrence and temp1.enddate) as t) as t2
where e2 is not null and cell != "05"
group by hostname, cell
