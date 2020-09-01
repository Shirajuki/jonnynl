# A
def gcd(a,b):
    while b != 0:
        b,a = a%b,b
    return a
print(gcd(30,10))

# B
def reduce_fraction(a,b):
    d = gcd(a,b)
    return f'{a//d}/{b//d}'
print(reduce_fraction(42,13))
