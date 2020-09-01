# Funksjon for å laste in ny brett
def new_game_board():
    board = [
    ['♖ ','♘ ','♗ ','♕ ','♔ ','♗ ','♘ ','♖ '],
    ['♙ ','♙ ','♙ ','♙ ','♙ ','♙ ','♙ ','♙ '],
    ['  ','  ','  ','  ','  ','  ','  ','  '],
    ['  ','  ','  ','  ','  ','  ','  ','  '],
    ['  ','  ','  ','  ','  ','  ','  ','  '],
    ['  ','  ','  ','  ','  ','  ','  ','  '],
    ['♟ ','♟ ','♟ ','♟ ','♟ ','♟ ','♟ ','♟ '],
    ['♜ ','♞ ','♝ ','♛ ','♚ ','♝ ','♞ ','♜ '],
    ][::-1]
    return board
# Globale variabler
black = '♜♝♞♛♚♟'
white = '♖♗♘♕♔♙'
alfabet = 'abcdefgh'
# Funksjon for å printe spill brett
def print_board(board):
    board = board[::-1] # snur brettet for å printe ut riktig, siden indeksering starter på 0
    # Her brukes ANSI encoding for å få til farger på brettet, vil ikke funke for noen konsoller/terminaler på windows
    print()
    for y in range(len(board)):
        print(f" {len(board)-y} ",end="")
        for x in range(len(board[y])):
            if x%2 == 1 and y%2 == 1:
                print(f"\x1b[1;30;107m{board[y][x]}\x1b[0m",end="") #black
            else:
                if x%2 == 0 and y%2 == 0:
                    print(f"\x1b[1;30;107m{board[y][x]}\x1b[0m",end="") #black
                else:
                    print(f"\x1b[1;30;47m{board[y][x]}\x1b[0m",end="") #white
        print()
    print(f"   a b c d e f g h")
    print()

# Funksjon for å hente brikke fra x og y (indeks fra 1), dermed trekkes 1 fra under
def get_piece(board, x, y):
    if x > 8 or x < 1 or y > 8 or y < 1:
        return ''
    piece = board[y-1][x-1]
    return piece.strip()

# Sjekker om valgt piece er riktig farge
def check_color_piece(board, color, piece):
    return piece in eval(color) and piece != ''
# Sjekker player input
def check_player_input(command,alfabet="abcdefgh"):
    try:
        a,b = int(command[1]),int(command[3])
    except:
        return False
    return (len(command) == 4 and\
    command[0] in alfabet and 1 <= a <= 8 and\
    command[2] in alfabet and 1 <= b <= 8)
