# Funksjon for å laste inn nytt brett, enten default eller loadet fil
def load_board():
    board = [
    [0,0,6, 9,0,5, 0,1,0],
    [9,7,0, 0,1,2, 3,0,5],
    [0,2,0, 0,0,4, 8,6,0],

    [5,0,3, 8,0,0, 0,2,0],
    [0,0,0, 0,0,0, 0,0,0],
    [0,8,0, 0,0,1, 9,0,7],

    [0,5,4, 1,0,0, 0,7,0],
    [2,0,7, 4,5,0, 0,9,3],
    [0,6,0, 7,0,3, 1,0,0],
    ]
    check_load = input('Do you want to load a board from a .txt file? (y / n) ').lower()
    if check_load == 'y':
        while True:
            try:
                file_input = input('Input the name of file here: (0 to exit) ')
                if file_input == '0':
                    return board
                file = open(file_input,'r')
                line1 = file.readline().replace('\n','')
                line2 = file.readline()
                file.close()
            except:
                print('File not found, try again.')
                continue
            board = eval(line1)
            saved = eval(line2)
            print('Board loaded!')
            return board,saved
    print('Using default board!')
    return board,[b[:] for b in board]

# Funksjon for å printe brettet lik som eksemplet
def print_board(board):
    print('\n    0 1 2   3 4 5   6 7 8\n  +-------+-------+-------+')
    for y in range(len(board)):
        print(f'{y} | ',end="")
        for x in range(len(board[y])):
            print(f'{board[y][x]} ',end="")
            if (x+1)%3 == 0:
                print('| ',end="")
        if (y+1)%3 == 0:
            print('\n  +-------+-------+-------+',end="")
        print()
    print()

# Sjekker om input gitt er gyldig
def check_player_input(command):
    try:
        a,b = int(command[0]),int(command[1])
    except:
        return False
    if command[2] in ['delete','del','slett','save','lagre','exit()','exit']:
        return True
    else:
        try:
            c = int(command[2])
        except:
            return False
    return (len(command) == 3 and 0 <= a <= 8 and 0 <= b <= 8 and 1 <= c <= 9)

# Sjekker om tallet allerede finnes horisontalt, vertikalt eller i 3x3 blokken/kvadratet
def check_legal_input(board,command=[0,2,9]):
    pos = (command[0],command[1])
    tall = command[2]

    hori = board[pos[1]]
    verti = [x[pos[0]] for x in board]
    block = []
    xx = pos[0]//3 * 3
    yy = pos[1]//3 * 3
    for y in range(len(board)):
        for x in range(len(board[y])):
            if xx <= x < xx+3 and yy <= y < yy+3:
                block.append(board[y][x])
    return tall not in hori and tall not in verti and tall not in block

# Sletter tall fra x og y
def delete_from_board(command,board,saved_board):
    pos = (command[0],command[1])
    if saved_board[pos[1]][pos[0]] == 0:
        board[pos[1]][pos[0]] = 0
        return True
    print('Cannot delete this default cell.')
    return False
# Lagrer brettet for å senere fortsette på den
def save_board(board,saved):
    file = open('sudoku.txt','w')
    file.write(f'{board}\n')
    file.write(f'{saved}')
    file.close()
# Sjekker om hele brettet er løst
def check_board_solved(board):
    for y in range(len(board)):
        if 0 in board[y]:
            return False
    return True
# MAIN funksjon
def main():
    game = True
    game_board,saved_board = load_board();
    print()
    print('Welcome to Jonny\'s sudoku!')
    print()
    while game:
        print_board(game_board)
        while True:
            print('\nInput given by (x y n), 1 <= n <= 9, n can also be delete, save, exit and so on...')
            command = input("$ Choose your input now (x y n): ").split()
            if check_player_input(command):
                # Gjør om x og y til int
                command[0],command[1] = int(command[0]),int(command[1])
                # Sjekker om n er noe annet kommando enn int
                if command[2].lower() in ['delete','del','slett','save','lagre','exit()','exit']:
                    command[2] = command[2].lower()
                    if command[2] in ['exit()','exit']:
                        game = False
                        break
                    elif command[2] in ['delete','del','slett']:
                        delete_from_board(command,game_board,saved_board)
                        break
                    elif command[2] in ['save','lagre']:
                        save_board(game_board,saved_board)
                        game = False
                        break
                else:
                    # Om n er int, sjekker vi om "trekket" er gyldig/mulig
                    command[2] = int(command[2])
                    if check_legal_input(game_board,command) and game_board[command[1]][command[0]] != '0':
                        game_board[command[1]][command[0]] = command[2]
                        break
                    else:
                        print('Not a legal input, already exist in either the row, column or square.')
            else:
                print('Incorrect input, try again')
        # For hver gyldig input, sjekker vi om bretter er ferdig løst eller ikke, evt. fortsettes loopen
        if check_board_solved(game_board):
            print('\n\nCONGRATULATION you solved the board!\n\n')
            # Lagrer brettet on save
            save_board(game_board,saved_board)
            game = False
main()
