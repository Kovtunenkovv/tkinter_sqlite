SELECT eventid, COUNT(eventid) AS 'ALL', 
COUNT(case when zip = 'SEA' then 1 end) AS 'SEA',
COUNT(case when zip = 'SWS' then 1 end) AS 'SWS',
COUNT(case when zip = 'NEA' then 1 end) AS 'NEA',
COUNT(case when zip = 'NWS' then 1 end) AS 'NWS',
COUNT(case when zip = 'CNT' then 1 end) AS 'CNT',
COUNT(case when zip = 'BS not use' then 1 end) AS 'BS not use'
FROM alarm_daily
GROUP BY eventid
ORDER BY COUNT(eventid) DESC;
