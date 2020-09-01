# Kommenter vekk oppgavedelene om det ønskes å kjøre oppgavene hver for seg.
# A
print('\nA\n')
print('INFO\n\
Dette programmet besvarer om din utleie av egen bolig er skattepliktig.\n\
Først trenger vi å vite hvor stor del av boligen du har leid ut.\n\
Angi dette i prosent, 100 betyr hele boligen, 50 betyr halve,\n\
20 en mindre del av boligen som f.eks. en hybel.')

print('----------------------------------------------------------------------')
print('DATAINNHENTING:')
utleid = int(input('Oppgi hvor mye av boligen som ble utleid: ')) #65
leieinntekt = int(input('Skriv inn hva du har hatt i leieinntekt: ')) #45000

if (utleid > 50):
    if (leieinntekt < 20000):
        skattefri = True
    else:
        skattefri = False
else:
    skattefri = True

print('----------------------------------------------------------------------')
print('SKATTEBEREGNING:')
if (skattefri):
    print('Inntekten er skattefri.')
else:
    print('Inntekten er skattepliktig.')
    print(f'Skattepliktig beløp er {leieinntekt}')

# B
print('\nB\n')
print('INFO\n\
Dette programmet besvarer om din utleie en annen type bolig,\n\
her sekundær- eller fritidsbolig, er skattepliktig.\n\
Først trenger vi å vite om du leier ut en sekundær- eller en fritidsbolig.')

print('----------------------------------------------------------------------')
print('DATAINNHENTING:')
typeBolig = input('Skriv inn type annen bolig (sekundærbolig/fritidsbolig) du har leid ut: ').lower() #Fritidsbolig
print(f'INFO\n\
Du har valgt {typeBolig}.\n\
Nå trenger vi først å vite om {typeBolig}en(e) primært brukes til utleie eller fritid.\n\
Deretter trenger vi å vite hvor mange {typeBolig}(er) du leier ut.\n\
Til slutt trenger vi å vite hvor store utleieinntekter du har pr. {typeBolig}.')

print('----------------------------------------------------------------------')
print('DATAINNHENTING:')
formaal = input(f'Skriv inn formålet med {typeBolig}en(e): ').lower() #Fritid
antallLeie = int(input(f'Skriv inn antallet {typeBolig}er du leier ut: ')) #3
utleieinntekt = int(input(f'Skriv inn utleieinntekten {typeBolig}: ')) #15000

print('----------------------------------------------------------------------')
print('SKATTEBEREGNING:')
skattefri = False
if typeBolig == 'sekundærbolig':
    print('Inntekten er skattepliktig.')
    print(f'Totalt skattepliktig beløp er {utleieinntekt}')
elif typeBolig == 'fritidsbolig':
    if formaal == 'fritid':
        if utleieinntekt < 10000:
            skattefri = True
    if (skattefri):
        print('Inntekten er skattefri.')
    else:
        beloep = utleieinntekt//antallLeie
        print('Inntekten er skattepliktig.')
        print(f'Overskytende beløp pr. {typeBolig} er {beloep}')
        print(f'Skattepliktig inntekt pr. {typeBolig} er {beloep*0.85}')
        print(f'Totalt skattepliktig beløp er {beloep*0.85*antallLeie}')

# C
print('\nC\n')
print('INFO\n\
Dette programmet besvarer om din utleie av enten egen eller en annen type bolig,\n\
her sekundær- eller fritidsbolig, er skattepliktig.\n\
Først trenger vi å vite enten om du leier ut din egen bolig, en sekundær- eller en fritidsbolig.\n\
Om du leier ut din egen bolig, vennligst angi dette i prosent, 100 betyr hele boligen, 50 betyr halve,\n\
20 en mindre del av boligen som f.eks. en hybel.')

print('----------------------------------------------------------------------')
print('DATAINNHENTING:')
typeBolig = input('Skriv inn type bolig (egen bolig/sekundærbolig/fritidsbolig) du har leid ut: ').lower()
print(f'INFO\n\
Du har valgt {typeBolig}.')
if typeBolig == 'egen bolig':
    print('----------------------------------------------------------------------')
    print('DATAINNHENTING:')
    utleid = int(input('Oppgi hvor mye av boligen som ble utleid: '))
    leieinntekt = int(input('Skriv inn hva du har hatt i leieinntekt: '))

    if (utleid > 50):
        if (leieinntekt < 20000):
            skattefri = True
        else:
            skattefri = False
    else:
        skattefri = True

    print('----------------------------------------------------------------------')
    print('SKATTEBEREGNING:')
    if (skattefri):
        print('Inntekten er skattefri.')
    else:
        print('Inntekten er skattepliktig.')
        print(f'Skattepliktig beløp er {leieinntekt}')
else:
    print(f'Nå trenger vi først å vite om {typeBolig}en(e) primært brukes til utleie eller fritid.\n\
Deretter trenger vi å vite hvor mange {typeBolig}(er) du leier ut.\n\
Til slutt trenger vi å vite hvor store utleieinntekter du har pr. {typeBolig}.')

    print('----------------------------------------------------------------------')
    print('DATAINNHENTING:')
    formaal = input(f'Skriv inn formålet med {typeBolig}en(e): ').lower() #Fritid
    antallLeie = int(input(f'Skriv inn antallet {typeBolig}er du leier ut: ')) #3
    utleieinntekt = int(input(f'Skriv inn utleieinntekten {typeBolig}: ')) #15000

    print('----------------------------------------------------------------------')
    print('SKATTEBEREGNING:')
    skattefri = False
    if typeBolig == 'sekundærbolig':
        print('Inntekten er skattepliktig.')
        print(f'Totalt skattepliktig beløp er {utleieinntekt}')
    elif typeBolig == 'fritidsbolig':
        if formaal == 'fritid':
            if utleieinntekt < 10000:
                skattefri = True
        if (skattefri):
            print('Inntekten er skattefri.')
        else:
            beloep = utleieinntekt//antallLeie
            print('Inntekten er skattepliktig.')
            print(f'Overskytende beløp pr. {typeBolig} er {beloep}')
            print(f'Skattepliktig inntekt pr. {typeBolig} er {beloep*0.85}')
            print(f'Totalt skattepliktig beløp er {beloep*0.85*antallLeie}')
