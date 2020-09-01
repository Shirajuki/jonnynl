# A
poenggrenser_liste = []
poenggrenser = open("poenggrenser_2011.csv","r")
for line in poenggrenser:
    line = line.strip('\n').replace('\"',"").split(",")
    line = line[0].split() + [line[-1]]
    poenggrenser_liste.append(line)
poenggrenser.close()
# print(poenggrenser_liste)

# B
def alle_studenter(liste):
    count=0
    for line in liste:
        if line[-1] == "Alle":
            count+=1
    return count
print(f"Antall studier hvor alle kom inn: {alle_studenter(poenggrenser_liste)}")

# B
def gjennomsnittlig_opptaksgrense(liste):
    gjennomsnitt,antall = 0,0
    for line in liste:
        if line[0] == "NTNU" and line[-1] != "Alle":
            gjennomsnitt += float(line[-1])
            antall += 1
    return gjennomsnitt/antall
print(f"Gjennomsnittlig opptaksgrense for NTNU var: {gjennomsnittlig_opptaksgrense(poenggrenser_liste):.2f}")

# C
def laveste_opptaksgrense(liste):
    laveste = ["",100]
    for line in liste:
        if line[-1] != "Alle" and float(line[-1]) < laveste[1]:
            laveste[0],laveste[1] = f"{line[0]} {line[1]} {' '.join(line[2:-1])}", float(line[-1])
    return laveste[0]
print(f"Studiet som hadde den laveste opptaksgrensen var: {laveste_opptaksgrense(poenggrenser_liste)}")

# D
poenggrenser_dict = {}
for line in poenggrenser_liste:
    if line[0] not in poenggrenser_dict:
        poenggrenser_dict[line[0]] = [{line[2]: line[-1]}]
    else:
        poenggrenser_dict[line[0]].append({line[2]: line[-1]})
for key,value in poenggrenser_dict.items():
    print()
    print(key,value)
