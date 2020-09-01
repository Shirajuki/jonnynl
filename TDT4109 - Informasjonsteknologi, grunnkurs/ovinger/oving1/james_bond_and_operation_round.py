# A
print("\nA\n")
import math

desimaltall = float(input("Gi inn et desimaltall: "))
antallDesimaler = int(input("Antall desimaler i avrunding: "))
avrundet = math.floor(desimaltall * 10**antallDesimaler + 0.5) / 10**antallDesimaler
if avrundet.is_integer():
    avrundet = int(avrundet)
print("Avrundet til", antallDesimaler, "desimaler:", avrundet)

# B
print("\nB\n")
heltallsdelen = int(input("Oppgi heltallsdelen av tallet (det foran punktum): "))
desimaldelen = int(input("Oppgi desimaldelen av tallet (det bak punktum): "))
antalldesimaldelen = int(input("Oppgi ønsket antall desimaler i avrunding: "))
flyttall = float(str(heltallsdelen)+"."+str(desimaldelen))
avrundetdelen = round(flyttall * 10**antalldesimaldelen) / 10**antalldesimaldelen
if avrundetdelen.is_integer():
    avrundetdelen = int(avrundetdelen)
print(flyttall, "avrundet til", antalldesimaldelen, "desimaler blir", avrundetdelen)

# C
print("\nC\n")
def isRoman(streng):
    for s in streng:
        if s not in ["M", "D", "C", "L", "X", "V", "I"]:
            return False
    return True

navn = input("Jeg heter: ")
navnsplitted = navn.split(" ")
spesial = navnsplitted[-1]
navnlengde = len(navnsplitted)
if (navnlengde > 2):
    if navnsplitted[navnlengde-2] in ["Von", "Van", "De", "Di"]:
        spesial = " ".join(navnsplitted[navnlengde-2:])
    elif navnsplitted[-1] in ["Jr", "Sr"] or isRoman(navnsplitted[-1]):
        spesial = navnsplitted[-2]
print("The name is", spesial+",", navn)
