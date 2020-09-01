hemmelig_ord = list(input('Skriv inn det hemmelige ordet: '))
antall_liv = int(input('Hvor mange forsøk får brukeren? '))
skjerm_ord = list(len(hemmelig_ord)*'*')
# print(hemmelig_ord,skjerm_ord)
while True:
    print(''.join(skjerm_ord))
    print()
    bokstav = input('Gjett på én bokstav i ordet: ').lower()[0]
    if bokstav in hemmelig_ord:
        for i in range(len(hemmelig_ord)):
            if hemmelig_ord[i] == bokstav:
                skjerm_ord[i] = bokstav
        print('Stemmer, bokstaven er i ordet')
        if (skjerm_ord == hemmelig_ord):
            print(f'Gratulerer du har funnet ut det hemmelige ordet: {"".join(hemmelig_ord)}.')
            break
    else:
        antall_liv -= 1
        print(f'Bokstaven {bokstav} er ikke i ordet')
        if antall_liv == 0:
            print('Du har ingen liv igjen.')
            break
        else:
            print(f'Du har {antall_liv} liv igjen, prøv på nytt.')
