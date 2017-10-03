#Problem 11

aList = [] 
def triangleNumbers(max):
    num = 1
    counter = 2
    while(counter < max+2):
        aList.append(num)
        num = num + counter
        counter = counter + 1
    return aList

#print(triangleNumbers(10))


 
def triangleNumbers():
    num = 1
    counter = 2
    myList = []
    while(True):
        num = num + counter
        for i in range(2,num+1):
            if (num%i == 0):
                myList.append(num)
        counter = counter + 1
    if (len(myList) > 500):
        return num
    else:
        myList = []

print(triangleNumbers())