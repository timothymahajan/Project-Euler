--Problem 290.
--How many integers 0  n < 10**18 have the property that the sum of the digits of n equals the sum of digits of 137n?

declare @len as int = 22;
declare @limit as numeric(22, 0) = 1000000000000000000;
with 
num as 
(select cast(1 as numeric(22, 0)) as num, cast(137 as numeric(22, 0)) as num137
union all select cast(num + 1 as numeric(22, 0)), cast(137*(num + 1) as numeric(22, 0)) from num where num < @limit
),
num_cross as
(
select num from num where num <= @len
),
nums as
(
select
num as rn, 
substring(CAST(num as varchar(max)) + REPLICATE('0', @len), 1, @len) as num,
substring(CAST(num137 as varchar(max)) + REPLICATE('0', @len), 1, @len) as num137
from num
),
digits as
(
select rn, nums.num, num137, cast(SUBSTRING(nums.num, num_cross.num, 1) as int) as digit, cast(SUBSTRING(num137, num_cross.num, 1) as int) as digit137
from nums
cross join num_cross
),
sums as
(
select 
rn, num, num137,
SUM(digit) as sum,
SUM(digit137) as sum137
from digits
group by rn, num, num137
)
select COUNT(*) from sums where sum = sum137
option (maxrecursion 0)