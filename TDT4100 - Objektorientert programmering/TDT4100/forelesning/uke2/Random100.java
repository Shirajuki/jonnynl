package uke2;
import java.util.Random;

public class Random100 {
  // CONSTRUCTOR

  // METHODS
  public int getRandom100() {
    Random random = new Random();
    return random.nextInt(100);
  }

  // MAIN
  public static void main(String[] args) {
    Random100 random = new Random100();
    int a = random.getRandom100();
    System.out.println(a);
  }
}
