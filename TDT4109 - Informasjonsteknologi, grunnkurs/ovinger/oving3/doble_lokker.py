# A
n = 5
for i in range(1,n+1):
    for j in range(1,i+1):
        print(j, end=' ')
    print()

# B
for i in range(n):
    print('X', end=' ')
    for j in range(i):
        print('', end=' ')
    print('X', end=' ')
    print()

# C
heltall = int(input('Skriv inn et positivt heltall: '))
tall = heltall
faktorisering = []
while tall != 1:
    for i in range(2,heltall+1):
        # print(tall,i,tall%i)
        if tall%i == 0:
            tall = tall//i
            faktorisering.append(str(i))
            # print(tall,i,tall%i)
            break
if len(faktorisering) == 0 or (faktorisering[0] == str(heltall) and len(faktorisering) == 1):
    print(f'{heltall} er primtall.')
else:
    print(f'{heltall} = {"*".join(faktorisering)}')

# D
import random as r
forsok = 3
max = 5
riktigPaaRad = 0
a,b = r.randint(0,max),r.randint(0,max)
while True:
    inn = int(input(f'Hva blir {a}*{b}? '))
    if inn == a*b:
        print('Gratulerer, det er helt riktig!')
        a,b = r.randint(0,max),r.randint(0,max)
    else:
        forsok -= 1
        riktigPaaRad = 0
        max = 5
        print(f'Dessverre ikke riktig. Du har {forsok} forsøk igjen.')
        if forsok == 0:
            print('Dessverre klarte du ikke dette regnestykket, men vent så får du et nytt et:)')
        else:
            continue
    svar = int(input('Er det ønskelig med flere spørsmål? Skriv 1 for ja og 0 for nei: '))
    riktigPaaRad += 1
    print()
    if svar == 0:
        break
    else:
        a,b = r.randint(0,max),r.randint(0,max)
    if riktigPaaRad%5 == 0 and riktigPaaRad != 0:
        max += 5
