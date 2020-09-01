package mypack2;
public class Bin2Dec {
  // CONSTRUCTOR
  String value = "";
  String[] splitted;
  int computed = 0;
  public Bin2Dec() {
    value = "";
    computed = 0;
  }
  // METHODS
  public void setValue(String v) {
    value = v;
    splitted = value.split("");
  }
  public int getComputed() {
    System.out.println("Computing...");
    for (int i = splitted.length-1; i >= 0; i--) {
      computed += Integer.parseInt(splitted[i])*(Math.pow(2,splitted.length-i-1));
    }
    return computed;
  }
  public static void main(String[] args) {
    Bin2Dec b2d = new Bin2Dec();
    String bin = "1110";
    b2d.setValue(bin);
    System.out.println(b2d.getComputed());
  }
}
