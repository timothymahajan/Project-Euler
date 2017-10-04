--Problem 34
/*
145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.
*/

with
digit as
(
select 0 as num, 1 as fact
union all select num + 1, fact*(num + 1) from digit where num < 9
),
num as
(
select 
n1.num as n1, n2.num as n2, 
n3.num as n3, n4.num as n4, 
n5.num as n5, n6.num as n6, 
n7.num as n7, n8.num as n8, 
n8.num+10*n7.num+100*n6.num+1000*n5.num+10000*n4.num+100000*n3.num+1000000*n2.num+10000000*n1.num as num,
n1.fact+n2.fact+n3.fact+n4.fact+n5.fact+n6.fact+n7.fact+n8.fact as fact_sum
from  digit n1 cross join digit n2 cross join digit n3 cross join digit n4 
cross join digit n5 cross join digit n6 cross join digit n7 cross join digit n8
)
select 
--n1, n2, n3, n4, n5, n6, n7, n8, num, fact_sum - (8-LEN(cast(num as varchar(max)))) as fact 
SUM(num)
from num
where 
num = fact_sum - (8-LEN(cast(num as varchar(max))))
and num <> 1
and num <> 2
option (maxrecursion 0)
