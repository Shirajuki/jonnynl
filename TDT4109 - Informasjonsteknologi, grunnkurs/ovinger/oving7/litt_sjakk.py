# A
board_string_1 = 'rkn.r.p.....P..PP.PPB.K..'
def make_board(board_string):
    board = []
    for i in range(len(board_string)//5):
        board.append([(x if x != "." else None) for x in board_string[i*5:(i*5)+5]])
    return board
board = make_board(board_string_1)
# print(board)

# B
def get_piece(board, x, y):
    # Boarden blir flippet
    return board[::-1][y-1][x-1]
get_piece(board, 2, 1)
# -> None
get_piece(board, 5, 2)
# -> 'P'

# C
def get_legal_moves(board, x, y):
    piece = get_piece(board,x,y)
    # pawn?
    if piece.lower() != 'p':
        return []
    else:
        board = board[::-1]
        # [print(x) for x in board]
        motstand = 'kqrbnp' if piece == 'P' else 'KQRBNP'
        retning = 1 if piece == 'P' else -1
        moves = []
        # Forward 1
        y1 = y-1+(1*retning)
        if board[y1][x-1] == None:
            moves.append((x,y+(1*retning)))
        # Forward 2
        y2 = y-1+(2*retning)
        if board[y2][x-1] == None:
            moves.append((x,y+(2*retning)))
        # Enemy 1
        x1 = x-1+1
        if board[y1][x1] != None and board[y1][x1] in motstand:
            moves.append((x+1,y+(1*retning)))
        # Enemy 2
        x2 = x-1-1
        if board[y1][x2] != None and board[y1][x2] in motstand:
            moves.append((x-1,y+(1*retning)))
        # print(board[y-1+(1*retning)][x-1])
        print(moves)
    return moves
get_legal_moves(board, 4, 2)
# -> [(4, 3), (4, 4)]
get_legal_moves(board, 2, 4)
# -> [(2, 3), (3, 3)]
