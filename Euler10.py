#Problem 10

def primeSummation(max):
    sum = 0
    for i in range(2,max):
        for j in range(2,i):
            if (i%j==0):
                break
        else:
            sum = sum + i
    return sum

print(primeSummation(   2000000))
