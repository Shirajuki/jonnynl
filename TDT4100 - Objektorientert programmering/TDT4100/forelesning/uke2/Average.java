package uke2;
public class Average {
  // CONSTRUCTOR
  int valueCount = 0;
  double sum = 0;
  //// Constructor uten parameter kan sløyfes
  // public Average() {
  //   valueCount = 0;
  //   sum = 0;
  // }

  // METHODS
  public void acceptValue(double value) {
    sum += value;
    valueCount++;
  }
  public double getAverage() {
    return (valueCount > 0) ? sum / valueCount : 0;
  }
  // MAIN
  public static void main(String[] args) {
    Average avg = new Average();
    System.out.println(avg.getAverage());
    avg.acceptValue(3);
    avg.acceptValue(4);
    System.out.println(avg.getAverage());
  }
}
