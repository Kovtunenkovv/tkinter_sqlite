CREATE TEMPORARY TABLE temp1 as select * from alarm_daily where zip = "SEA" AND eventid = "POWER" AND firstoccurrence like "2023-07-17%";

CREATE TEMPORARY TABLE temp2 as select * from alarm_daily where zip = "SEA" AND eventid = "Service Unavailable" AND firstoccurrence like "2023-07-17%";

select hostname,e1,time1,e2,min(time2) as time2 from
	(select temp1.id, temp1.hostname,temp1.firstoccurrence as time1,temp1.eventid as e1,temp2.id,temp2.firstoccurrence as time2,temp2.eventid as e2,temp2.additionalinfo1
	from temp1 left JOIN temp2 on temp1.hostname = temp2.hostname and temp2.firstoccurrence BETWEEN temp1.firstoccurrence and temp1.enddate) as t
group by t.id
