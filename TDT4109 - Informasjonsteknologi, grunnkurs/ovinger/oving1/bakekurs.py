# A
print("\nA\n")
antall = int(input("Hvor mange cookies ønsker du å bake? "))
print(f"Antall cookies: {antall} \nsukker(g): {400*antall/48} \nsmør(g): {320*antall/48}\
\nsjokolade(g): {500*antall/48} \negg: {2*antall/48} \nhvetemel(g): {460*antall/48}")

# B
print("\nB\n")
lage1 = int(input("Hvor mange cookies vil du lage? "))
lage2 = int(input("og hvor mange cookies vil du lage nå? "))
lage3 = int(input("og hvor mange cookies vil du lage til slutt? "))
lage = [lage1, lage2, lage3]
print(f"{'Antall cookies:':<15}{'sukker(g)':>15}{'sjokolade(g)':>15}")
for l in lage:
    print(f"{l:<15}{(400*l/48):>15}{(500*l/48):>15}")
