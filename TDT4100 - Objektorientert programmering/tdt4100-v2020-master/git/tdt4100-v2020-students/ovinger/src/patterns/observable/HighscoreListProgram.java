package patterns.observable;
import java.util.Scanner;
public class HighscoreListProgram implements HighscoreListListener {
	private HighscoreList hl; 
	//- oppretter en ny HighscoreList og registrerer seg selv (altså HighscoreListProgram-instansen) som lytter
	public void init(int n) {
		this.hl = new HighscoreList(n);
		hl.addHighscoreListListener(this);
	}
	//- leser inn tall (resultater) fra konsollet og legger dem til i listen
	public void run() {
		 Scanner input = new Scanner(System.in);  // Create a Scanner object
		 while (true) {
		 	System.out.println("Enter an integer (-1 to exit): ");
		 	int n = input.nextInt();  // Read user input
		 	if (n == -1) break;
		 	hl.addResult(n);		 	
		 }
	}
	@Override
	//- observerer endringer i HighscoreList-instansen og skriver ut posisjonsargumentet, samt selve listen, til konsollen.
	public void listChanged(HighscoreList hl, int n) {
		for (int i = 0; i < hl.size(); i++) {
			if (hl.getElement(i) == n) System.out.println(n);
		}
		String elements = "Result:\n";
		for (int i = 0; i < hl.size(); i++) {
			elements += Integer.toString(hl.getElement(i))+"\n";
		}
		System.out.println(elements);
		
	}
	public static void main(String[] args) {
		HighscoreListProgram p = new HighscoreListProgram();
		p.init(3);
		p.run();
	}
}
