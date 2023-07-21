CREATE TEMPORARY TABLE temp1 as select * from alarm_daily where zip = "SEA" AND eventid = "POWER" AND (
firstoccurrence like "2023-07-17%" or 
firstoccurrence like "2023-07-18%" or 
firstoccurrence like "2023-07-19%" or 
firstoccurrence like "2023-07-20%") or 
firstoccurrence like "2023-07-21%") or 
firstoccurrence like "2023-07-22%")
;

CREATE TEMPORARY TABLE temp2 as select * from alarm_daily where zip = "SEA" AND eventid = "Service Unavailable" AND (
firstoccurrence like "2023-07-17%" or 
firstoccurrence like "2023-07-18%" or 
firstoccurrence like "2023-07-19%" or 
firstoccurrence like "2023-07-20%") or
firstoccurrence like "2023-07-21%") or
firstoccurrence like "2023-07-22%")
;

select hostname,e1,max(time1) as maxtime,e2,time2, substr(substr(additionalinfo1,-4,4),2,2) as cell from
	(select temp1.id, temp1.hostname,temp1.firstoccurrence as time1,temp1.eventid as e1,temp2.id,temp2.firstoccurrence as time2,temp2.eventid as e2,temp2.additionalinfo1
	from temp1 left JOIN temp2 on temp1.hostname = temp2.hostname and temp2.firstoccurrence BETWEEN temp1.firstoccurrence and temp1.enddate) as t
where e2 is not null
group by hostname
