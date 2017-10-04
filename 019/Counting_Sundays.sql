--Problem 19.
/*
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.

A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
*/
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
