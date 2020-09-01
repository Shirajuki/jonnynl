import random
print("[South of house]\n\
Dette er et åpent felt sør for et rødt hus, med en stor inngangsdør.\n\
Du står nå ved døra og tenker på å gå inn.")
game = True
doorOpen = False
while game:
    i = input('>').lower()
    if (i in ['gå inn','gå inn døra','gå inni døra','går inn']):
        if (doorOpen):
            print('Du går inn døren.')
            game = False
        else:
            print('Døren er låst.')
    elif (i in ['bank på','banker på']):
        if (doorOpen):
            print('Døren er åpen.')
        else:
            print('Ingen svarer.')
    elif (i in ['lås opp','låser opp']):
        if (doorOpen):
            print('Døren er allerede åpen!')
        else:
            print('Du låser opp døren.')
            doorOpen = True;
    elif (i in ['hopp','hopper','dans','danser']):
        print(random.choice(['Jippi!','Har du det gøy?','Veldig bra. Nå kan du begynne på andre klasse.']))
    elif (i in ['exit','exit()']):
        game = False
    else:
        print('Dette er ikke en støttet kommando')
    print()
print('\n\n---------------')
print('Game Over!')
