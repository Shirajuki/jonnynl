# A
print("\nA\n")
Pizza = 750
Studentrabatt = 0.20
Tips = 0.08
totalt = Pizza * (1-Studentrabatt) * (1+Tips)
print(totalt)

# B
print("\nB\n")
pris = float(input("Total pris: "))
personer = float(input("Hvor mange deltok på middagen? "))
print(f"Ettersom dere var {personer} personer, så må hver person betale {round(pris/personer, 2)} kroner.")