# Sjekker mulige trekk
def get_legal_moves(board,color,x,y):
    piece = get_piece(board,x,y)
    color2 = "black" if color != "black" else "white"
    dy = 1 if color=="black" else -1
    moves = []
    # PAWN
    if piece in '♙♟':
        # F1
        y1 = y+(1*dy)
        if get_piece(board,x,y1) == '':
            moves.append((x,y1))
        # F2
        y2 = y+(2*dy)
        if get_piece(board,x,y2) == '' and ((y == 2 and color == "black") or (y == 7 and color == "white")) :
            moves.append((x,y2))
        # F1R1
        x1 = x+1
        if get_piece(board,x1,y1) != '' and get_piece(board,x1,y1) in eval(color2):
            moves.append((x1,y1))
        # F1L1
        x2 = x-1
        if get_piece(board,x2,y1) != '' and get_piece(board,x2,y1) in eval(color2):
            moves.append((x2,y1))
    # KNIGHT
    if piece in '♘♞':
        offset = [(1,2),(1,-2),(-1,2),(-1,-2),(2,1),(2,-1),(-2,1),(-2,-1)]
        for mv in offset:
            x1,y1 = x+mv[0],y+mv[1]
            if (get_piece(board,x1,y1) in eval(color2) and 1 <= x1 <= 8 and 1 <= y1 <= 8):
                moves.append((x1,y1))
    # KING
    if piece in '♕♛':
        offset = [(-1,1),(0,1),(1,1),(1,0),(1,-1),(0,-1),(-1,-1),(-1,0)]
        for mv in offset:
            x1,y1 = x+mv[0],y+mv[1]
            if (get_piece(board,x1,y1) in eval(color2) and 1 <= x1 <= 8 and 1 <= y1 <= 8):
                # print(check_sjakk(board,color,(x1,y1)))
                moves.append((x1,y1))
    # ROOK + QUEEN1
    if piece in '♖♜♔♚':
        # Rn
        x1 = x
        for i in range(x,8):
            x1 += 1
            if get_piece(board,x1,y) != '' :
                if get_piece(board,x1,y) in eval(color2):
                    moves.append((x1,y))
                break
            else:
                moves.append((x1,y))
        #Ln
        x1 = x
        for i in range(x,1,-1):
            x1 -= 1
            if get_piece(board,x1,y) != '' :
                if get_piece(board,x1,y) in eval(color2):
                    moves.append((x1,y))
                break
            else:
                moves.append((x1,y))
        #Un
        y1 = y
        for i in range(y,8):
            y1 += 1
            if get_piece(board,x,y1) != '' :
                if get_piece(board,x,y1) in eval(color2):
                    moves.append((x,y1))
                break
            else:
                moves.append((x,y1))
        #Dn
        y1 = y
        for i in range(y,1,-1):
            y1 -= 1
            if get_piece(board,x,y1) != '' :
                if get_piece(board,x,y1) in eval(color2):
                    moves.append((x,y1))
                break
            else:
                moves.append((x,y1))
    # BISHOP + QUEEN2
    if piece in '♗♝♔♚':
        #UnLn
        x1,y1 = x,y
        while 1 <= x1 <= 8 and 1 <= y1 <= 8:
            x1 += 1
            y1 += 1
            if (x1 > 8 or x1 < 1 or y1 > 8 or y1 < 1):
                break
            if get_piece(board,x1,y1) != '' :
                if get_piece(board,x1,y1) in eval(color2):
                    moves.append((x1,y1))
                break
            else:
                moves.append((x1,y1))
        #UnRn
        x1,y1 = x,y
        while 1 <= x1 <= 8 and 1 <= y1 <= 8:
            x1 -= 1
            y1 += 1
            if (x1 > 8 or x1 < 1 or y1 > 8 or y1 < 1):
                break
            if get_piece(board,x1,y1) != '' :
                if get_piece(board,x1,y1) in eval(color2):
                    moves.append((x1,y1))
                break
            else:
                moves.append((x1,y1))
        #DnRn
        x1,y1 = x,y
        while 1 <= x1 <= 8 and 1 <= y1 <= 8:
            x1 -= 1
            y1 -= 1
            if (x1 > 8 or x1 < 1 or y1 > 8 or y1 < 1):
                break
            if get_piece(board,x1,y1) != '' :
                if get_piece(board,x1,y1) in eval(color2):
                    moves.append((x1,y1))
                break
            else:
                moves.append((x1,y1))
        #DnLn
        x1,y1 = x,y
        while 1 <= x1 <= 8 and 1 <= y1 <= 8:
            x1 += 1
            y1 -= 1
            if (x1 > 8 or x1 < 1 or y1 > 8 or y1 < 1):
                break
            if get_piece(board,x1,y1) != '' :
                if get_piece(board,x1,y1) in eval(color2):
                    moves.append((x1,y1))
                break
            else:
                moves.append((x1,y1))
    return moves
# Henter posisjonen til motstanderens konge
def get_enemy_king_position(board,color):
    for y in range(len(board)):
        for x in range(len(board[y])):
            piece = get_piece(board,x+1,y+1)
            if ((piece == '♛' and color == 'white') or (piece == '♕' and color == 'black')) and piece != '':
                return (x+1,y+1)
    return (0,0)
# Sjekker om det er sjakk hos fargen til kongens vha. posisjon
def check_sjakk(board,color,kingpos):
    for y in range(len(board)):
        for x in range(len(board[y])):
            x1,y1 = x+1,y+1
            piece = get_piece(board,x1,y1)
            if piece != '' and piece in eval(color):
                if kingpos in get_legal_moves(board,color,x1,y1):
                    # print(piece,get_legal_moves(board,color,x1,y1))
                    return True
    return False
# Funksjon for å sjekke om sjakkmatt
def check_sjakkmatt(board,color,kingpos):
    color2 = 'black' if color == 'white' else 'white'
    kingmoves = get_legal_moves(board,color2,kingpos[0],kingpos[1])
    if len(kingmoves) == 0:
        return False
    for mv in kingmoves:
        new_board = [x[:] for x in board]
        new_board[mv[1]-1][mv[0]-1],new_board[kingpos[1]-1][kingpos[0]-1] = f"{get_piece(board,kingpos[0],kingpos[1])} ","  "
        if not check_sjakk(new_board,color,mv):
            return False
    return True
