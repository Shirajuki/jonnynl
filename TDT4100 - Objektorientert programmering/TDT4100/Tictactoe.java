import java.util.Scanner;
public class Tictactoe {
  // CONSTRUCTOR
  // String[] board = {" "," "," "," "," "," "," "," "," "};
  String[] board = {" "," "," "," "," "," "," "," "," "};
  String turn = "X";
  public Tictactoe(String[] startboard) {
    board = startboard;
  }
  // METHODS
  public void setValue(int pos, String v) {
    board[pos] = v;
  }
  public void printBoard() {
    System.out.println("");
    System.out.println("|"+board[0]+"| |"+board[1]+"| |"+board[2]+"|");
    System.out.println("");
    System.out.println("|"+board[3]+"| |"+board[4]+"| |"+board[5]+"|");
    System.out.println("");
    System.out.println("|"+board[6]+"| |"+board[7]+"| |"+board[8]+"|");
    System.out.println("");
  }
  public boolean checkWin() {
    boolean bool = false;
    // HORI
    if ((board[0] == "X" && board[1] == "X" && board[2] == "X") ||
        (board[3] == "X" && board[4] == "X" && board[5] == "X") ||
        (board[6] == "X" && board[7] == "X" && board[8] == "X")) {
      System.out.println("X win");
      bool = true;
    }
    // VERTI
    if ((board[0] == "X" && board[3] == "X" && board[6] == "X") ||
        (board[1] == "X" && board[4] == "X" && board[7] == "X") ||
        (board[2] == "X" && board[5] == "X" && board[8] == "X")) {
      System.out.println("X win");
      bool = true;
    }
    // DIAG
    if ((board[0] == "X" && board[4] == "X" && board[8] == "X") ||
        (board[2] == "X" && board[4] == "X" && board[5] == "X")) {
      System.out.println("X win");
      bool = true;
    }


    // HORI
    if ((board[0] == "O" && board[1] == "O" && board[2] == "O") ||
        (board[3] == "O" && board[4] == "O" && board[5] == "O") ||
        (board[6] == "O" && board[7] == "O" && board[8] == "O")) {
      System.out.println("O win");
      bool = true;
    }
    // VERTI
    if ((board[0] == "O" && board[3] == "O" && board[6] == "O") ||
        (board[1] == "O" && board[4] == "O" && board[7] == "O") ||
        (board[2] == "O" && board[5] == "O" && board[8] == "O")) {
      System.out.println("O win");
      bool = true;
    }
    // DIAG
    if ((board[0] == "O" && board[4] == "O" && board[8] == "O") ||
        (board[2] == "O" && board[4] == "O" && board[5] == "O")) {
      System.out.println("O win");
      bool = true;
    }
    // TIE
    if (board[0] != " " && board[1] != " " && board[2] != " " &&
        board[3] != " " && board[4] != " " && board[5] != " " &&
        board[6] != " " && board[7] != " " && board[8] != " ") {
      System.out.println("TIE!");
      bool = true;
    }
    return bool;
  }
  public static void main(String[] args) {
    String[] startboard = {" "," "," "," "," "," "," "," "," "};
    Tictactoe ttt = new Tictactoe(startboard);
    String space = "\n\n\n\n\n\n\n\n\n\n\n\n\n";
    while (true) {
      ttt.printBoard();
      Scanner input = new Scanner(System.in);
      int num = input.nextInt();
      if (num < 0 || num > 8) {
        System.out.println("Error!!!Try again!");
        System.out.println(space);
        continue;
      }
      if (ttt.board[num] == " ") {
        if (ttt.turn == "X") {
          ttt.setValue(num,"X");
          ttt.turn = "O";
        } else {
          ttt.setValue(num,"O");
          ttt.turn = "X";
        }
        System.out.println(num+" Placed");
        boolean a = ttt.checkWin();
        if (a) break;
      } else {
        System.out.println("Error!!!Try again!");
      }
      System.out.println(space);
    }
    System.out.println(space);
    ttt.printBoard();
  }
}
