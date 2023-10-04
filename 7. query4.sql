SELECT hostname,zip, 
COUNT(case when (eventid = 'POWER' or eventid = 'RECTIFIER' or eventid = 'FIRE'  or eventid = 'TEMP LOW' or eventid = 'TEMP HIGH' or eventid = 'DOOR') then 1 end) AS 'ALL',
COUNT(case when eventid = 'POWER' then 1 end) AS 'POWER',
COUNT(case when eventid = 'RECTIFIER' then 1 end) AS 'RECTIFIER',
COUNT(case when eventid = 'FIRE' then 1 end) AS 'FIRE',
COUNT(case when eventid = 'TEMP LOW' then 1 end) AS 'TEMP LOW',
COUNT(case when eventid = 'TEMP HIGH' then 1 end) AS 'TEMP HIGH',
COUNT(case when eventid = 'DOOR' then 1 end) AS 'DOOR'
FROM alarm_daily
where zip = 'SEA'
GROUP BY hostname
ORDER BY COUNT(case when (eventid = 'POWER' or eventid = 'RECTIFIER' or eventid = 'FIRE'  or eventid = 'TEMP LOW' or eventid = 'TEMP HIGH' or eventid = 'DOOR') then 1 end) DESC
