# A
n = int(input('n = '))
# n = 7
summen = 0
for i in range(1,n+1):
    if i%2 == 0:
        summen -= i**2
    else:
        summen += i**2
print(f'Summen av tallserien er {summen}')

# B
k = int(input('k = '))
i = 1
summenFoer = 0
forrige = 0
while k >= summenFoer:
    forrige = summenFoer
    if i%2 == 0:
        summenFoer -= i**2
    else:
        summenFoer += i**2
    i+=1
print(f'Summen av tallene før summen blir større enn k er {forrige}. Antall iterasjoner: {i-2}')
