# A, B, C, D
dager = int(input('Dager til du skal reise? '))
pris = 440

def fullpris(pris):
    alder = int(input('Skriv inn din alder: '))
    student = input('Er du student (J/N)? ')
    militaer = ''
    if alder < 16:
        pris *= 0.50
    elif alder > 60:
        pris *= 0.75
    else:
        militaer = input('Er du en militær (J/N)? ')
        if militaer == 'J':
            pris *= 0.75
            if student == 'J':
                pris *= 0.75
    print(f'Prisen på biletten blir: {int(pris)},-')


if dager < 14:
    print(f'For sent for minipris; fullpris {pris},-')
    fullpris(pris)
else:
    print('Minipris 199,- kan ikke refunderes/endres')
    svar = input('Ønskes dette (J/N)? ')
    if svar == 'J':
        pris = 199
        student = input('Er du student (J/N)? ')
        if student == 'J':
            pris *= 0.90
        print(f'Prisen på biletten blir: {int(pris)},-\nTakk for pengene, god reise!')
    elif svar == 'N':
        print(f'Da tilbyr vi fullpris: {pris},-')
        fullpris(pris)
