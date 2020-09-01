# A, B
def f(k):
    f0 = 0
    f1 = 1

    summen = f0
    for i in range(k):
        forrige = f0 + f1
        f0 = f1
        summen += f0
        f1 = forrige
    return summen
print(f(10))

a=345
b=''
while a or b=='':
    b=str(a%2)+b
    a=a//2
    print(b,a)
print(b)
print(int(b,2))

# C
def fListe(k):
    fib = []
    f0 = 0
    f1 = 1
    summen = f0
    for i in range(k):
        fib.append(f0)
        forrige = f0 + f1
        f0 = f1
        summen += f0
        f1 = forrige
    fib.append(f0)
    return fib,summen
print(fListe(10))
