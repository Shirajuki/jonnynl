package patterns.observable;
import java.util.Scanner;
public class ObservableHighscoreListProgram implements ObservableListListener {
	private ObservableHighscoreList ol; 
	public void init(int n) {
		this.ol = new ObservableHighscoreList(n);
		ol.addObservableListListener(this);
	}
	public void run() {
		 Scanner input = new Scanner(System.in);  // Create a Scanner object
		 while (true) {
		 	System.out.println("Enter one or two integers separated by space (first integer -1 to exit): ");
		 	String n = input.nextLine();  // Read user input
		 	String[] nl = n.split(" ");
		 	
		 	if (nl.length > 2) {
		 		System.out.println("Error input!");
		 		break;
		 	}
		 	if (nl[0].equals("-1")) break;
		 	if (nl.length == 1) {
		 		ol.addElement(Integer.parseInt(nl[0]));
		 	} else {
		 		ol.addElement(Integer.parseInt(nl[0]), Integer.parseInt(nl[1]));
		 		System.out.println(nl[0]+" "+nl[1]);
		 	}
		 }
	}
	public void run2() {
		Scanner input = new Scanner(System.in);  // Create a Scanner object
		while (true) {
			System.out.println("Enter an integer (-1 to exit): ");
			int n = input.nextInt();  // Read user input
		 	if (n == -1) break;
		 	ol.addResult(n);		 	
		 }
	}
	@Override
	public void listChanged(ObservableList ol, int pos) {
		System.out.println(pos);
		String elements = "Result:\n";
		for (int i = 0; i < ol.size(); i++) {
			elements += Integer.toString((Integer) ol.getElement(i))+"\n";
		}
		System.out.println(elements);
		
	}
	public static void main(String[] args) {
		ObservableHighscoreListProgram p = new ObservableHighscoreListProgram();
		p.init(3);
		//p.run();
		p.run2();
	}
}
