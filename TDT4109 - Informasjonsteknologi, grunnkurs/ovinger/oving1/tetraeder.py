# A, B, C
print("\nA,B,C\n")
import math
hoyde = float(input("Skriv inn en høyde: "))

a = 3/math.sqrt(6) * hoyde
tetraederA = round(math.sqrt(3) * a**2, 2)
tetraederV = round((math.sqrt(2) * a**3) / 12, 2)
print(f"Et tetraeder med høyde {hoyde} har volum {tetraederV} og areal {tetraederA} .")
