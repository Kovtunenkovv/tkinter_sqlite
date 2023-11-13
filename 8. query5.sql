SELECT hostname, eventid, zip,
COUNT(case when 
  firstoccurrence like '2023-11-06%' or 
  firstoccurrence like '2023-11-07%' or 
  firstoccurrence like '2023-11-08%' or 
  firstoccurrence like '2023-11-09%' or 
  firstoccurrence like '2023-11-10%' or 
  firstoccurrence like '2023-11-11%' or 
  firstoccurrence like '2023-11-12%' then 1 end) AS 'ALL',
  
COUNT(case when firstoccurrence like '2023-11-06%' then 1 end) AS 'monday',
COUNT(case when firstoccurrence like '2023-11-07%' then 1 end) AS 'tuesday',
COUNT(case when firstoccurrence like '2023-11-08%' then 1 end) AS 'wednesday',
COUNT(case when firstoccurrence like '2023-11-09%' then 1 end) AS 'thursday',
COUNT(case when firstoccurrence like '2023-11-10%' then 1 end) AS 'friday',
COUNT(case when firstoccurrence like '2023-11-11%' then 1 end) AS 'saturday',
COUNT(case when firstoccurrence like '2023-11-12%' then 1 end) AS 'sunday'

FROM alarm_daily
where zip = 'SEA'
GROUP BY eventid, hostname
ORDER BY COUNT(case when 
  firstoccurrence like '2023-11-06%' or 
  firstoccurrence like '2023-11-07%' or 
  firstoccurrence like '2023-11-08%' or 
  firstoccurrence like '2023-11-09%' or 
  firstoccurrence like '2023-11-10%' or 
  firstoccurrence like '2023-11-11%' or 
  firstoccurrence like '2023-11-12%' then 1 end) DESC;
