# A
# A = [9,7,5,3,2,1]
def myst(A):
    L=len(A)-1
    for i in range(len(A)//2):
        t=A[i] # 1 2 3
        A[i] = A[L-i] # 9 7 5
        A[L-i]=t # 3 2 1
    return A
# Funksjonen ovenfor reverserer listen A

# B
# myst3([1,2,3,4,5,6,7,8,9,10])
import random
def myst3(a):
    b =[0]*len(a) #lager liste av 0 med lengde til a
    for c in range(len(a)):
        d = random.randint(0,len(a)-1)
        b[c] = a[d]
        del a[d] #del fjerner et bestemt element i listen, her fjerner det a[d].
    return b
# Funksjonen ovenfor scrambler/setter tallene i tilfeldige steder, i listen a

# C
liste = [4, 9, 6, 3, 8, 7, 5]
print(liste[-2:6])
# til men ikke til og med, dvs printer ut 7

# D
navn = ['Carina', 'erik', 'Magnus', 'Miriam']
navn[1] = 'Erik'
print(navn)
# Tuple elementer er konstante, dvs. at de ikke kan endres. Vi gjør dermed den om til liste.

# E
liste1 = [1,3,2,5,4,6] #definerer liste1 lik [1,3,2,5,4,6]
liste1.sort() #sorterer liste1 etter stigende rekkefølge [1,2,3,4,5,6]
liste2 = [7, 8, 9] #definerer liste2 lik [7,8,9]
liste3 = liste1+liste2 #initialiserer liste3 lik [1,2,3,4,5,6,7,8,9]
liste3.insert(9, 10) #legger til tall 10 i index 9 til liste3 [1,2,3,4,5,6,7,8,9,10]
liste3.remove(1) #sletter verdi 1 fra liste3 [2,3,4,5,6,7,8,9,10]
liste3.reverse() #reverserer liste3 [10,9,8,7,6,5,4,3,2]
print(liste3) #[10,9,8,7,6,5,4,3,2]
