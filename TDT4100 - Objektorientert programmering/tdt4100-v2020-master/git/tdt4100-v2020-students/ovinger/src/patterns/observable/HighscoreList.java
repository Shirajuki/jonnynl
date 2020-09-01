package patterns.observable;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

final class reverseSort implements Comparator<Integer>  { 
	@Override
	public int compare(Integer a, Integer b) { 
        return a - b; 
    }
} 
public class HighscoreList {
	private int maxSize;
	private List<Integer> results = new ArrayList<>();
	private List<HighscoreListListener> highscoreListListener = new ArrayList<>();
	//- konstruktøren tar inn maks antall resultater som lista skal kunne holde. Denne verdien må brukes av addResult, slik at resultater som er for dårlige kastes.
	public HighscoreList(int maxSize) {
		this.maxSize = maxSize;
	}
	//- returnerer antall elementer i lista, som altså aldri skal overstige maks-antallet
	public int size() { return this.results.size(); }
	//- returnerer resultatet i posisjonen angitt av argumentet
	public int getElement(int i) {
		return this.results.get(i);
	}
	//- registrere et nytt resultat, og dersom resultatet er godt nok til å komme med på lista, så legges det inn på riktig plass. Dersom lista blir for lang, så må dårligste resultat kastes. Alle registrerte lyttere må få beskjed om en evt. endring av lista, inkludert på hvilken posisjon som ble endret.
	public void addResult(int n) {
		this.results.add(n);
		Collections.sort(results, new reverseSort());
		if (this.results.size() > maxSize) this.results.remove(this.results.size()-1);
		for (HighscoreListListener hl: highscoreListListener) {
			for (int i = 0; i < this.results.size(); i++) {				
				if (this.results.get(i) == n) hl.listChanged(this, i);
			}
		}
	}
	//- registrerer en ny lytter
	public void addHighscoreListListener(HighscoreListListener hl) {
		highscoreListListener.add(hl);
	}
	//- fjerner en tidligere registrert lytter
	public void removeHighscoreListListener(HighscoreListListener hl) {
		highscoreListListener.remove(hl);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
