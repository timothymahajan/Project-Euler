#Problem 5
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def evenlyDivisible():
    i = 1
    while(True):
        if(i % 20 == 0 and 
           i % 19 == 0 and
           i % 18 == 0 and
           i % 17 == 0 and
           i % 16 == 0 and
           i % 15 == 0 and
           i % 14 == 0 and
           i % 13 == 0 and
           i % 12 == 0 and
           i % 11 == 0):
            return i
        i = i + 1

print(evenlyDivisible())
