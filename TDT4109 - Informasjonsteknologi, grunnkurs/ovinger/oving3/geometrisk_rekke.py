r = 0.5
n = 4

# A
i1 = 0
whileSum1 = 0
while i1 <= n:
    whileSum1 += r**i1
    i1+=1

# B, C
matSum = (1 - r**(n+1))/(1 - r)

grenseVerdi = 1/(1 - r)
tol = 0.001
i2 = 0
whileSum2 = 0
while whileSum2 <= grenseVerdi - tol:
    whileSum2 += r**i2
    i2+=1


print('#a)')
print(f'sum = {whileSum1}')
print('#b&c')
# print(whileSum2)
print(f'For å være innenfor toleransegrensen: {tol} , kjørte løkken {i2} ganger.\n\
Differansen mellom virkelig og estimert verdi var da {grenseVerdi - whileSum2}')
