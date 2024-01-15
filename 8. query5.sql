1_week:
____________________________________________________
  
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



1_month :
____________________________________________________

SELECT hostname, eventid, zip, COUNT(case when 
  firstoccurrence like '2024-01-01%' or 
  firstoccurrence like '2024-01-02%' or 
  firstoccurrence like '2024-01-03%' or 
  firstoccurrence like '2024-01-04%' or 
  firstoccurrence like '2024-01-05%' or 
  firstoccurrence like '2024-01-06%' or 
  firstoccurrence like '2024-01-07%' or 
  firstoccurrence like '2024-01-08%' or
  firstoccurrence like '2024-01-09%' or
  firstoccurrence like '2024-01-10%' or
  firstoccurrence like '2024-01-11%' or
  firstoccurrence like '2024-01-12%' or
  firstoccurrence like '2024-01-13%' or
  firstoccurrence like '2024-01-14%' or
  firstoccurrence like '2024-01-15%' or
  firstoccurrence like '2024-01-16%' or
  firstoccurrence like '2024-01-17%' or
  firstoccurrence like '2024-01-18%' or
  firstoccurrence like '2024-01-19%' or
  firstoccurrence like '2024-01-20%' or
  firstoccurrence like '2024-01-21%' or
  firstoccurrence like '2024-01-22%' or
  firstoccurrence like '2024-01-23%' or
  firstoccurrence like '2024-01-24%' or
  firstoccurrence like '2024-01-25%' or
  firstoccurrence like '2024-01-26%' or
  firstoccurrence like '2024-01-27%' or
  firstoccurrence like '2024-01-28%' or
  firstoccurrence like '2024-01-29%' or
  firstoccurrence like '2024-01-30%' or
  firstoccurrence like '2024-01-31%' then 1 end) AS 'ALL',
  
COUNT(case when firstoccurrence like '2024-01-01%' then 1 end) AS '01.01',
COUNT(case when firstoccurrence like '2024-01-02%' then 1 end) AS '02.01',
COUNT(case when firstoccurrence like '2024-01-03%' then 1 end) AS '03.01',
COUNT(case when firstoccurrence like '2024-01-04%' then 1 end) AS '04.01',
COUNT(case when firstoccurrence like '2024-01-05%' then 1 end) AS '05.01',
COUNT(case when firstoccurrence like '2024-01-06%' then 1 end) AS '06.01',
COUNT(case when firstoccurrence like '2024-01-07%' then 1 end) AS '07.01',
COUNT(case when firstoccurrence like '2024-01-08%' then 1 end) AS '08.01',
COUNT(case when firstoccurrence like '2024-01-09%' then 1 end) AS '09.01',
COUNT(case when firstoccurrence like '2024-01-10%' then 1 end) AS '10.01',
COUNT(case when firstoccurrence like '2024-01-11%' then 1 end) AS '11.01',
COUNT(case when firstoccurrence like '2024-01-12%' then 1 end) AS '12.01',
COUNT(case when firstoccurrence like '2024-01-13%' then 1 end) AS '13.01',
COUNT(case when firstoccurrence like '2024-01-14%' then 1 end) AS '14.01',
COUNT(case when firstoccurrence like '2024-01-15%' then 1 end) AS '15.01',
COUNT(case when firstoccurrence like '2024-01-16%' then 1 end) AS '16.01',
COUNT(case when firstoccurrence like '2024-01-17%' then 1 end) AS '17.01',
COUNT(case when firstoccurrence like '2024-01-18%' then 1 end) AS '18.01',
COUNT(case when firstoccurrence like '2024-01-19%' then 1 end) AS '19.01',
COUNT(case when firstoccurrence like '2024-01-20%' then 1 end) AS '20.01',
COUNT(case when firstoccurrence like '2024-01-21%' then 1 end) AS '21.01',
COUNT(case when firstoccurrence like '2024-01-22%' then 1 end) AS '22.01',
COUNT(case when firstoccurrence like '2024-01-23%' then 1 end) AS '23.01',
COUNT(case when firstoccurrence like '2024-01-24%' then 1 end) AS '24.01',
COUNT(case when firstoccurrence like '2024-01-25%' then 1 end) AS '25.01',
COUNT(case when firstoccurrence like '2024-01-26%' then 1 end) AS '26.01',
COUNT(case when firstoccurrence like '2024-01-27%' then 1 end) AS '27.01',
COUNT(case when firstoccurrence like '2024-01-28%' then 1 end) AS '28.01',
COUNT(case when firstoccurrence like '2024-01-29%' then 1 end) AS '29.01',
COUNT(case when firstoccurrence like '2024-01-30%' then 1 end) AS '30.01',
COUNT(case when firstoccurrence like '2024-01-31%' then 1 end) AS '31.01'

FROM alarm_daily
where zip = 'SEA'
GROUP BY eventid, hostname
ORDER BY COUNT(case when 
  firstoccurrence like '2024-01-01%' or 
  firstoccurrence like '2024-01-02%' or
  firstoccurrence like '2024-01-03%' or 
  firstoccurrence like '2024-01-04%' or  
  firstoccurrence like '2024-01-05%' or
  firstoccurrence like '2024-01-06%' or
  firstoccurrence like '2024-01-07%' or
  firstoccurrence like '2024-01-08%' or
  firstoccurrence like '2024-01-09%' or
  firstoccurrence like '2024-01-10%' or
  firstoccurrence like '2024-01-11%' or 
  firstoccurrence like '2024-01-12%' or
  firstoccurrence like '2024-01-13%' or
  firstoccurrence like '2024-01-14%' or
  firstoccurrence like '2024-01-15%' or
  firstoccurrence like '2024-01-16%' or
  firstoccurrence like '2024-01-17%' or
  firstoccurrence like '2024-01-18%' or
  firstoccurrence like '2024-01-19%' or
  firstoccurrence like '2024-01-20%' or
  firstoccurrence like '2024-01-21%' or 
  firstoccurrence like '2024-01-22%' or
  firstoccurrence like '2024-01-23%' or 
  firstoccurrence like '2024-01-24%' or  
  firstoccurrence like '2024-01-25%' or
  firstoccurrence like '2024-01-26%' or
  firstoccurrence like '2024-01-27%' or
  firstoccurrence like '2024-01-28%' or
  firstoccurrence like '2024-01-29%' or
  firstoccurrence like '2024-01-30%' or
  firstoccurrence like '2024-01-31%' then 1 end) DESC;
