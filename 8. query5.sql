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

1_year :
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
  firstoccurrence like '2024-01-31%' or
  firstoccurrence like '2024-02-01%' or 
  firstoccurrence like '2024-02-02%' or 
  firstoccurrence like '2024-02-03%' or 
  firstoccurrence like '2024-02-04%' or 
  firstoccurrence like '2024-02-05%' or 
  firstoccurrence like '2024-02-06%' or 
  firstoccurrence like '2024-02-07%' or 
  firstoccurrence like '2024-02-08%' or 
  firstoccurrence like '2024-02-09%' or 
  firstoccurrence like '2024-02-10%' or 
  firstoccurrence like '2024-02-11%' or 
  firstoccurrence like '2024-02-12%' or 
  firstoccurrence like '2024-02-13%' or 
  firstoccurrence like '2024-02-14%' or 
  firstoccurrence like '2024-02-15%' or 
  firstoccurrence like '2024-02-16%' or 
  firstoccurrence like '2024-02-17%' or 
  firstoccurrence like '2024-02-18%' or 
  firstoccurrence like '2024-02-19%' or 
  firstoccurrence like '2024-02-20%' or 
  firstoccurrence like '2024-02-21%' or 
  firstoccurrence like '2024-02-22%' or 
  firstoccurrence like '2024-02-23%' or 
  firstoccurrence like '2024-02-24%' or 
  firstoccurrence like '2024-02-25%' or 
  firstoccurrence like '2024-02-26%' or 
  firstoccurrence like '2024-02-27%' or 
  firstoccurrence like '2024-02-28%' or 
  firstoccurrence like '2024-02-29%' or 
  firstoccurrence like '2024-03-01%' or 
  firstoccurrence like '2024-03-02%' or 
  firstoccurrence like '2024-03-03%' or 
  firstoccurrence like '2024-03-04%' or 
  firstoccurrence like '2024-03-05%' or 
  firstoccurrence like '2024-03-06%' or 
  firstoccurrence like '2024-03-07%' or 
  firstoccurrence like '2024-03-08%' or 
  firstoccurrence like '2024-03-09%' or 
  firstoccurrence like '2024-03-10%' or 
  firstoccurrence like '2024-03-11%' or 
  firstoccurrence like '2024-03-12%' or 
  firstoccurrence like '2024-03-13%' or 
  firstoccurrence like '2024-03-14%' or 
  firstoccurrence like '2024-03-15%' or 
  firstoccurrence like '2024-03-16%' or 
  firstoccurrence like '2024-03-17%' or 
  firstoccurrence like '2024-03-18%' or 
  firstoccurrence like '2024-03-19%' or 
  firstoccurrence like '2024-03-20%' or 
  firstoccurrence like '2024-03-21%' or 
  firstoccurrence like '2024-03-22%' or 
  firstoccurrence like '2024-03-23%' or 
  firstoccurrence like '2024-03-24%' or 
  firstoccurrence like '2024-03-25%' or 
  firstoccurrence like '2024-03-26%' or 
  firstoccurrence like '2024-03-27%' or 
  firstoccurrence like '2024-03-28%' or 
  firstoccurrence like '2024-03-29%' or 
  firstoccurrence like '2024-03-30%' or 
  firstoccurrence like '2024-03-31%' or 
  firstoccurrence like '2024-04-01%' or 
  firstoccurrence like '2024-04-02%' or 
  firstoccurrence like '2024-04-03%' or 
  firstoccurrence like '2024-04-04%' or 
  firstoccurrence like '2024-04-05%' or 
  firstoccurrence like '2024-04-06%' or 
  firstoccurrence like '2024-04-07%' or 
  firstoccurrence like '2024-04-08%' or 
  firstoccurrence like '2024-04-09%' or 
  firstoccurrence like '2024-04-10%' or 
  firstoccurrence like '2024-04-11%' or 
  firstoccurrence like '2024-04-12%' or 
  firstoccurrence like '2024-04-13%' or 
  firstoccurrence like '2024-04-14%' or 
  firstoccurrence like '2024-04-15%' or 
  firstoccurrence like '2024-04-16%' or 
  firstoccurrence like '2024-04-17%' or 
  firstoccurrence like '2024-04-18%' or 
  firstoccurrence like '2024-04-19%' or 
  firstoccurrence like '2024-04-20%' or 
  firstoccurrence like '2024-04-21%' or 
  firstoccurrence like '2024-04-22%' or 
  firstoccurrence like '2024-04-23%' or 
  firstoccurrence like '2024-04-24%' or 
  firstoccurrence like '2024-04-25%' or 
  firstoccurrence like '2024-04-26%' or 
  firstoccurrence like '2024-04-27%' or 
  firstoccurrence like '2024-04-28%' or 
  firstoccurrence like '2024-04-29%' or 
  firstoccurrence like '2024-04-30%' or 
  firstoccurrence like '2024-05-01%' or 
  firstoccurrence like '2024-05-02%' or 
  firstoccurrence like '2024-05-03%' or 
  firstoccurrence like '2024-05-04%' or 
  firstoccurrence like '2024-05-05%' or 
  firstoccurrence like '2024-05-06%' or 
  firstoccurrence like '2024-05-07%' or 
  firstoccurrence like '2024-05-08%' or 
  firstoccurrence like '2024-05-09%' or 
  firstoccurrence like '2024-05-10%' or 
  firstoccurrence like '2024-05-11%' or 
  firstoccurrence like '2024-05-12%' or 
  firstoccurrence like '2024-05-13%' or 
  firstoccurrence like '2024-05-14%' or 
  firstoccurrence like '2024-05-15%' or 
  firstoccurrence like '2024-05-16%' or 
  firstoccurrence like '2024-05-17%' or 
  firstoccurrence like '2024-05-18%' or 
  firstoccurrence like '2024-05-19%' or 
  firstoccurrence like '2024-05-20%' or 
  firstoccurrence like '2024-05-21%' or 
  firstoccurrence like '2024-05-22%' or 
  firstoccurrence like '2024-05-23%' or 
  firstoccurrence like '2024-05-24%' or 
  firstoccurrence like '2024-05-25%' or 
  firstoccurrence like '2024-05-26%' or 
  firstoccurrence like '2024-05-27%' or 
  firstoccurrence like '2024-05-28%' or 
  firstoccurrence like '2024-05-29%' or 
  firstoccurrence like '2024-05-30%' or 
  firstoccurrence like '2024-05-31%' or 
  firstoccurrence like '2024-06-01%' or 
  firstoccurrence like '2024-06-02%' or 
  firstoccurrence like '2024-06-03%' or 
  firstoccurrence like '2024-06-04%' or 
  firstoccurrence like '2024-06-05%' or 
  firstoccurrence like '2024-06-06%' or 
  firstoccurrence like '2024-06-07%' or 
  firstoccurrence like '2024-06-08%' or 
  firstoccurrence like '2024-06-09%' or 
  firstoccurrence like '2024-06-10%' or 
  firstoccurrence like '2024-06-11%' or 
  firstoccurrence like '2024-06-12%' or 
  firstoccurrence like '2024-06-13%' or 
  firstoccurrence like '2024-06-14%' or 
  firstoccurrence like '2024-06-15%' or 
  firstoccurrence like '2024-06-16%' or 
  firstoccurrence like '2024-06-17%' or 
  firstoccurrence like '2024-06-18%' or 
  firstoccurrence like '2024-06-19%' or 
  firstoccurrence like '2024-06-20%' or 
  firstoccurrence like '2024-06-21%' or 
  firstoccurrence like '2024-06-22%' or 
  firstoccurrence like '2024-06-23%' or 
  firstoccurrence like '2024-06-24%' or 
  firstoccurrence like '2024-06-25%' or 
  firstoccurrence like '2024-06-26%' or 
  firstoccurrence like '2024-06-27%' or 
  firstoccurrence like '2024-06-28%' or 
  firstoccurrence like '2024-06-29%' or 
  firstoccurrence like '2024-06-30%' or 
  firstoccurrence like '2024-07-01%' or 
  firstoccurrence like '2024-07-02%' or 
  firstoccurrence like '2024-07-03%' or 
  firstoccurrence like '2024-07-04%' or 
  firstoccurrence like '2024-07-05%' or 
  firstoccurrence like '2024-07-06%' or 
  firstoccurrence like '2024-07-07%' or 
  firstoccurrence like '2024-07-08%' or 
  firstoccurrence like '2024-07-09%' or 
  firstoccurrence like '2024-07-10%' or 
  firstoccurrence like '2024-07-11%' or 
  firstoccurrence like '2024-07-12%' or 
  firstoccurrence like '2024-07-13%' or 
  firstoccurrence like '2024-07-14%' or 
  firstoccurrence like '2024-07-15%' or 
  firstoccurrence like '2024-07-16%' or 
  firstoccurrence like '2024-07-17%' or 
  firstoccurrence like '2024-07-18%' or 
  firstoccurrence like '2024-07-19%' or 
  firstoccurrence like '2024-07-20%' or 
  firstoccurrence like '2024-07-21%' or 
  firstoccurrence like '2024-07-22%' or 
  firstoccurrence like '2024-07-23%' or 
  firstoccurrence like '2024-07-24%' or 
  firstoccurrence like '2024-07-25%' or 
  firstoccurrence like '2024-07-26%' or 
  firstoccurrence like '2024-07-27%' or 
  firstoccurrence like '2024-07-28%' or 
  firstoccurrence like '2024-07-29%' or 
  firstoccurrence like '2024-07-30%' or 
  firstoccurrence like '2024-07-31%' or 
  firstoccurrence like '2024-08-01%' or 
  firstoccurrence like '2024-08-02%' or 
  firstoccurrence like '2024-08-03%' or 
  firstoccurrence like '2024-08-04%' or 
  firstoccurrence like '2024-08-05%' or 
  firstoccurrence like '2024-08-06%' or 
  firstoccurrence like '2024-08-07%' or 
  firstoccurrence like '2024-08-08%' or 
  firstoccurrence like '2024-08-09%' or 
  firstoccurrence like '2024-08-10%' or 
  firstoccurrence like '2024-08-11%' or 
  firstoccurrence like '2024-08-12%' or 
  firstoccurrence like '2024-08-13%' or 
  firstoccurrence like '2024-08-14%' or 
  firstoccurrence like '2024-08-15%' or 
  firstoccurrence like '2024-08-16%' or 
  firstoccurrence like '2024-08-17%' or 
  firstoccurrence like '2024-08-18%' or 
  firstoccurrence like '2024-08-19%' or 
  firstoccurrence like '2024-08-20%' or 
  firstoccurrence like '2024-08-21%' or 
  firstoccurrence like '2024-08-22%' or 
  firstoccurrence like '2024-08-23%' or 
  firstoccurrence like '2024-08-24%' or 
  firstoccurrence like '2024-08-25%' or 
  firstoccurrence like '2024-08-26%' or 
  firstoccurrence like '2024-08-27%' or 
  firstoccurrence like '2024-08-28%' or 
  firstoccurrence like '2024-08-29%' or 
  firstoccurrence like '2024-08-30%' or 
  firstoccurrence like '2024-08-31%' or 
  firstoccurrence like '2024-09-01%' or 
  firstoccurrence like '2024-09-02%' or 
  firstoccurrence like '2024-09-03%' or 
  firstoccurrence like '2024-09-04%' or 
  firstoccurrence like '2024-09-05%' or 
  firstoccurrence like '2024-09-06%' or 
  firstoccurrence like '2024-09-07%' or 
  firstoccurrence like '2024-09-08%' or 
  firstoccurrence like '2024-09-09%' or 
  firstoccurrence like '2024-09-10%' or 
  firstoccurrence like '2024-09-11%' or 
  firstoccurrence like '2024-09-12%' or 
  firstoccurrence like '2024-09-13%' or 
  firstoccurrence like '2024-09-14%' or 
  firstoccurrence like '2024-09-15%' or 
  firstoccurrence like '2024-09-16%' or 
  firstoccurrence like '2024-09-17%' or 
  firstoccurrence like '2024-09-18%' or 
  firstoccurrence like '2024-09-19%' or 
  firstoccurrence like '2024-09-20%' or 
  firstoccurrence like '2024-09-21%' or 
  firstoccurrence like '2024-09-22%' or 
  firstoccurrence like '2024-09-23%' or 
  firstoccurrence like '2024-09-24%' or 
  firstoccurrence like '2024-09-25%' or 
  firstoccurrence like '2024-09-26%' or 
  firstoccurrence like '2024-09-27%' or 
  firstoccurrence like '2024-09-28%' or 
  firstoccurrence like '2024-09-29%' or 
  firstoccurrence like '2024-09-30%' or 
  firstoccurrence like '2024-10-01%' or 
  firstoccurrence like '2024-10-02%' or 
  firstoccurrence like '2024-10-03%' or 
  firstoccurrence like '2024-10-04%' or 
  firstoccurrence like '2024-10-05%' or 
  firstoccurrence like '2024-10-06%' or 
  firstoccurrence like '2024-10-07%' or 
  firstoccurrence like '2024-10-08%' or 
  firstoccurrence like '2024-10-09%' or 
  firstoccurrence like '2024-10-10%' or 
  firstoccurrence like '2024-10-11%' or 
  firstoccurrence like '2024-10-12%' or 
  firstoccurrence like '2024-10-13%' or 
  firstoccurrence like '2024-10-14%' or 
  firstoccurrence like '2024-10-15%' or 
  firstoccurrence like '2024-10-16%' or 
  firstoccurrence like '2024-10-17%' or 
  firstoccurrence like '2024-10-18%' or 
  firstoccurrence like '2024-10-19%' or 
  firstoccurrence like '2024-10-20%' or 
  firstoccurrence like '2024-10-21%' or 
  firstoccurrence like '2024-10-22%' or 
  firstoccurrence like '2024-10-23%' or 
  firstoccurrence like '2024-10-24%' or 
  firstoccurrence like '2024-10-25%' or 
  firstoccurrence like '2024-10-26%' or 
  firstoccurrence like '2024-10-27%' or 
  firstoccurrence like '2024-10-28%' or 
  firstoccurrence like '2024-10-29%' or 
  firstoccurrence like '2024-10-30%' or 
  firstoccurrence like '2024-10-31%' or 
  firstoccurrence like '2024-11-01%' or 
  firstoccurrence like '2024-11-02%' or 
  firstoccurrence like '2024-11-03%' or 
  firstoccurrence like '2024-11-04%' or 
  firstoccurrence like '2024-11-05%' or 
  firstoccurrence like '2024-11-06%' or 
  firstoccurrence like '2024-11-07%' or 
  firstoccurrence like '2024-11-08%' or 
  firstoccurrence like '2024-11-09%' or 
  firstoccurrence like '2024-11-10%' or 
  firstoccurrence like '2024-11-11%' or 
  firstoccurrence like '2024-11-12%' or 
  firstoccurrence like '2024-11-13%' or 
  firstoccurrence like '2024-11-14%' or 
  firstoccurrence like '2024-11-15%' or 
  firstoccurrence like '2024-11-16%' or 
  firstoccurrence like '2024-11-17%' or 
  firstoccurrence like '2024-11-18%' or 
  firstoccurrence like '2024-11-19%' or 
  firstoccurrence like '2024-11-20%' or 
  firstoccurrence like '2024-11-21%' or 
  firstoccurrence like '2024-11-22%' or 
  firstoccurrence like '2024-11-23%' or 
  firstoccurrence like '2024-11-24%' or 
  firstoccurrence like '2024-11-25%' or 
  firstoccurrence like '2024-11-26%' or 
  firstoccurrence like '2024-11-27%' or 
  firstoccurrence like '2024-11-28%' or 
  firstoccurrence like '2024-11-29%' or 
  firstoccurrence like '2024-11-30%' or 
  firstoccurrence like '2024-12-01%' or 
  firstoccurrence like '2024-12-02%' or 
  firstoccurrence like '2024-12-03%' or 
  firstoccurrence like '2024-12-04%' or 
  firstoccurrence like '2024-12-05%' or 
  firstoccurrence like '2024-12-06%' or 
  firstoccurrence like '2024-12-07%' or 
  firstoccurrence like '2024-12-08%' or 
  firstoccurrence like '2024-12-09%' or 
  firstoccurrence like '2024-12-10%' or 
  firstoccurrence like '2024-12-11%' or 
  firstoccurrence like '2024-12-12%' or 
  firstoccurrence like '2024-12-13%' or 
  firstoccurrence like '2024-12-14%' or 
  firstoccurrence like '2024-12-15%' or 
  firstoccurrence like '2024-12-16%' or 
  firstoccurrence like '2024-12-17%' or 
  firstoccurrence like '2024-12-18%' or 
  firstoccurrence like '2024-12-19%' or 
  firstoccurrence like '2024-12-20%' or 
  firstoccurrence like '2024-12-21%' or 
  firstoccurrence like '2024-12-22%' or 
  firstoccurrence like '2024-12-23%' or 
  firstoccurrence like '2024-12-24%' or 
  firstoccurrence like '2024-12-25%' or 
  firstoccurrence like '2024-12-26%' or 
  firstoccurrence like '2024-12-27%' or 
  firstoccurrence like '2024-12-28%' or 
  firstoccurrence like '2024-12-29%' or 
  firstoccurrence like '2024-12-30%' or 
  firstoccurrence like '2024-12-31%' then 1 end) AS 'ALL',
  
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
COUNT(case when firstoccurrence like '2024-01-31%' then 1 end) AS '31.01',
COUNT(case when firstoccurrence like '2024-02-01%' then 1 end) AS '01-02', 
COUNT(case when firstoccurrence like '2024-02-02%' then 1 end) AS '02-02', 
COUNT(case when firstoccurrence like '2024-02-03%' then 1 end) AS '03-02', 
COUNT(case when firstoccurrence like '2024-02-04%' then 1 end) AS '04-02', 
COUNT(case when firstoccurrence like '2024-02-05%' then 1 end) AS '05-02', 
COUNT(case when firstoccurrence like '2024-02-06%' then 1 end) AS '06-02', 
COUNT(case when firstoccurrence like '2024-02-07%' then 1 end) AS '07-02', 
COUNT(case when firstoccurrence like '2024-02-08%' then 1 end) AS '08-02', 
COUNT(case when firstoccurrence like '2024-02-09%' then 1 end) AS '09-02', 
COUNT(case when firstoccurrence like '2024-02-10%' then 1 end) AS '10-02', 
COUNT(case when firstoccurrence like '2024-02-11%' then 1 end) AS '11-02', 
COUNT(case when firstoccurrence like '2024-02-12%' then 1 end) AS '12-02', 
COUNT(case when firstoccurrence like '2024-02-13%' then 1 end) AS '13-02', 
COUNT(case when firstoccurrence like '2024-02-14%' then 1 end) AS '14-02', 
COUNT(case when firstoccurrence like '2024-02-15%' then 1 end) AS '15-02', 
COUNT(case when firstoccurrence like '2024-02-16%' then 1 end) AS '16-02', 
COUNT(case when firstoccurrence like '2024-02-17%' then 1 end) AS '17-02', 
COUNT(case when firstoccurrence like '2024-02-18%' then 1 end) AS '18-02', 
COUNT(case when firstoccurrence like '2024-02-19%' then 1 end) AS '19-02', 
COUNT(case when firstoccurrence like '2024-02-20%' then 1 end) AS '20-02', 
COUNT(case when firstoccurrence like '2024-02-21%' then 1 end) AS '21-02', 
COUNT(case when firstoccurrence like '2024-02-22%' then 1 end) AS '22-02', 
COUNT(case when firstoccurrence like '2024-02-23%' then 1 end) AS '23-02', 
COUNT(case when firstoccurrence like '2024-02-24%' then 1 end) AS '24-02', 
COUNT(case when firstoccurrence like '2024-02-25%' then 1 end) AS '25-02', 
COUNT(case when firstoccurrence like '2024-02-26%' then 1 end) AS '26-02', 
COUNT(case when firstoccurrence like '2024-02-27%' then 1 end) AS '27-02', 
COUNT(case when firstoccurrence like '2024-02-28%' then 1 end) AS '28-02', 
COUNT(case when firstoccurrence like '2024-02-29%' then 1 end) AS '29-02', 
COUNT(case when firstoccurrence like '2024-03-01%' then 1 end) AS '01-03', 
COUNT(case when firstoccurrence like '2024-03-02%' then 1 end) AS '02-03', 
COUNT(case when firstoccurrence like '2024-03-03%' then 1 end) AS '03-03', 
COUNT(case when firstoccurrence like '2024-03-04%' then 1 end) AS '04-03', 
COUNT(case when firstoccurrence like '2024-03-05%' then 1 end) AS '05-03', 
COUNT(case when firstoccurrence like '2024-03-06%' then 1 end) AS '06-03', 
COUNT(case when firstoccurrence like '2024-03-07%' then 1 end) AS '07-03', 
COUNT(case when firstoccurrence like '2024-03-08%' then 1 end) AS '08-03', 
COUNT(case when firstoccurrence like '2024-03-09%' then 1 end) AS '09-03', 
COUNT(case when firstoccurrence like '2024-03-10%' then 1 end) AS '10-03', 
COUNT(case when firstoccurrence like '2024-03-11%' then 1 end) AS '11-03', 
COUNT(case when firstoccurrence like '2024-03-12%' then 1 end) AS '12-03', 
COUNT(case when firstoccurrence like '2024-03-13%' then 1 end) AS '13-03', 
COUNT(case when firstoccurrence like '2024-03-14%' then 1 end) AS '14-03', 
COUNT(case when firstoccurrence like '2024-03-15%' then 1 end) AS '15-03', 
COUNT(case when firstoccurrence like '2024-03-16%' then 1 end) AS '16-03', 
COUNT(case when firstoccurrence like '2024-03-17%' then 1 end) AS '17-03', 
COUNT(case when firstoccurrence like '2024-03-18%' then 1 end) AS '18-03', 
COUNT(case when firstoccurrence like '2024-03-19%' then 1 end) AS '19-03', 
COUNT(case when firstoccurrence like '2024-03-20%' then 1 end) AS '20-03', 
COUNT(case when firstoccurrence like '2024-03-21%' then 1 end) AS '21-03', 
COUNT(case when firstoccurrence like '2024-03-22%' then 1 end) AS '22-03', 
COUNT(case when firstoccurrence like '2024-03-23%' then 1 end) AS '23-03', 
COUNT(case when firstoccurrence like '2024-03-24%' then 1 end) AS '24-03', 
COUNT(case when firstoccurrence like '2024-03-25%' then 1 end) AS '25-03', 
COUNT(case when firstoccurrence like '2024-03-26%' then 1 end) AS '26-03', 
COUNT(case when firstoccurrence like '2024-03-27%' then 1 end) AS '27-03', 
COUNT(case when firstoccurrence like '2024-03-28%' then 1 end) AS '28-03', 
COUNT(case when firstoccurrence like '2024-03-29%' then 1 end) AS '29-03', 
COUNT(case when firstoccurrence like '2024-03-30%' then 1 end) AS '30-03', 
COUNT(case when firstoccurrence like '2024-03-31%' then 1 end) AS '31-03', 
COUNT(case when firstoccurrence like '2024-04-01%' then 1 end) AS '01-04', 
COUNT(case when firstoccurrence like '2024-04-02%' then 1 end) AS '02-04', 
COUNT(case when firstoccurrence like '2024-04-03%' then 1 end) AS '03-04', 
COUNT(case when firstoccurrence like '2024-04-04%' then 1 end) AS '04-04', 
COUNT(case when firstoccurrence like '2024-04-05%' then 1 end) AS '05-04', 
COUNT(case when firstoccurrence like '2024-04-06%' then 1 end) AS '06-04', 
COUNT(case when firstoccurrence like '2024-04-07%' then 1 end) AS '07-04', 
COUNT(case when firstoccurrence like '2024-04-08%' then 1 end) AS '08-04', 
COUNT(case when firstoccurrence like '2024-04-09%' then 1 end) AS '09-04', 
COUNT(case when firstoccurrence like '2024-04-10%' then 1 end) AS '10-04', 
COUNT(case when firstoccurrence like '2024-04-11%' then 1 end) AS '11-04', 
COUNT(case when firstoccurrence like '2024-04-12%' then 1 end) AS '12-04', 
COUNT(case when firstoccurrence like '2024-04-13%' then 1 end) AS '13-04', 
COUNT(case when firstoccurrence like '2024-04-14%' then 1 end) AS '14-04', 
COUNT(case when firstoccurrence like '2024-04-15%' then 1 end) AS '15-04', 
COUNT(case when firstoccurrence like '2024-04-16%' then 1 end) AS '16-04', 
COUNT(case when firstoccurrence like '2024-04-17%' then 1 end) AS '17-04', 
COUNT(case when firstoccurrence like '2024-04-18%' then 1 end) AS '18-04', 
COUNT(case when firstoccurrence like '2024-04-19%' then 1 end) AS '19-04', 
COUNT(case when firstoccurrence like '2024-04-20%' then 1 end) AS '20-04', 
COUNT(case when firstoccurrence like '2024-04-21%' then 1 end) AS '21-04', 
COUNT(case when firstoccurrence like '2024-04-22%' then 1 end) AS '22-04', 
COUNT(case when firstoccurrence like '2024-04-23%' then 1 end) AS '23-04', 
COUNT(case when firstoccurrence like '2024-04-24%' then 1 end) AS '24-04', 
COUNT(case when firstoccurrence like '2024-04-25%' then 1 end) AS '25-04', 
COUNT(case when firstoccurrence like '2024-04-26%' then 1 end) AS '26-04', 
COUNT(case when firstoccurrence like '2024-04-27%' then 1 end) AS '27-04', 
COUNT(case when firstoccurrence like '2024-04-28%' then 1 end) AS '28-04', 
COUNT(case when firstoccurrence like '2024-04-29%' then 1 end) AS '29-04', 
COUNT(case when firstoccurrence like '2024-04-30%' then 1 end) AS '30-04', 
COUNT(case when firstoccurrence like '2024-05-01%' then 1 end) AS '01-05', 
COUNT(case when firstoccurrence like '2024-05-02%' then 1 end) AS '02-05', 
COUNT(case when firstoccurrence like '2024-05-03%' then 1 end) AS '03-05', 
COUNT(case when firstoccurrence like '2024-05-04%' then 1 end) AS '04-05', 
COUNT(case when firstoccurrence like '2024-05-05%' then 1 end) AS '05-05', 
COUNT(case when firstoccurrence like '2024-05-06%' then 1 end) AS '06-05', 
COUNT(case when firstoccurrence like '2024-05-07%' then 1 end) AS '07-05', 
COUNT(case when firstoccurrence like '2024-05-08%' then 1 end) AS '08-05', 
COUNT(case when firstoccurrence like '2024-05-09%' then 1 end) AS '09-05', 
COUNT(case when firstoccurrence like '2024-05-10%' then 1 end) AS '10-05', 
COUNT(case when firstoccurrence like '2024-05-11%' then 1 end) AS '11-05', 
COUNT(case when firstoccurrence like '2024-05-12%' then 1 end) AS '12-05', 
COUNT(case when firstoccurrence like '2024-05-13%' then 1 end) AS '13-05', 
COUNT(case when firstoccurrence like '2024-05-14%' then 1 end) AS '14-05', 
COUNT(case when firstoccurrence like '2024-05-15%' then 1 end) AS '15-05', 
COUNT(case when firstoccurrence like '2024-05-16%' then 1 end) AS '16-05', 
COUNT(case when firstoccurrence like '2024-05-17%' then 1 end) AS '17-05', 
COUNT(case when firstoccurrence like '2024-05-18%' then 1 end) AS '18-05', 
COUNT(case when firstoccurrence like '2024-05-19%' then 1 end) AS '19-05', 
COUNT(case when firstoccurrence like '2024-05-20%' then 1 end) AS '20-05', 
COUNT(case when firstoccurrence like '2024-05-21%' then 1 end) AS '21-05', 
COUNT(case when firstoccurrence like '2024-05-22%' then 1 end) AS '22-05', 
COUNT(case when firstoccurrence like '2024-05-23%' then 1 end) AS '23-05', 
COUNT(case when firstoccurrence like '2024-05-24%' then 1 end) AS '24-05', 
COUNT(case when firstoccurrence like '2024-05-25%' then 1 end) AS '25-05', 
COUNT(case when firstoccurrence like '2024-05-26%' then 1 end) AS '26-05', 
COUNT(case when firstoccurrence like '2024-05-27%' then 1 end) AS '27-05', 
COUNT(case when firstoccurrence like '2024-05-28%' then 1 end) AS '28-05', 
COUNT(case when firstoccurrence like '2024-05-29%' then 1 end) AS '29-05', 
COUNT(case when firstoccurrence like '2024-05-30%' then 1 end) AS '30-05', 
COUNT(case when firstoccurrence like '2024-05-31%' then 1 end) AS '31-05', 
COUNT(case when firstoccurrence like '2024-06-01%' then 1 end) AS '01-06', 
COUNT(case when firstoccurrence like '2024-06-02%' then 1 end) AS '02-06', 
COUNT(case when firstoccurrence like '2024-06-03%' then 1 end) AS '03-06', 
COUNT(case when firstoccurrence like '2024-06-04%' then 1 end) AS '04-06', 
COUNT(case when firstoccurrence like '2024-06-05%' then 1 end) AS '05-06', 
COUNT(case when firstoccurrence like '2024-06-06%' then 1 end) AS '06-06', 
COUNT(case when firstoccurrence like '2024-06-07%' then 1 end) AS '07-06', 
COUNT(case when firstoccurrence like '2024-06-08%' then 1 end) AS '08-06', 
COUNT(case when firstoccurrence like '2024-06-09%' then 1 end) AS '09-06', 
COUNT(case when firstoccurrence like '2024-06-10%' then 1 end) AS '10-06', 
COUNT(case when firstoccurrence like '2024-06-11%' then 1 end) AS '11-06', 
COUNT(case when firstoccurrence like '2024-06-12%' then 1 end) AS '12-06', 
COUNT(case when firstoccurrence like '2024-06-13%' then 1 end) AS '13-06', 
COUNT(case when firstoccurrence like '2024-06-14%' then 1 end) AS '14-06', 
COUNT(case when firstoccurrence like '2024-06-15%' then 1 end) AS '15-06', 
COUNT(case when firstoccurrence like '2024-06-16%' then 1 end) AS '16-06', 
COUNT(case when firstoccurrence like '2024-06-17%' then 1 end) AS '17-06', 
COUNT(case when firstoccurrence like '2024-06-18%' then 1 end) AS '18-06', 
COUNT(case when firstoccurrence like '2024-06-19%' then 1 end) AS '19-06', 
COUNT(case when firstoccurrence like '2024-06-20%' then 1 end) AS '20-06', 
COUNT(case when firstoccurrence like '2024-06-21%' then 1 end) AS '21-06', 
COUNT(case when firstoccurrence like '2024-06-22%' then 1 end) AS '22-06', 
COUNT(case when firstoccurrence like '2024-06-23%' then 1 end) AS '23-06', 
COUNT(case when firstoccurrence like '2024-06-24%' then 1 end) AS '24-06', 
COUNT(case when firstoccurrence like '2024-06-25%' then 1 end) AS '25-06', 
COUNT(case when firstoccurrence like '2024-06-26%' then 1 end) AS '26-06', 
COUNT(case when firstoccurrence like '2024-06-27%' then 1 end) AS '27-06', 
COUNT(case when firstoccurrence like '2024-06-28%' then 1 end) AS '28-06', 
COUNT(case when firstoccurrence like '2024-06-29%' then 1 end) AS '29-06', 
COUNT(case when firstoccurrence like '2024-06-30%' then 1 end) AS '30-06', 
COUNT(case when firstoccurrence like '2024-07-01%' then 1 end) AS '01-07', 
COUNT(case when firstoccurrence like '2024-07-02%' then 1 end) AS '02-07', 
COUNT(case when firstoccurrence like '2024-07-03%' then 1 end) AS '03-07', 
COUNT(case when firstoccurrence like '2024-07-04%' then 1 end) AS '04-07', 
COUNT(case when firstoccurrence like '2024-07-05%' then 1 end) AS '05-07', 
COUNT(case when firstoccurrence like '2024-07-06%' then 1 end) AS '06-07', 
COUNT(case when firstoccurrence like '2024-07-07%' then 1 end) AS '07-07', 
COUNT(case when firstoccurrence like '2024-07-08%' then 1 end) AS '08-07', 
COUNT(case when firstoccurrence like '2024-07-09%' then 1 end) AS '09-07', 
COUNT(case when firstoccurrence like '2024-07-10%' then 1 end) AS '10-07', 
COUNT(case when firstoccurrence like '2024-07-11%' then 1 end) AS '11-07', 
COUNT(case when firstoccurrence like '2024-07-12%' then 1 end) AS '12-07', 
COUNT(case when firstoccurrence like '2024-07-13%' then 1 end) AS '13-07', 
COUNT(case when firstoccurrence like '2024-07-14%' then 1 end) AS '14-07', 
COUNT(case when firstoccurrence like '2024-07-15%' then 1 end) AS '15-07', 
COUNT(case when firstoccurrence like '2024-07-16%' then 1 end) AS '16-07', 
COUNT(case when firstoccurrence like '2024-07-17%' then 1 end) AS '17-07', 
COUNT(case when firstoccurrence like '2024-07-18%' then 1 end) AS '18-07', 
COUNT(case when firstoccurrence like '2024-07-19%' then 1 end) AS '19-07', 
COUNT(case when firstoccurrence like '2024-07-20%' then 1 end) AS '20-07', 
COUNT(case when firstoccurrence like '2024-07-21%' then 1 end) AS '21-07', 
COUNT(case when firstoccurrence like '2024-07-22%' then 1 end) AS '22-07', 
COUNT(case when firstoccurrence like '2024-07-23%' then 1 end) AS '23-07', 
COUNT(case when firstoccurrence like '2024-07-24%' then 1 end) AS '24-07', 
COUNT(case when firstoccurrence like '2024-07-25%' then 1 end) AS '25-07', 
COUNT(case when firstoccurrence like '2024-07-26%' then 1 end) AS '26-07', 
COUNT(case when firstoccurrence like '2024-07-27%' then 1 end) AS '27-07', 
COUNT(case when firstoccurrence like '2024-07-28%' then 1 end) AS '28-07', 
COUNT(case when firstoccurrence like '2024-07-29%' then 1 end) AS '29-07', 
COUNT(case when firstoccurrence like '2024-07-30%' then 1 end) AS '30-07', 
COUNT(case when firstoccurrence like '2024-07-31%' then 1 end) AS '31-07', 
COUNT(case when firstoccurrence like '2024-08-01%' then 1 end) AS '01-08', 
COUNT(case when firstoccurrence like '2024-08-02%' then 1 end) AS '02-08', 
COUNT(case when firstoccurrence like '2024-08-03%' then 1 end) AS '03-08', 
COUNT(case when firstoccurrence like '2024-08-04%' then 1 end) AS '04-08', 
COUNT(case when firstoccurrence like '2024-08-05%' then 1 end) AS '05-08', 
COUNT(case when firstoccurrence like '2024-08-06%' then 1 end) AS '06-08', 
COUNT(case when firstoccurrence like '2024-08-07%' then 1 end) AS '07-08', 
COUNT(case when firstoccurrence like '2024-08-08%' then 1 end) AS '08-08', 
COUNT(case when firstoccurrence like '2024-08-09%' then 1 end) AS '09-08', 
COUNT(case when firstoccurrence like '2024-08-10%' then 1 end) AS '10-08', 
COUNT(case when firstoccurrence like '2024-08-11%' then 1 end) AS '11-08', 
COUNT(case when firstoccurrence like '2024-08-12%' then 1 end) AS '12-08', 
COUNT(case when firstoccurrence like '2024-08-13%' then 1 end) AS '13-08', 
COUNT(case when firstoccurrence like '2024-08-14%' then 1 end) AS '14-08', 
COUNT(case when firstoccurrence like '2024-08-15%' then 1 end) AS '15-08', 
COUNT(case when firstoccurrence like '2024-08-16%' then 1 end) AS '16-08', 
COUNT(case when firstoccurrence like '2024-08-17%' then 1 end) AS '17-08', 
COUNT(case when firstoccurrence like '2024-08-18%' then 1 end) AS '18-08', 
COUNT(case when firstoccurrence like '2024-08-19%' then 1 end) AS '19-08', 
COUNT(case when firstoccurrence like '2024-08-20%' then 1 end) AS '20-08', 
COUNT(case when firstoccurrence like '2024-08-21%' then 1 end) AS '21-08', 
COUNT(case when firstoccurrence like '2024-08-22%' then 1 end) AS '22-08', 
COUNT(case when firstoccurrence like '2024-08-23%' then 1 end) AS '23-08', 
COUNT(case when firstoccurrence like '2024-08-24%' then 1 end) AS '24-08', 
COUNT(case when firstoccurrence like '2024-08-25%' then 1 end) AS '25-08', 
COUNT(case when firstoccurrence like '2024-08-26%' then 1 end) AS '26-08', 
COUNT(case when firstoccurrence like '2024-08-27%' then 1 end) AS '27-08', 
COUNT(case when firstoccurrence like '2024-08-28%' then 1 end) AS '28-08', 
COUNT(case when firstoccurrence like '2024-08-29%' then 1 end) AS '29-08', 
COUNT(case when firstoccurrence like '2024-08-30%' then 1 end) AS '30-08', 
COUNT(case when firstoccurrence like '2024-08-31%' then 1 end) AS '31-08', 
COUNT(case when firstoccurrence like '2024-09-01%' then 1 end) AS '01-09', 
COUNT(case when firstoccurrence like '2024-09-02%' then 1 end) AS '02-09', 
COUNT(case when firstoccurrence like '2024-09-03%' then 1 end) AS '03-09', 
COUNT(case when firstoccurrence like '2024-09-04%' then 1 end) AS '04-09', 
COUNT(case when firstoccurrence like '2024-09-05%' then 1 end) AS '05-09', 
COUNT(case when firstoccurrence like '2024-09-06%' then 1 end) AS '06-09', 
COUNT(case when firstoccurrence like '2024-09-07%' then 1 end) AS '07-09', 
COUNT(case when firstoccurrence like '2024-09-08%' then 1 end) AS '08-09', 
COUNT(case when firstoccurrence like '2024-09-09%' then 1 end) AS '09-09', 
COUNT(case when firstoccurrence like '2024-09-10%' then 1 end) AS '10-09', 
COUNT(case when firstoccurrence like '2024-09-11%' then 1 end) AS '11-09', 
COUNT(case when firstoccurrence like '2024-09-12%' then 1 end) AS '12-09', 
COUNT(case when firstoccurrence like '2024-09-13%' then 1 end) AS '13-09', 
COUNT(case when firstoccurrence like '2024-09-14%' then 1 end) AS '14-09', 
COUNT(case when firstoccurrence like '2024-09-15%' then 1 end) AS '15-09', 
COUNT(case when firstoccurrence like '2024-09-16%' then 1 end) AS '16-09', 
COUNT(case when firstoccurrence like '2024-09-17%' then 1 end) AS '17-09', 
COUNT(case when firstoccurrence like '2024-09-18%' then 1 end) AS '18-09', 
COUNT(case when firstoccurrence like '2024-09-19%' then 1 end) AS '19-09', 
COUNT(case when firstoccurrence like '2024-09-20%' then 1 end) AS '20-09', 
COUNT(case when firstoccurrence like '2024-09-21%' then 1 end) AS '21-09', 
COUNT(case when firstoccurrence like '2024-09-22%' then 1 end) AS '22-09', 
COUNT(case when firstoccurrence like '2024-09-23%' then 1 end) AS '23-09', 
COUNT(case when firstoccurrence like '2024-09-24%' then 1 end) AS '24-09', 
COUNT(case when firstoccurrence like '2024-09-25%' then 1 end) AS '25-09', 
COUNT(case when firstoccurrence like '2024-09-26%' then 1 end) AS '26-09', 
COUNT(case when firstoccurrence like '2024-09-27%' then 1 end) AS '27-09', 
COUNT(case when firstoccurrence like '2024-09-28%' then 1 end) AS '28-09', 
COUNT(case when firstoccurrence like '2024-09-29%' then 1 end) AS '29-09', 
COUNT(case when firstoccurrence like '2024-09-30%' then 1 end) AS '30-09', 
COUNT(case when firstoccurrence like '2024-10-01%' then 1 end) AS '01-10', 
COUNT(case when firstoccurrence like '2024-10-02%' then 1 end) AS '02-10', 
COUNT(case when firstoccurrence like '2024-10-03%' then 1 end) AS '03-10', 
COUNT(case when firstoccurrence like '2024-10-04%' then 1 end) AS '04-10', 
COUNT(case when firstoccurrence like '2024-10-05%' then 1 end) AS '05-10', 
COUNT(case when firstoccurrence like '2024-10-06%' then 1 end) AS '06-10', 
COUNT(case when firstoccurrence like '2024-10-07%' then 1 end) AS '07-10', 
COUNT(case when firstoccurrence like '2024-10-08%' then 1 end) AS '08-10', 
COUNT(case when firstoccurrence like '2024-10-09%' then 1 end) AS '09-10', 
COUNT(case when firstoccurrence like '2024-10-10%' then 1 end) AS '10-10', 
COUNT(case when firstoccurrence like '2024-10-11%' then 1 end) AS '11-10', 
COUNT(case when firstoccurrence like '2024-10-12%' then 1 end) AS '12-10', 
COUNT(case when firstoccurrence like '2024-10-13%' then 1 end) AS '13-10', 
COUNT(case when firstoccurrence like '2024-10-14%' then 1 end) AS '14-10', 
COUNT(case when firstoccurrence like '2024-10-15%' then 1 end) AS '15-10', 
COUNT(case when firstoccurrence like '2024-10-16%' then 1 end) AS '16-10', 
COUNT(case when firstoccurrence like '2024-10-17%' then 1 end) AS '17-10', 
COUNT(case when firstoccurrence like '2024-10-18%' then 1 end) AS '18-10', 
COUNT(case when firstoccurrence like '2024-10-19%' then 1 end) AS '19-10', 
COUNT(case when firstoccurrence like '2024-10-20%' then 1 end) AS '20-10', 
COUNT(case when firstoccurrence like '2024-10-21%' then 1 end) AS '21-10', 
COUNT(case when firstoccurrence like '2024-10-22%' then 1 end) AS '22-10', 
COUNT(case when firstoccurrence like '2024-10-23%' then 1 end) AS '23-10', 
COUNT(case when firstoccurrence like '2024-10-24%' then 1 end) AS '24-10', 
COUNT(case when firstoccurrence like '2024-10-25%' then 1 end) AS '25-10', 
COUNT(case when firstoccurrence like '2024-10-26%' then 1 end) AS '26-10', 
COUNT(case when firstoccurrence like '2024-10-27%' then 1 end) AS '27-10', 
COUNT(case when firstoccurrence like '2024-10-28%' then 1 end) AS '28-10', 
COUNT(case when firstoccurrence like '2024-10-29%' then 1 end) AS '29-10', 
COUNT(case when firstoccurrence like '2024-10-30%' then 1 end) AS '30-10', 
COUNT(case when firstoccurrence like '2024-10-31%' then 1 end) AS '31-10', 
COUNT(case when firstoccurrence like '2024-11-01%' then 1 end) AS '01-11', 
COUNT(case when firstoccurrence like '2024-11-02%' then 1 end) AS '02-11', 
COUNT(case when firstoccurrence like '2024-11-03%' then 1 end) AS '03-11', 
COUNT(case when firstoccurrence like '2024-11-04%' then 1 end) AS '04-11', 
COUNT(case when firstoccurrence like '2024-11-05%' then 1 end) AS '05-11', 
COUNT(case when firstoccurrence like '2024-11-06%' then 1 end) AS '06-11', 
COUNT(case when firstoccurrence like '2024-11-07%' then 1 end) AS '07-11', 
COUNT(case when firstoccurrence like '2024-11-08%' then 1 end) AS '08-11', 
COUNT(case when firstoccurrence like '2024-11-09%' then 1 end) AS '09-11', 
COUNT(case when firstoccurrence like '2024-11-10%' then 1 end) AS '10-11', 
COUNT(case when firstoccurrence like '2024-11-11%' then 1 end) AS '11-11', 
COUNT(case when firstoccurrence like '2024-11-12%' then 1 end) AS '12-11', 
COUNT(case when firstoccurrence like '2024-11-13%' then 1 end) AS '13-11', 
COUNT(case when firstoccurrence like '2024-11-14%' then 1 end) AS '14-11', 
COUNT(case when firstoccurrence like '2024-11-15%' then 1 end) AS '15-11', 
COUNT(case when firstoccurrence like '2024-11-16%' then 1 end) AS '16-11', 
COUNT(case when firstoccurrence like '2024-11-17%' then 1 end) AS '17-11', 
COUNT(case when firstoccurrence like '2024-11-18%' then 1 end) AS '18-11', 
COUNT(case when firstoccurrence like '2024-11-19%' then 1 end) AS '19-11', 
COUNT(case when firstoccurrence like '2024-11-20%' then 1 end) AS '20-11', 
COUNT(case when firstoccurrence like '2024-11-21%' then 1 end) AS '21-11', 
COUNT(case when firstoccurrence like '2024-11-22%' then 1 end) AS '22-11', 
COUNT(case when firstoccurrence like '2024-11-23%' then 1 end) AS '23-11', 
COUNT(case when firstoccurrence like '2024-11-24%' then 1 end) AS '24-11', 
COUNT(case when firstoccurrence like '2024-11-25%' then 1 end) AS '25-11', 
COUNT(case when firstoccurrence like '2024-11-26%' then 1 end) AS '26-11', 
COUNT(case when firstoccurrence like '2024-11-27%' then 1 end) AS '27-11', 
COUNT(case when firstoccurrence like '2024-11-28%' then 1 end) AS '28-11', 
COUNT(case when firstoccurrence like '2024-11-29%' then 1 end) AS '29-11', 
COUNT(case when firstoccurrence like '2024-11-30%' then 1 end) AS '30-11', 
COUNT(case when firstoccurrence like '2024-12-01%' then 1 end) AS '01-12', 
COUNT(case when firstoccurrence like '2024-12-02%' then 1 end) AS '02-12', 
COUNT(case when firstoccurrence like '2024-12-03%' then 1 end) AS '03-12', 
COUNT(case when firstoccurrence like '2024-12-04%' then 1 end) AS '04-12', 
COUNT(case when firstoccurrence like '2024-12-05%' then 1 end) AS '05-12', 
COUNT(case when firstoccurrence like '2024-12-06%' then 1 end) AS '06-12', 
COUNT(case when firstoccurrence like '2024-12-07%' then 1 end) AS '07-12', 
COUNT(case when firstoccurrence like '2024-12-08%' then 1 end) AS '08-12', 
COUNT(case when firstoccurrence like '2024-12-09%' then 1 end) AS '09-12', 
COUNT(case when firstoccurrence like '2024-12-10%' then 1 end) AS '10-12', 
COUNT(case when firstoccurrence like '2024-12-11%' then 1 end) AS '11-12', 
COUNT(case when firstoccurrence like '2024-12-12%' then 1 end) AS '12-12', 
COUNT(case when firstoccurrence like '2024-12-13%' then 1 end) AS '13-12', 
COUNT(case when firstoccurrence like '2024-12-14%' then 1 end) AS '14-12', 
COUNT(case when firstoccurrence like '2024-12-15%' then 1 end) AS '15-12', 
COUNT(case when firstoccurrence like '2024-12-16%' then 1 end) AS '16-12', 
COUNT(case when firstoccurrence like '2024-12-17%' then 1 end) AS '17-12', 
COUNT(case when firstoccurrence like '2024-12-18%' then 1 end) AS '18-12', 
COUNT(case when firstoccurrence like '2024-12-19%' then 1 end) AS '19-12', 
COUNT(case when firstoccurrence like '2024-12-20%' then 1 end) AS '20-12', 
COUNT(case when firstoccurrence like '2024-12-21%' then 1 end) AS '21-12', 
COUNT(case when firstoccurrence like '2024-12-22%' then 1 end) AS '22-12', 
COUNT(case when firstoccurrence like '2024-12-23%' then 1 end) AS '23-12', 
COUNT(case when firstoccurrence like '2024-12-24%' then 1 end) AS '24-12', 
COUNT(case when firstoccurrence like '2024-12-25%' then 1 end) AS '25-12', 
COUNT(case when firstoccurrence like '2024-12-26%' then 1 end) AS '26-12', 
COUNT(case when firstoccurrence like '2024-12-27%' then 1 end) AS '27-12', 
COUNT(case when firstoccurrence like '2024-12-28%' then 1 end) AS '28-12', 
COUNT(case when firstoccurrence like '2024-12-29%' then 1 end) AS '29-12', 
COUNT(case when firstoccurrence like '2024-12-30%' then 1 end) AS '30-12', 
COUNT(case when firstoccurrence like '2024-12-31%' then 1 end) AS '31-12'

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
  firstoccurrence like '2024-01-31%' or
  firstoccurrence like '2024-02-01%' or 
  firstoccurrence like '2024-02-02%' or 
  firstoccurrence like '2024-02-03%' or 
  firstoccurrence like '2024-02-04%' or 
  firstoccurrence like '2024-02-05%' or 
  firstoccurrence like '2024-02-06%' or 
  firstoccurrence like '2024-02-07%' or 
  firstoccurrence like '2024-02-08%' or 
  firstoccurrence like '2024-02-09%' or 
  firstoccurrence like '2024-02-10%' or 
  firstoccurrence like '2024-02-11%' or 
  firstoccurrence like '2024-02-12%' or 
  firstoccurrence like '2024-02-13%' or 
  firstoccurrence like '2024-02-14%' or 
  firstoccurrence like '2024-02-15%' or 
  firstoccurrence like '2024-02-16%' or 
  firstoccurrence like '2024-02-17%' or 
  firstoccurrence like '2024-02-18%' or 
  firstoccurrence like '2024-02-19%' or 
  firstoccurrence like '2024-02-20%' or 
  firstoccurrence like '2024-02-21%' or 
  firstoccurrence like '2024-02-22%' or 
  firstoccurrence like '2024-02-23%' or 
  firstoccurrence like '2024-02-24%' or 
  firstoccurrence like '2024-02-25%' or 
  firstoccurrence like '2024-02-26%' or 
  firstoccurrence like '2024-02-27%' or 
  firstoccurrence like '2024-02-28%' or 
  firstoccurrence like '2024-02-29%' or 
  firstoccurrence like '2024-03-01%' or 
  firstoccurrence like '2024-03-02%' or 
  firstoccurrence like '2024-03-03%' or 
  firstoccurrence like '2024-03-04%' or 
  firstoccurrence like '2024-03-05%' or 
  firstoccurrence like '2024-03-06%' or 
  firstoccurrence like '2024-03-07%' or 
  firstoccurrence like '2024-03-08%' or 
  firstoccurrence like '2024-03-09%' or 
  firstoccurrence like '2024-03-10%' or 
  firstoccurrence like '2024-03-11%' or 
  firstoccurrence like '2024-03-12%' or 
  firstoccurrence like '2024-03-13%' or 
  firstoccurrence like '2024-03-14%' or 
  firstoccurrence like '2024-03-15%' or 
  firstoccurrence like '2024-03-16%' or 
  firstoccurrence like '2024-03-17%' or 
  firstoccurrence like '2024-03-18%' or 
  firstoccurrence like '2024-03-19%' or 
  firstoccurrence like '2024-03-20%' or 
  firstoccurrence like '2024-03-21%' or 
  firstoccurrence like '2024-03-22%' or 
  firstoccurrence like '2024-03-23%' or 
  firstoccurrence like '2024-03-24%' or 
  firstoccurrence like '2024-03-25%' or 
  firstoccurrence like '2024-03-26%' or 
  firstoccurrence like '2024-03-27%' or 
  firstoccurrence like '2024-03-28%' or 
  firstoccurrence like '2024-03-29%' or 
  firstoccurrence like '2024-03-30%' or 
  firstoccurrence like '2024-03-31%' or 
  firstoccurrence like '2024-04-01%' or 
  firstoccurrence like '2024-04-02%' or 
  firstoccurrence like '2024-04-03%' or 
  firstoccurrence like '2024-04-04%' or 
  firstoccurrence like '2024-04-05%' or 
  firstoccurrence like '2024-04-06%' or 
  firstoccurrence like '2024-04-07%' or 
  firstoccurrence like '2024-04-08%' or 
  firstoccurrence like '2024-04-09%' or 
  firstoccurrence like '2024-04-10%' or 
  firstoccurrence like '2024-04-11%' or 
  firstoccurrence like '2024-04-12%' or 
  firstoccurrence like '2024-04-13%' or 
  firstoccurrence like '2024-04-14%' or 
  firstoccurrence like '2024-04-15%' or 
  firstoccurrence like '2024-04-16%' or 
  firstoccurrence like '2024-04-17%' or 
  firstoccurrence like '2024-04-18%' or 
  firstoccurrence like '2024-04-19%' or 
  firstoccurrence like '2024-04-20%' or 
  firstoccurrence like '2024-04-21%' or 
  firstoccurrence like '2024-04-22%' or 
  firstoccurrence like '2024-04-23%' or 
  firstoccurrence like '2024-04-24%' or 
  firstoccurrence like '2024-04-25%' or 
  firstoccurrence like '2024-04-26%' or 
  firstoccurrence like '2024-04-27%' or 
  firstoccurrence like '2024-04-28%' or 
  firstoccurrence like '2024-04-29%' or 
  firstoccurrence like '2024-04-30%' or 
  firstoccurrence like '2024-05-01%' or 
  firstoccurrence like '2024-05-02%' or 
  firstoccurrence like '2024-05-03%' or 
  firstoccurrence like '2024-05-04%' or 
  firstoccurrence like '2024-05-05%' or 
  firstoccurrence like '2024-05-06%' or 
  firstoccurrence like '2024-05-07%' or 
  firstoccurrence like '2024-05-08%' or 
  firstoccurrence like '2024-05-09%' or 
  firstoccurrence like '2024-05-10%' or 
  firstoccurrence like '2024-05-11%' or 
  firstoccurrence like '2024-05-12%' or 
  firstoccurrence like '2024-05-13%' or 
  firstoccurrence like '2024-05-14%' or 
  firstoccurrence like '2024-05-15%' or 
  firstoccurrence like '2024-05-16%' or 
  firstoccurrence like '2024-05-17%' or 
  firstoccurrence like '2024-05-18%' or 
  firstoccurrence like '2024-05-19%' or 
  firstoccurrence like '2024-05-20%' or 
  firstoccurrence like '2024-05-21%' or 
  firstoccurrence like '2024-05-22%' or 
  firstoccurrence like '2024-05-23%' or 
  firstoccurrence like '2024-05-24%' or 
  firstoccurrence like '2024-05-25%' or 
  firstoccurrence like '2024-05-26%' or 
  firstoccurrence like '2024-05-27%' or 
  firstoccurrence like '2024-05-28%' or 
  firstoccurrence like '2024-05-29%' or 
  firstoccurrence like '2024-05-30%' or 
  firstoccurrence like '2024-05-31%' or 
  firstoccurrence like '2024-06-01%' or 
  firstoccurrence like '2024-06-02%' or 
  firstoccurrence like '2024-06-03%' or 
  firstoccurrence like '2024-06-04%' or 
  firstoccurrence like '2024-06-05%' or 
  firstoccurrence like '2024-06-06%' or 
  firstoccurrence like '2024-06-07%' or 
  firstoccurrence like '2024-06-08%' or 
  firstoccurrence like '2024-06-09%' or 
  firstoccurrence like '2024-06-10%' or 
  firstoccurrence like '2024-06-11%' or 
  firstoccurrence like '2024-06-12%' or 
  firstoccurrence like '2024-06-13%' or 
  firstoccurrence like '2024-06-14%' or 
  firstoccurrence like '2024-06-15%' or 
  firstoccurrence like '2024-06-16%' or 
  firstoccurrence like '2024-06-17%' or 
  firstoccurrence like '2024-06-18%' or 
  firstoccurrence like '2024-06-19%' or 
  firstoccurrence like '2024-06-20%' or 
  firstoccurrence like '2024-06-21%' or 
  firstoccurrence like '2024-06-22%' or 
  firstoccurrence like '2024-06-23%' or 
  firstoccurrence like '2024-06-24%' or 
  firstoccurrence like '2024-06-25%' or 
  firstoccurrence like '2024-06-26%' or 
  firstoccurrence like '2024-06-27%' or 
  firstoccurrence like '2024-06-28%' or 
  firstoccurrence like '2024-06-29%' or 
  firstoccurrence like '2024-06-30%' or 
  firstoccurrence like '2024-07-01%' or 
  firstoccurrence like '2024-07-02%' or 
  firstoccurrence like '2024-07-03%' or 
  firstoccurrence like '2024-07-04%' or 
  firstoccurrence like '2024-07-05%' or 
  firstoccurrence like '2024-07-06%' or 
  firstoccurrence like '2024-07-07%' or 
  firstoccurrence like '2024-07-08%' or 
  firstoccurrence like '2024-07-09%' or 
  firstoccurrence like '2024-07-10%' or 
  firstoccurrence like '2024-07-11%' or 
  firstoccurrence like '2024-07-12%' or 
  firstoccurrence like '2024-07-13%' or 
  firstoccurrence like '2024-07-14%' or 
  firstoccurrence like '2024-07-15%' or 
  firstoccurrence like '2024-07-16%' or 
  firstoccurrence like '2024-07-17%' or 
  firstoccurrence like '2024-07-18%' or 
  firstoccurrence like '2024-07-19%' or 
  firstoccurrence like '2024-07-20%' or 
  firstoccurrence like '2024-07-21%' or 
  firstoccurrence like '2024-07-22%' or 
  firstoccurrence like '2024-07-23%' or 
  firstoccurrence like '2024-07-24%' or 
  firstoccurrence like '2024-07-25%' or 
  firstoccurrence like '2024-07-26%' or 
  firstoccurrence like '2024-07-27%' or 
  firstoccurrence like '2024-07-28%' or 
  firstoccurrence like '2024-07-29%' or 
  firstoccurrence like '2024-07-30%' or 
  firstoccurrence like '2024-07-31%' or 
  firstoccurrence like '2024-08-01%' or 
  firstoccurrence like '2024-08-02%' or 
  firstoccurrence like '2024-08-03%' or 
  firstoccurrence like '2024-08-04%' or 
  firstoccurrence like '2024-08-05%' or 
  firstoccurrence like '2024-08-06%' or 
  firstoccurrence like '2024-08-07%' or 
  firstoccurrence like '2024-08-08%' or 
  firstoccurrence like '2024-08-09%' or 
  firstoccurrence like '2024-08-10%' or 
  firstoccurrence like '2024-08-11%' or 
  firstoccurrence like '2024-08-12%' or 
  firstoccurrence like '2024-08-13%' or 
  firstoccurrence like '2024-08-14%' or 
  firstoccurrence like '2024-08-15%' or 
  firstoccurrence like '2024-08-16%' or 
  firstoccurrence like '2024-08-17%' or 
  firstoccurrence like '2024-08-18%' or 
  firstoccurrence like '2024-08-19%' or 
  firstoccurrence like '2024-08-20%' or 
  firstoccurrence like '2024-08-21%' or 
  firstoccurrence like '2024-08-22%' or 
  firstoccurrence like '2024-08-23%' or 
  firstoccurrence like '2024-08-24%' or 
  firstoccurrence like '2024-08-25%' or 
  firstoccurrence like '2024-08-26%' or 
  firstoccurrence like '2024-08-27%' or 
  firstoccurrence like '2024-08-28%' or 
  firstoccurrence like '2024-08-29%' or 
  firstoccurrence like '2024-08-30%' or 
  firstoccurrence like '2024-08-31%' or 
  firstoccurrence like '2024-09-01%' or 
  firstoccurrence like '2024-09-02%' or 
  firstoccurrence like '2024-09-03%' or 
  firstoccurrence like '2024-09-04%' or 
  firstoccurrence like '2024-09-05%' or 
  firstoccurrence like '2024-09-06%' or 
  firstoccurrence like '2024-09-07%' or 
  firstoccurrence like '2024-09-08%' or 
  firstoccurrence like '2024-09-09%' or 
  firstoccurrence like '2024-09-10%' or 
  firstoccurrence like '2024-09-11%' or 
  firstoccurrence like '2024-09-12%' or 
  firstoccurrence like '2024-09-13%' or 
  firstoccurrence like '2024-09-14%' or 
  firstoccurrence like '2024-09-15%' or 
  firstoccurrence like '2024-09-16%' or 
  firstoccurrence like '2024-09-17%' or 
  firstoccurrence like '2024-09-18%' or 
  firstoccurrence like '2024-09-19%' or 
  firstoccurrence like '2024-09-20%' or 
  firstoccurrence like '2024-09-21%' or 
  firstoccurrence like '2024-09-22%' or 
  firstoccurrence like '2024-09-23%' or 
  firstoccurrence like '2024-09-24%' or 
  firstoccurrence like '2024-09-25%' or 
  firstoccurrence like '2024-09-26%' or 
  firstoccurrence like '2024-09-27%' or 
  firstoccurrence like '2024-09-28%' or 
  firstoccurrence like '2024-09-29%' or 
  firstoccurrence like '2024-09-30%' or 
  firstoccurrence like '2024-10-01%' or 
  firstoccurrence like '2024-10-02%' or 
  firstoccurrence like '2024-10-03%' or 
  firstoccurrence like '2024-10-04%' or 
  firstoccurrence like '2024-10-05%' or 
  firstoccurrence like '2024-10-06%' or 
  firstoccurrence like '2024-10-07%' or 
  firstoccurrence like '2024-10-08%' or 
  firstoccurrence like '2024-10-09%' or 
  firstoccurrence like '2024-10-10%' or 
  firstoccurrence like '2024-10-11%' or 
  firstoccurrence like '2024-10-12%' or 
  firstoccurrence like '2024-10-13%' or 
  firstoccurrence like '2024-10-14%' or 
  firstoccurrence like '2024-10-15%' or 
  firstoccurrence like '2024-10-16%' or 
  firstoccurrence like '2024-10-17%' or 
  firstoccurrence like '2024-10-18%' or 
  firstoccurrence like '2024-10-19%' or 
  firstoccurrence like '2024-10-20%' or 
  firstoccurrence like '2024-10-21%' or 
  firstoccurrence like '2024-10-22%' or 
  firstoccurrence like '2024-10-23%' or 
  firstoccurrence like '2024-10-24%' or 
  firstoccurrence like '2024-10-25%' or 
  firstoccurrence like '2024-10-26%' or 
  firstoccurrence like '2024-10-27%' or 
  firstoccurrence like '2024-10-28%' or 
  firstoccurrence like '2024-10-29%' or 
  firstoccurrence like '2024-10-30%' or 
  firstoccurrence like '2024-10-31%' or 
  firstoccurrence like '2024-11-01%' or 
  firstoccurrence like '2024-11-02%' or 
  firstoccurrence like '2024-11-03%' or 
  firstoccurrence like '2024-11-04%' or 
  firstoccurrence like '2024-11-05%' or 
  firstoccurrence like '2024-11-06%' or 
  firstoccurrence like '2024-11-07%' or 
  firstoccurrence like '2024-11-08%' or 
  firstoccurrence like '2024-11-09%' or 
  firstoccurrence like '2024-11-10%' or 
  firstoccurrence like '2024-11-11%' or 
  firstoccurrence like '2024-11-12%' or 
  firstoccurrence like '2024-11-13%' or 
  firstoccurrence like '2024-11-14%' or 
  firstoccurrence like '2024-11-15%' or 
  firstoccurrence like '2024-11-16%' or 
  firstoccurrence like '2024-11-17%' or 
  firstoccurrence like '2024-11-18%' or 
  firstoccurrence like '2024-11-19%' or 
  firstoccurrence like '2024-11-20%' or 
  firstoccurrence like '2024-11-21%' or 
  firstoccurrence like '2024-11-22%' or 
  firstoccurrence like '2024-11-23%' or 
  firstoccurrence like '2024-11-24%' or 
  firstoccurrence like '2024-11-25%' or 
  firstoccurrence like '2024-11-26%' or 
  firstoccurrence like '2024-11-27%' or 
  firstoccurrence like '2024-11-28%' or 
  firstoccurrence like '2024-11-29%' or 
  firstoccurrence like '2024-11-30%' or 
  firstoccurrence like '2024-12-01%' or 
  firstoccurrence like '2024-12-02%' or 
  firstoccurrence like '2024-12-03%' or 
  firstoccurrence like '2024-12-04%' or 
  firstoccurrence like '2024-12-05%' or 
  firstoccurrence like '2024-12-06%' or 
  firstoccurrence like '2024-12-07%' or 
  firstoccurrence like '2024-12-08%' or 
  firstoccurrence like '2024-12-09%' or 
  firstoccurrence like '2024-12-10%' or 
  firstoccurrence like '2024-12-11%' or 
  firstoccurrence like '2024-12-12%' or 
  firstoccurrence like '2024-12-13%' or 
  firstoccurrence like '2024-12-14%' or 
  firstoccurrence like '2024-12-15%' or 
  firstoccurrence like '2024-12-16%' or 
  firstoccurrence like '2024-12-17%' or 
  firstoccurrence like '2024-12-18%' or 
  firstoccurrence like '2024-12-19%' or 
  firstoccurrence like '2024-12-20%' or 
  firstoccurrence like '2024-12-21%' or 
  firstoccurrence like '2024-12-22%' or 
  firstoccurrence like '2024-12-23%' or 
  firstoccurrence like '2024-12-24%' or 
  firstoccurrence like '2024-12-25%' or 
  firstoccurrence like '2024-12-26%' or 
  firstoccurrence like '2024-12-27%' or 
  firstoccurrence like '2024-12-28%' or 
  firstoccurrence like '2024-12-29%' or 
  firstoccurrence like '2024-12-30%' or 
  firstoccurrence like '2024-12-31%' then 1 end) DESC;
