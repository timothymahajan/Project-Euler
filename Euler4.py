#Problem 4
def palindromeProduct (numDigits):
    numList = []
    dig = 0
    maxRange = 10**numDigits
    for i in range (0,maxRange):
        for j in range (0,1000):
            if (str(i*j) == str(i*j)[::-1]):
                numList.append(i*j)
    for i in range(0, len(numList)):
        if (numList[i] >= dig):
            dig = numList[i]
    return dig

print(palindromeProduct(3))