import mypack2.Bin2Dec;
public class MyClass {
  public static void main(String[] args) {
    System.out.println("Hello world");
    // This is a comment.
    /*
    Multi-line comment
    */
    String name = "John";
    System.out.println(name);

    int myNum = 1;
    System.out.println(myNum);

    int myNum2;
    myNum2 = 15;
    System.out.println(myNum2);

    final int myNum3 = 15; // CONSTANT
    // myNum = 20;  // will generate an error: cannot assign a value to a final variable

    int myNum4 = 5;
    float myFloatNum = 5.99f;
    char myLetter = 'D';
    boolean myBool = true;
    String myText = "Hello";

    String firstName = "John";
    String lastName = "Doe";
    final String fullName = firstName+" "+lastName;
    System.out.println(fullName);

    int x = 5;
    int y = 6;
    System.out.println(x + y); // Print the value of x + y

    int x1 = 5, y1 = 6, z1 = 50;
    System.out.println(x1 + y1 + z1);

    Bin2Dec b2d = new Bin2Dec();
    b2d.setValue("1001");
    System.out.println(b2d.getComputed());

    // Slow but, lazy method
    var Hello = "yo";
    System.out.println(Hello);
  }
}
