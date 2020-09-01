# A
def print_board(board):
    print(f"    1   2   3 \n  -------------")
    for i in range(0,3):
        print(f"{i+1} | {board[i][0]} | {board[i][1]} | {board[i][2]} |\n  -------------")
    print()
# B
def check_win(board):
    # sjekker langs loddrett og vannrett
    for i in range(len(board)):
        if board[i][0] == board[i][1] == board[i][2] != ' ' or board[0][i] == board[1][i] == board[2][i] != ' ':
            return True
    # sjekker skrått fra begge sider
    if board[0][0] == board[1][1] == board[2][2] != ' ' or board[0][2] == board[1][1] == board[2][0] != ' ':
        return True
    return False
# C
def get_username():
    user1 = input("Input the name of user1: ")
    user2 = input("Input the name of user2: ")
    return user1,user2
# D
def check_move(board,user_input):
    return board[user_input[1]][user_input[0]].isspace()
# E
def check_user_input(user_input):
    try:
        user_input[0],user_input[1] = int(user_input[0]),int(user_input[1])
    except:
        return False
    return 1 <= user_input[0] <= 3 and 1 <= user_input[1] <= 3
# print(check_user_input([3,3]))

# F
def main():
    game = True
    board = [
        [' ',' ',' '], # 0
        [' ',' ',' '], # 1
        [' ',' ',' ']  # 2
    ]
    print('Welcome to Jonny\'s TicTacToe!')
    print('Please input the users\' name below?:')
    user1,user2 = get_username()
    # definerer user variabel
    user = ''
    # moves variabel for å slutte spillet om det ikke finnes noen vinnere etter 9 trekk
    moves = 0
    while game:
        print_board(board)
        if moves == 9:
            print('TIE!')
            break
        # sjekker users tur gj. ternary operator
        user = user2 if user == user1 else user1
        while True:
            user_input = input(f"It's {user}'s ({'x' if user == user1 else 'o'}) turn. Choose your move (input as x y): ").split()
            if user_input[0] == "exit" or user_input[0] == "exit()" or user_input[0] == "0":
                game = False
                break
            if check_user_input(user_input):
                user_input[0],user_input[1] = int(user_input[0])-1,int(user_input[1])-1
                if check_move(board,user_input):
                    board[user_input[1]][user_input[0]] = 'x' if user == user1 else 'o'
                    moves+=1
                    break
                else:
                    print('Move invalid, please try again on another coordinate!\n')
            else:
                print('Wrong input please try again, write as: x y\n')
        print()
        # sjekker om noen av spillerene har vunnet eller ikke
        if check_win(board):
            print(f'{user} ({"x" if user == user1 else "o"}) WON!')
            game = False
main()
