from random import randint
# A
numbers = [x for x in range(1,35)]
# B
myGuess = [1,2,3,4,5,6,7]
# C
def drawNumbers(liste1,n,liste2=[]):
    if len(liste2) == 0:
        liste = set([randint(liste1[0],liste1[-1]) for x in range(n)])
        while len(liste) != n:
            rnd = randint(liste1[0],liste1[-1])
            if rnd not in liste:
                liste.add(rnd)
    else:
        liste = set()
        while len(liste) != 3:
            rnd = randint(liste1[0],liste1[-1])
            if rnd not in liste2:
                liste.add(rnd)
    return list(liste)
print(drawNumbers(numbers,7))
# D
def compList(liste1,liste2):
    count = 0
    if len(liste1) == len(liste2):
        for i in range(len(liste1)):
            if liste1[i] == liste2[i]:
                count+=1
    else:
        liste1 = liste1[-len(liste2):]
        for i in range(len(liste1)):
            if liste1[i] == liste2[i]:
                count+=1
    return count
print(compList(drawNumbers(numbers,7),myGuess))
# E
def Winnings(likeTall,tillegsTall):
    if likeTall == 7:
        return 2749455
    elif likeTall == 6 and tillegsTall >= 1:
        return 102110
    elif likeTall == 6:
        return 3385
    elif likeTall == 5:
        return 95
    elif likeTall == 4 and tillegsTall >= 1:
        return 45
    else:
        return 0
print(Winnings(7,1))
# F
print()
print()
lotorekkePris = 5
def main():
    global numbers, lotorekkePris
    gjett = [int(x) for x in input("Gjett 7 tall i denne lottorekken: ").split()]
    drawed = drawNumbers(numbers,7) #[1,2,3,4,5,6,7]
    likeTall = compList(drawed,gjett)
    drawedIgjen = drawNumbers(numbers,3,drawed)
    tilfeldigeTall = compList(drawedIgjen,gjett)
    return Winnings(likeTall,tilfeldigeTall) - lotorekkePris
print(main())
# G
wallet = 0
for i in range(1000000):
    if (str(i)[-1]) == '0': print(i);
    gjett = drawNumbers(numbers,7)
    drawed = drawNumbers(numbers,7)
    likeTall = compList(drawed,gjett)
    tilfeldigeTall = compList(drawNumbers(numbers,3,drawed),gjett)
    wallet += Winnings(likeTall,tilfeldigeTall) - lotorekkePris
print(wallet)
