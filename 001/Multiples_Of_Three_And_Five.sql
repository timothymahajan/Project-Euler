--Project Euler Problem 1
--If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
--The sum of these multiples is 23.
--Find the sum of all the multiples of 3 or 5 below 1000.

with
nums as
(
select 1 as num
union all select num+1
from nums
where num<999  
)
select sum(num) from nums
where num%3 = 0 or num%5 = 0
option (maxrecursion 0)
