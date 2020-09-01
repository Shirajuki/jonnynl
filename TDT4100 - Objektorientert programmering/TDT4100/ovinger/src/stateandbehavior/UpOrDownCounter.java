package stateandbehavior;
public class UpOrDownCounter {
  // CONSTRUCTOR
  private int counter = 0, end = 0;
  public UpOrDownCounter(int start, int end) throws IllegalArgumentException {
    if (start == end) throw new IllegalArgumentException("'start' er lik 'end'");
    this.counter = start;
    this.end = end;
  }
  // METHODS
  public void countDown() {
    if (counter > 0) counter--;
  }
  public boolean count() {
    if (this.counter > this.end) {
      counter--;
    } else if (this.counter < this.end)  {
      counter++;
    }
    return !(this.counter == this.end);
  }
  public int getCounter() {
    return this.counter;
  }

  // MAIN
  public static void main(String[] args) {
    UpOrDownCounter udc = new UpOrDownCounter(5,2);
    System.out.printf("Telleren er %s, ", udc.getCounter());
    System.out.println(udc.counter == udc.end);
    while (udc.count()) {
      System.out.printf("Telleren er %s, ", udc.getCounter());
      System.out.println(udc.counter == udc.end);
    }
    System.out.printf("Telleren er %s, ", udc.getCounter());
    System.out.println(udc.counter == udc.end);
  }
}
