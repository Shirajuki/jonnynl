# A, B, C
import math
print('Skriv inn tallene i en andregradslikning gitt i, a b c: ')
a = float(input('a: '))
b = float(input('b: '))
c = float(input('c: '))
d = b**2 - 4*a*c

to = f'Andregradsligningen {a:.2f}*x^2 + {b:.2f}*x'
if b < 0:
    to = f'Andregradsligningen {a:.2f}*x^2 {b:.2f}*x'
if c < 0:
    to += f' {c:.2f}'
else:
    to += f' + {c:.2f}'

if d < 0:
    print(f'{to} har to imaginære løsninger')
elif d > 0:
    if (not -b - math.sqrt(d) == 0):
        if b < 0:
            x1 = (-b - math.sqrt(d))/(2*a)
            print(math.sqrt(d),-b)
            x2 = (2*c)/(-b - (math.sqrt(d)))
        else:
            x1 = (2*c)/(-b - (math.sqrt(d)))
            x2 = (-b - math.sqrt(d))/(2*a)
    else:
        x1 = (-b + math.sqrt(d))/(2*a)
        x2 = (-b - math.sqrt(d))/(2*a)
    print(f'{to} har de to reelle løsningene {x1:.2g} og {x2:.2g}')
else:
    x = -b/(2*a)
    print(f'{to} har en reell dobbeltrot {x:.2g}')
