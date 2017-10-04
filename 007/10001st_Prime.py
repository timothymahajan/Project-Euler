#Problem 7
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10 001st prime number?

def primes(n):
    a = [2]
    i = 3
    while len(a) < n:
        if all(i % prime != 0 for prime in a):
            a.append(i)
        i += 2
    return a[-1]
print(primes(100))
