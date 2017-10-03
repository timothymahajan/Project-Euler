#Problem 6
#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def diffSquares (numDigits):
    sum1 = 0
    sum2 = 0
    for i in range (1, numDigits+1):
        sum1 = sum1 + i**2
    for i in range (1, numDigits+1):
        sum2 = sum2 + i
    diff = sum2**2 - sum1
    return diff
print(diffSquares(100))
