from math import sqrt
# A
def divisable(a, b):
    return a%b == 0
print(divisable(10,5))

def isPrime(a):
    for i in range(2,a-1):
        if divisable(a, i):
            return False
    return True
print(isPrime(11))

def isPrime2(a):
    i = 3
    if a%2 == 0 and a != 2:
        return False
    while i <= round(sqrt(a)+0.5):
        if divisable(a, i):
            return False
        i+=2
    return True
print(isPrime2(11))
