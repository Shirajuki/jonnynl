# A
print("\nA\n")
flyttall1 = float(input("Skriv inn et flyttall: "))
flyttall2 = float(input("Skriv inn enda et flyttall: "))
flyttall3 = float(input("Skriv inn et siste flyttall: "))
print("Konvertert til heltall blir det", int(flyttall1), int(flyttall2), int(flyttall3))
heltall = input("Skriv inn et heltall: ")
print("Konvertert til flyttall blir det:", float(heltall))

# B
print("\nB\n")
navn = input("Skriv ditt navn: ")
alderNaa = float(input(f"Hei {navn} hvor gammel er du? "))
alderFoer = float(input("Hvor gammel var du da du begynte å programmere? "))
alderProgrammert = abs(int(alderFoer - alderNaa))
print("Da har du programmert i", alderProgrammert, "år.")
input(f"Syns du de {alderProgrammert} årene har vært givende? ")
print("Takk for svar", navn+"!")

# C
print("\nC\n")
print("Vennligst gi inn et flyttall med minst 5 siffer både før og etter .")
tall = float(input("Hva er tallet ditt? "))
print("Konvertert til heltall med int():", int(tall))
print("Avrundet til nærmeste heltall:", round(tall))
print("Avrundet til to desimaler:", round(tall, 2))
print("Avrundet til fire desimaler:", round(tall, 4))
print("Avrundet til nærmeste tusen:", int(round(tall, -3)))
print("Heltall fra int() konvertert tilbake til flyttall:", float(int(tall)))

# D
print("\nD\n")
flyttall = float(input("Skriv et flyttall: "))
antallDesimaler = int(input("Hvor mange desimaler er ønskelig? "))
print("Tallet du skrev er", flyttall, "og med", antallDesimaler, "desimaler blir det til", round(flyttall,antallDesimaler))
