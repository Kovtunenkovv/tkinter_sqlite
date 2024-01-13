CREATE TEMPORARY TABLE p as 
select zip, hostname, eventid,firstoccurrence,enddate, substr(firstoccurrence,-9,-11) as date from alarm_daily 
where ZIP = 'SEA' and (eventid = 'POWER') and firstoccurrence like '2023%'
group by firstoccurrence, hostname
;

CREATE TEMPORARY TABLE h as select zip, hostname, eventid,firstoccurrence,enddate,substr(additionalinfo1,-12,12) as du from alarm_daily 
where ZIP = 'SEA' and (eventid = 'Heartbeat Failure') and firstoccurrence like '2023%'
group by firstoccurrence, hostname
;

select p.zip, p.hostname, p.eventid ,p.firstoccurrence,p.enddate,((Cast((JulianDay((p.enddate)) - JulianDay(p.firstoccurrence)) * 24 * 60 * 60 As Integer))) as delta, h.eventid, h.firstoccurrence,h.enddate,((Cast((JulianDay((h.enddate)) - JulianDay(h.firstoccurrence)) * 24 * 60 * 60 As Integer))) as delta1, du,
((Cast((JulianDay((h.firstoccurrence)) - JulianDay(p.firstoccurrence)) * 24 * 60 * 60 As Integer))) as delta2 from p
left join h on p.hostname = h.hostname and h.firstoccurrence BETWEEN p.firstoccurrence and p.enddate
where h.firstoccurrence is not null
