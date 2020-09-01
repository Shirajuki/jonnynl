from math import sqrt
# A
GRAVITY = 9.81
# B
'''
Ser helt fint ut etter min mening, om den globale variablen skal senere bli brukt til noe annet formål
Men et mer funksjonell måte å gjøre dette på er da som sett under, parameter + default-verdi.
'''
def get_fall_time(d,g=9.81):
    # global GRAVITY
    return sqrt(2*d/g)
meter = 20
print(f'Antallet meter objektet skal ramle: {meter}\n\
Det tar {get_fall_time(meter)} sekunder å ramle {meter} meter')

print(get_fall_time(20))
print(get_fall_time(20, 1.62))
