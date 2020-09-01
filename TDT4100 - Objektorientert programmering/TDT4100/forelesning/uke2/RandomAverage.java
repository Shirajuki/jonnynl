import uke2.*;
import java.util.Random;

public class RandomAverage {
  // CONSTRUCTOR
  DownCounter downCounter;
  Random random;
  Average average;
  // Constructor uten parameter kan sløyfes

  // METHODS
  public double computeRandomAverage(int count) {
    downCounter = new DownCounter(count);
    random = new Random();
    average = new Average();
    while (!downCounter.isFinished()) {
      int value = random.nextInt(100);
      average.acceptValue(value);
      downCounter.countDown();
    }
    return average.getAverage();
  }
  // MAIN
  public static void main(String[] args) {
    RandomAverage rndAvg = new RandomAverage();
    double average = rndAvg.computeRandomAverage(10);
    System.out.println(average);
  }
}
