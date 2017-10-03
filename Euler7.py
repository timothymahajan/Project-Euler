#Problem 7
def primeNumber(number):
    primeList = [2]
    sum = 0
    for i in range(1, number + 1):
        for j in primeList:
            if(i%primeList[j] == 0):
                sum = sum + 1
            if (sum < 1):
                primeList.append(i)
    return primeList

print(primeNumber(6))