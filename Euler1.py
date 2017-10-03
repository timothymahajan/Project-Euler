#Problem 1
def mult (max):
    sum = 0
    for i in range(0, max):
        if (i%5 == 0 or i%3 == 0):
            sum = sum + i
    return sum

print(mult(1000))