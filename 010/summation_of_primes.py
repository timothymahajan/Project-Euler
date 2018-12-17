#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

import math

def is_prime (x):
    if x <= 1:
        return False
    elif x <= 3:
        return True
    elif x%2 == 0:
        return False
    else:
        for i in range(3, int(math.sqrt(x)) + 1, 2):
            if x%i == 0:
                return False
        return True

def prime_sum(n):
    sum = 0
    for i in range(n):
        if(is_prime(i)):
            sum += i
    return sum

print(prime_sum(2000000))
