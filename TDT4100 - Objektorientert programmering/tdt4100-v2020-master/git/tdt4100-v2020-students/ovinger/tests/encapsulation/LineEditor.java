package encapsulation;
public class LineEditor {
  // CONSTRUCTOR
  private String text = "";
  private int insertionIndex = 0;

  // PUBLIC METHODS
  public void left() {
    if (this.insertionIndex > 0) this.insertionIndex--;
  }
  public void right() {
    if (this.insertionIndex < text.length()) this.insertionIndex++;
  }
  public void insertString(String s) {
    this.text = this.text.substring(0,this.insertionIndex) + s + this.text.substring(this.insertionIndex,this.text.length());
    for (int i = 0; i < s.length(); i++) {
      this.right();
    }
  }
  public void deleteLeft() {
    if (this.insertionIndex > 0) {
      this.text = this.text.substring(0,this.insertionIndex-1) + this.text.substring(this.insertionIndex,this.text.length());
      this.left();
    }
  }
  public void deleteRight() {
    if (this.insertionIndex < text.length()) this.text = this.text.substring(0,this.insertionIndex) + this.text.substring(this.insertionIndex+1,this.text.length());
  }
  public String getText() {
    return this.text;
  }
  public void setText(String s) {
    this.text = s;
    this.insertionIndex = 0;
  }
  public int getInsertionIndex() {
    return this.insertionIndex;
  }
  public void setInsertionIndex(int i) throws IllegalArgumentException {
    if (i < 0 || i > this.text.length()) throw new IllegalArgumentException("Wrong placement!");
    this.insertionIndex = i;
  }
  public String toString() {
    return this.text.substring(0,this.insertionIndex) + "|" + this.text.substring(this.insertionIndex,this.text.length());
  }
  // MAIN
  public static void main(String[] args) {
    LineEditor le = new LineEditor();
    le.setText("Java");
    System.out.printf("%s\n", le.toString());
    le.right();
    le.right();
    le.right();
    System.out.printf("%s\n", le.toString());
    le.deleteLeft();
    System.out.printf("%s\n", le.toString());
    le.right();
    le.right();
    le.left();
    le.left();
    System.out.printf("%s\n", le.toString());
    le.insertString("123");
    System.out.printf("%s\n", le.toString());
    le.deleteRight();
    System.out.printf("%s\n", le.toString());
    le.deleteRight();
    le.deleteRight();
    System.out.printf("%s\n", le.getInsertionIndex());
    System.out.printf("%s\n", le.toString());
    le.setInsertionIndex(1);
    le.deleteLeft();
    le.deleteLeft();
    System.out.printf("%s\n", le.toString());
  }
}
