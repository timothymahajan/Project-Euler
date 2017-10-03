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
