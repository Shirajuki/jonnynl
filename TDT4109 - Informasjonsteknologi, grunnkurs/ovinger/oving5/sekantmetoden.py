# A
from math import exp
def f(x):
    return (x-12)*exp(x/2) - 8*(x+2)**2
def g(x):
    return -x - 2*x**2 - 5*x**3 + 6*x**4
print(f(0),g(1))

# B
def differentiate(x_k, x_k1, func):
    return (func(x_k) - func(x_k1))/(x_k - x_k1)
print(differentiate(9,10,f))

# C
def secant_method(x0, x1, func, tol):
    while abs(x0-x1) > tol:
        x0,x1 = x1 - func(x1)/differentiate(x0, x1, func),x0
    return x1

x = [secant_method(11,13,f,0.00001),secant_method(1,2,g,0.00001),secant_method(0,1,g,0.00001)]
print(f'Funksjonen nærmer seg et nullpunkt når x = {x[0]:.2f}, da er f(x) = {f(x[0]):2g}')
print(f'Funksjonen nærmer seg et nullpunkt når x = {x[1]:.2f}, da er f(x) = {g(x[1]):2g}')
print(f'Funksjonen nærmer seg et nullpunkt når x = {x[2]:.2f}, da er f(x) = {g(x[2]):2g}')
