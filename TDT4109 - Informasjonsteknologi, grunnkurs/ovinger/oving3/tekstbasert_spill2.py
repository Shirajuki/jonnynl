# A, B, C
game = True
funnetNokkel = False
while game:
    print('Du står utenfor en dør med en postkasse.')
    i = input('>').lower()
    if (i == 'åpne døren'):
        if (funnetNokkel):
            print('Du låser opp døren og går inn.')
            game = False
        else:
            print('Døren er låst')
    elif (i == 'bank på'):
        print('Du får ingen respons.')
    elif (i == 'gå andre veien'):
        print('Du snur deg og vandrer hjem igjen. Du hører en skummel lyd og løper tilbake.')
    elif (i == 'åpne postkassen'):
        print('Du finner en nøkkel')
        funnetNokkel = True
    elif (i == ''):
        print('Ha en fin dag!')
        game = False
    else:
        print('Forstår ikke kommando, prøv noe annet')
    print()
