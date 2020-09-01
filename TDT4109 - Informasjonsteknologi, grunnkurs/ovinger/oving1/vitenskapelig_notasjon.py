# A
print("\nA\n")
Avagadros = 6.022e23
stoff = input("Si et stoff du er i besittelse av: ")
molvekt = float(input("Hva er molvekt i gram for vann? "))
gram = float(input("Hvor mange gram vann har du? "))
mol = gram/molvekt
print(f"Du har {Avagadros*mol:.1e} molekyler {stoff}")

# B
print("\nB\n")
antallhoert = float(input("Antall ulike 10-toners melodilinjer du har hørt? "))
prosent = antallhoert/(8.25e19) * 100
print(f"Du har hørt {prosent} prosent av melodier som er mulig.")