# Funksjon for å sjekke om pawn kan bli promotert
def pawn_promotion(board,color):
    if color == 'black':
        for x in range(1,9):
            if get_piece(board,x,8) == '♟':
                promotions = ['qrbk','♚♜♝♞']
                while True:
                    promotion = input('Choose your promotion of (Q)ueen, (R)ook, (B)ishop or (K)night: ').lower()
                    if promotion == 'q' or promotion == 'r' or promotion == 'b' or promotion == 'k':
                        break
                    print('Incorrect input, try again! (q,r,b,k)')
                board[-1][x-1] = f'{promotions[1][promotions[0].index(promotion)]} '
                print_board(board)
                # print(get_legal_moves(board,color,x,8),(x,8),get_piece(board,x,8))

    else:
        for x in range(1,9):
            if get_piece(board,x,1) == '♙':
                promotions = ['qrbk','♔♖♗♘']
                while True:
                    promotion = input('Choose your promotion of (Q)ueen, (R)ook, (B)ishop or (K)night: ').lower()
                    if promotion == 'q' or promotion == 'r' or promotion == 'b' or promotion == 'k':
                        break
                    print('Incorrect input, try again! (q,r,b,k)')
                board[0][x-1] = f'{promotions[1][promotions[0].index(promotion)]} '
                print_board(board)
# Hente sjakk kommando fra x og y
def chess_move(a):
    return str(alfabet[a[0]-1])+str(a[1])
# Funksjon som sjekker om trekkene gitt er mulig og flytter brikken
def move_piece(command,color,board,alfabet):
    command = command.lower()
    if check_player_input(command):
        xy = (alfabet.index(command[0])+1, int(command[1]))
        movexy = (alfabet.index(command[2])+1, int(command[3]))
        piece = get_piece(board, xy[0], xy[1])
        # print(xy,movexy,piece)
        if check_color_piece(board,color,piece):
            moveable = get_legal_moves(board,color,xy[0],xy[1])
            # Check king sjakk move
            if piece in '♕♛' and piece != '':
                color2 = "white" if color == 'black' else 'black'
                new_board = [x[:] for x in board]
                new_board[movexy[1]-1][movexy[0]-1],new_board[xy[1]-1][xy[0]-1] = f"{get_piece(board,xy[0],xy[1])} ","  "
                moveable = [xy1 for xy1 in get_legal_moves(board,color,xy[0],xy[1]) if not check_sjakk(new_board,color2,xy1)]
                # print("king",piece,moveable, check_sjakk(new_board,color2,(5,8)),color2)
            else:
                color2 = "white" if color == 'black' else 'black'
                kingpos = get_enemy_king_position(board,color2)
                new_board = [x[:] for x in board]
                new_board[movexy[1]-1][movexy[0]-1],new_board[xy[1]-1][xy[0]-1] = f"{get_piece(board,xy[0],xy[1])} ","  "
                if check_sjakk(new_board,color2,kingpos):
                    moveable = []
            # print("king",piece,moveable, check_sjakk(new_board,color2,(5,8)),color2)
            if movexy in moveable and moveable != []:
                board[movexy[1]-1][movexy[0]-1] = f"{piece} "
                board[xy[1]-1][xy[0]-1] = "  "
                if piece in '♙♟':
                    pawn_promotion(board,color)
                return True
            else:
                print('Invalid move!')
                print('Valid moves for piece:',piece, [chess_move(a) for a in get_legal_moves(board,color,xy[0],xy[1])])
        else:
            print('Not a correct piece chosen!')
    else:
        print('Wrong input! (example: a2a4)')
    return False
# MAIN funksjon
def main():
    global alfabet
    chess_board = new_game_board()
    print_board(chess_board)
    print('ASCII chess game!')
    game = True
    color = 'black'
    while game:
        color = 'black' if color != 'black' else 'white'
        while True:
            command = input(f'Choose your move ({color}): ')
            if command == 'exit' or command == 'exit()':
                game = False
                print('Exiting ...')
                break
            if move_piece(command,color,chess_board,alfabet):
                break
        print_board(chess_board)
        kingpos = get_enemy_king_position(chess_board,color)
        if check_sjakk(chess_board,color,kingpos):
            print('SJAKK!')
        if check_sjakkmatt(chess_board,color,kingpos):
            print('SJAKKMATT!')
            break
main()
