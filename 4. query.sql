CREATE TEMPORARY TABLE temp1 as select * from alarm_daily where zip = "SEA" AND eventid = "POWER";

CREATE TEMPORARY TABLE temp2 as select * from alarm_daily where zip = "SEA" AND (eventid = "Service Unavailable" or eventid = "Resource Activation Timeout");

CREATE TEMPORARY TABLE temp3 as select hostname,e1,time1,e2,time2, ((Cast((JulianDay((time2)) - JulianDay(time1)) * 24 * 60 * 60 As Integer))) as delta, substr(substr(additionalinfo1,-4,4),2,2) as cell
from (select hostname,e1,time1,e2,time2,additionalinfo1
from (select temp1.id,temp1.hostname,temp1.firstoccurrence as time1,temp1.eventid as e1,temp2.id,temp2.firstoccurrence as time2,temp2.eventid as e2,temp2.additionalinfo1
from temp1 left JOIN temp2	on temp1.hostname = temp2.hostname and temp2.firstoccurrence BETWEEN temp1.firstoccurrence and temp1.enddate) as t) as t2
where e2 is not null
group by hostname, cell, time1

CREATE TEMPORARY TABLE temp4 as select hostname,e1,max(time1) as maxt,e2,time2, delta from temp3 
group by hostname

select hostname,e1,maxt,e2,time2, delta from temp4 
where delta >= 180

--------------------------------------
Combine query:
--------------------------------------

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
