#Problem 3
def primeFactor(num):
    for i in range(2, int(num)+1):
        if (num%i == 0):
            return [2, primeFactor(num/2)]
#print(primeFactor(13195))
