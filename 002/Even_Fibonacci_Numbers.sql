--Project Euler Problem 2

--Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
--By starting with 1 and 2, the first 10 terms will be:

--1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

--By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
--find the sum of the even-valued terms.

with
fib as
(
select 1 as n1, 0 as n2
union all select n1+n2, n1
from fib
where n1 < 4000000
)
select sum(n1) from fib
where n1%2 = 0
