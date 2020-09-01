# A
print("\nA\n")
print(input("Navn? "), "- kult navn.")
print(input("Favorittfag? "), "- interessant!")

# B
print("\nB\n")
navn1 = input("Navn? ")
print("Hei,", navn1)
favorittfag = input("Favorittfag? ")
print(favorittfag,"- interessant!")
print("Ha en fin dag,", navn1)
print("- og lykke til med", favorittfag)

# C
print("\nC\n")
import math
radius = 5.4
hoyde = 7.9
omkrets_sirkel = math.tau * radius
areal_sirkel = math.pi * radius**2
print("Har en sirkel med radius", radius, "som er grunnflate i en sylinder med høyde", hoyde)
print("Omkrets av sirkelen:", omkrets_sirkel)  #tau er det samme som 2 pi
print("Areal av sirkelen:", areal_sirkel)
print("Areal av sylinderen:", omkrets_sirkel * hoyde + 2 * areal_sirkel)

# D
print("\nD\n")
navn2 = "Per"
idealAlder = 42
kundensAlder = 37
differanse = idealAlder - kundensAlder
print(navn2, "er", differanse, "år unna idealalderen")

# E
print("\nE\n")
mittNavn = "Jonny Ngo Luong"
mittAlder = 19
print(f"Jeg heter {mittNavn} og er {mittAlder} år.")
