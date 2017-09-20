--Problem 19.
--How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

with calendar as 
(
select 0 as num, 
  CAST(0 as datetime) as dt, 
  datename(WEEKDAY,  CAST(0 as datetime)) as wd,
  datename(DAY,  CAST(0 as datetime)) as d
union all
select num + 1, 
  CAST(num + 1 as datetime), 
  datename(WEEKDAY, CAST(num + 1 as datetime)),
  datename(DAY,   CAST(num + 1 as datetime)) 
  from calendar where num < 36523 
)
select COUNT(*) from calendar
where 
1=1
and d=1
and wd = 'Sunday'
option (maxrecursion 0)