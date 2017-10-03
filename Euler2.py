#Problem 2
seqList = list(range(1,3))
def fibonnaci (max):
    counter1 = 0
    counter2 = 1
    while(seqList[counter2] < max):
        sum = seqList[counter1] + seqList[counter2]
        seqList.append(sum)
        counter1 = counter1 + 1
        counter2 = counter2 + 1
    return seqList

def findSum (list):
    sum = 0
    for i in range(0,len(list)):
        if (list[i] % 2 == 0):
            sum = sum + list[i]
    return sum

#print(findSum(fibonnaci(4000000)))