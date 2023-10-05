SELECT hostname,zip, 
COUNT(case when (eventid = 'POWER' or eventid = 'RECTIFIER' or eventid = 'FIRE'  or eventid = 'TEMP LOW' or eventid = 'TEMP HIGH' or eventid = 'DOOR') then 1 end) AS 'ALL',
COUNT(case when additionalinfo1 like '%AlarmPort=1' then 1 end) AS 'POWER',
COUNT(case when additionalinfo1 like '%AlarmPort=2' then 1 end) AS 'RECTIFIER',
COUNT(case when additionalinfo1 like '%AlarmPort=3' then 1 end) AS 'FIRE',
COUNT(case when additionalinfo1 like '%AlarmPort=4' then 1 end) AS 'TEMP LOW',
COUNT(case when additionalinfo1 like '%AlarmPort=5' then 1 end) AS 'TEMP HIGH',
COUNT(case when additionalinfo1 like '%AlarmPort=6' then 1 end) AS 'DOOR',
COUNT(case when additionalinfo1 like '%AlarmPort=7' then 1 end) AS 'FIRE2',
COUNT(case when additionalinfo1 like '%AlarmPort=8' then 1 end) AS 'DOOR2'
FROM alarm_daily
where zip = 'SEA'
GROUP BY hostname
ORDER BY COUNT(case when (eventid = 'POWER' or eventid = 'RECTIFIER' or eventid = 'FIRE'  or eventid = 'TEMP LOW' or eventid = 'TEMP HIGH' or eventid = 'DOOR') then 1 end) DESC
