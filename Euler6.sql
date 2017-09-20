/*
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
*/

with
number(a, b, c) as
	(
		SELECT 1, 1, 1
		UNION ALL 
		SELECT a+1, (a+b+1), c+(a+1)*(a+1) FROM number WHERE a < 100
	)
select a, b*b-c from number