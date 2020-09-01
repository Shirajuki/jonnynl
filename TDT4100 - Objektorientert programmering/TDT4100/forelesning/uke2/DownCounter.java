package uke2;
public class DownCounter {
  // CONSTRUCTOR
  int counter = 0;
  public DownCounter(int x) {
    this.counter = x;
    System.out.println("Constructor called.");
  }
  // METHODS
  public void countDown() {
    if (counter > 0) counter--;
  }
  public boolean isFinished() {
    return counter <= 0;
  }
  public int getCounter() {
    return counter;
  }

  // MAIN
  public static void main(String[] args) {
    DownCounter dc = new DownCounter(3);
    for (int i = 0; i < 5; i++) {
      dc.countDown();
      // System.out.printf("My name is: %s%n", "joe");
      // String output = String.format("%s = %d", "joe", 35);
      // System.out.println(dc.counter);
      System.out.printf("Telleren er %s, ", dc.getCounter());
      dc.isFinished();
      System.out.println(dc.counter <= 0);
    }
  }
}
