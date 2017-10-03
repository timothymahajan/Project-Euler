#Problem 6
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