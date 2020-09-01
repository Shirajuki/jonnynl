import random
def drawCard(checkUsersCard):
    rnd = random.randint(1,11)
    if checkUsersCard < 11 and rnd == 1:
        rnd = 11
    return rnd
def checkWinCondition(score1,score2):
    if score1 > score2:
        return True
    else:
        return False

while True:
    dealer = 0
    player = 0

    dealer += drawCard(dealer)
    print(f'Dealers cards are {dealer} and ?')
    player += drawCard(player)
    player += drawCard(player)
    print(f'Your score is: {player}')
    while True:
        if player == 21:
            print('You won!')
            break
        elif player > 21:
            print('You lost!')
            break
        drawMore = input('Do you want another card? (J/N) ').lower()
        if drawMore == 'j':
            player += drawCard(player)
            print(f'Your score is: {player}')
        else:
            dealer += drawCard(dealer)
            print(f'Dealers score is: {dealer}')
            if checkWinCondition(player,dealer):
                print('You won!')
                break
            else:
                print('You lost!')
                break
    print()
    again = input('Do you want to play again? (J/N) ').lower()
    if again == 'j':
        print()
        continue
    else:
        break
