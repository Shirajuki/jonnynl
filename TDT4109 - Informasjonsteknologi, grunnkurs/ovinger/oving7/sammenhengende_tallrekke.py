from random import randint
def randList(size, lower_bound, upper_bound):
    return [randint(lower_bound,upper_bound) for i in range(size)]
print(randList(5,1,10))

a = [1,2,3,4,5,6,9]
b = [9,8,7,6,5,4,2]
def compareLists(list1, list2):
    nyListe = []
    for i in range(len(list1)):
        for j in range(len(list2)):
            if list1[i] == list2[j] and list1[i] not in nyListe:
                nyListe.append(list1[i])
    return nyListe
print(compareLists(a,b))
print()
c = [1,2,9,10]
d = [1,2,9]
def multiCompList(lists):
    nyListe = []
    comp1 = lists[0]
    for i in range(1,len(lists)):
        comp1 = compareLists(comp1,lists[i])
    return comp1
print(multiCompList([a,b,c,d]))

def longestEven(list):
    index,count = 0,0
    cache = []
    for i,n in enumerate(list):
        if n%2 != 0:
            cache.append((count,index))
            count = 0
        elif n%2 == 0:
            if (count == 0): index = i;
            count += 1
    return max(cache)[::-1]
liste = [4,3,3,6,2,6,8,3,4,3,3]
print(longestEven(liste))
print("\nmain()")
def main():
    print(randList(10,2,7))
    a = [1,2,3]
    b = [4,3,1]
    print(compareLists(a,b))
    c = [7,2,1]
    d = [a,b,c]
    print(multiCompList(d))
    liste = [4,3,3,6,2,6,8,3,4,3,3]
    print(longestEven(liste))
main()
