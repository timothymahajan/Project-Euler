#Problem 14
'''
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
'''
def Collatz(number):
    if (number==1):
        return 0
    collatz = 1
    while (number > 1):
        if(number%2 == 0):
            number = number/2
        else:
            number = 3*number + 1
        collatz = collatz + 1
    return collatz

collatz = 0
number = 0
for i in range(1, 1000000):
    col = Collatz(i)
    if (col >= collatz):
        collatz = col
        number = i



print(number)
