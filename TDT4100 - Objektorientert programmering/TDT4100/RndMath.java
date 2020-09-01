import java.util.Scanner;
import java.util.Random;
public class RndMath {
  // CONSTRUCTOR
  int a = 0, b = 0;
  public RndMath() {

  }
  // METHODS
  public void setValue(int a, int b) {
    this.a = a;
    this.b = b;
  }
  public void printQuestion() {
    System.out.println(this.a+" + "+this.b+" = ");
  }
  public Boolean checkAnswer(int ans) {
    return (this.a+this.b == ans);
  }
  public static void main(String[] args) {
    RndMath rndM = new RndMath();
    String space = "\n\n\n\n\n\n\n\n\n\n\n\n\n";
    while (true) {
      int rndA = 1+new Random().nextInt(101);
      int rndB = 1+new Random().nextInt(100);
      rndM.setValue(rndA, rndB);
      rndM.printQuestion();
      Scanner input = new Scanner(System.in);
      int num = input.nextInt();
      if (num == 6969) {
        System.out.println("EXITING!!!");
        break;
      }
      if (rndM.checkAnswer(num)) {
          System.out.println("CORRECT!!!");
      }
      System.out.println(space);
    }
    System.out.println(space);
  }
}
