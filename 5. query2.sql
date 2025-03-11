CREATE TEMPORARY TABLE p as 
select zip, hostname, eventid,firstoccurrence,enddate, substr(firstoccurrence,-9,-11) as date from alarm_daily 
where zip = 'SEA' and eventid = 'POWER' and firstoccurrence like '2023%'
group by firstoccurrence, hostname
;

CREATE TEMPORARY TABLE h as 
  select zip, hostname, eventid,firstoccurrence,enddate,substr(additionalinfo1,-12,12) as du from alarm_daily 
where zip = 'SEA' and eventid = 'Heartbeat Failure' and firstoccurrence like '2023%'
group by firstoccurrence, hostname
;

select p.zip, p.hostname, p.eventid ,p.firstoccurrence,p.enddate,((Cast((JulianDay((p.enddate)) - JulianDay(p.firstoccurrence)) * 24 * 60 * 60 As Integer))) as delta, h.eventid, h.firstoccurrence,h.enddate,((Cast((JulianDay((h.enddate)) - JulianDay(h.firstoccurrence)) * 24 * 60 * 60 As Integer))) as delta1, du,
((Cast((JulianDay((h.firstoccurrence)) - JulianDay(p.firstoccurrence)) * 24 * 60 * 60 As Integer))) as delta2 from p
left join h on p.hostname = h.hostname and h.firstoccurrence BETWEEN p.firstoccurrence and p.enddate
where h.firstoccurrence is not null

-------------------------------------------
SELECT hostname, e1, maxt, e2, time2, delta
FROM (
    SELECT hostname, e1, time1 AS maxt, e2, time2, delta,
           ROW_NUMBER() OVER (PARTITION BY hostname ORDER BY time1 DESC) AS rn
    FROM (
        SELECT hostname, e1, time1, e2, time2, 
               ((Cast((JulianDay((time2)) - JulianDay(time1)) * 24 * 60 * 60 As Integer))) AS delta,
               substr(substr(additionalinfo1,-4,4),2,2) AS cell
        FROM (
            SELECT t1.hostname, t1.firstoccurrence AS time1, t1.eventid AS e1, 
                   t2.firstoccurrence AS time2, t2.eventid AS e2, t2.additionalinfo1
            FROM alarm_daily t1
            LEFT JOIN alarm_daily t2
            ON t1.hostname = t2.hostname 
            AND t2.firstoccurrence BETWEEN t1.firstoccurrence AND t1.enddate
            WHERE t1.zip = "SEA" AND t1.eventid = "POWER"
            AND t2.zip = "SEA" AND (t2.eventid = "Service Unavailable" OR t2.eventid = "Resource Activation Timeout")
        ) AS t
    ) AS t2
    WHERE e2 IS NOT NULL
    GROUP BY hostname, cell, time1
) AS temp4
WHERE rn = 1 AND delta >= 180;
