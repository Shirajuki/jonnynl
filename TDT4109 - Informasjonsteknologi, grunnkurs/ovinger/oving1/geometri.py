# A, B
print("\nA,B\n")
r = 5
print("Vi har en sirkel med radius", r)
omkrets = 2 * 3.14 * r
print(f"Omkretsen er {omkrets:.2f}")
areal = 3.14 * r**2
print("Arealet er", areal)
h = 8
volum = areal * h
print("Sylinder med høyde", h, ": Volumet er", volum)

# C
'''
I oppgave A får vi omkrets med verdi 31.400...002, men ikke lik 31.400...000.
Dette skyldes problemer med selve representasjonen av tall i det binære systemet på pcen.
Desimaltall lar seg dermed ikke representere eksakt i maskinen på de fleste programmeringsspråk som python,
men funker dermed bare som en tilnærmet verdi.
'''
