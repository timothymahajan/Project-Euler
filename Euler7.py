#Problem 7
def primes(n):
    a = [2]
    i = 3
    while len(a) < n:
        if all(i % prime != 0 for prime in a):
            a.append(i)
        i += 2
    return a[-1]
print(primes(100))