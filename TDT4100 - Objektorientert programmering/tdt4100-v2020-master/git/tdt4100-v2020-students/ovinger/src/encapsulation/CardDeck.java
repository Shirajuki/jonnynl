package encapsulation;
import java.util.ArrayList;
import java.util.List;

import encapsulation.Card;
public class CardDeck {
	private List<Card> cards = new ArrayList<Card>();
	private char[] suitList = {'S','H','D','C'};
	public CardDeck(int n) {
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < n; j++) {
				this.cards.add(new Card(suitList[i],j+1));
			}
		}
		
	}
	public int getCardCount() {
		return this.cards.size();
	}
	public Card getCard(int n) throws IllegalArgumentException {
		if (n >= this.getCardCount()) {			
			throw new IllegalArgumentException("Invalid n parameter given!");
		} else {
			return this.cards.get(n);
		}
	}
	private int mod(int order,int modTo) {
		int k = 1;
		while (Math.pow(order,k) % modTo != 1) {
			k++;
		}
		return k;
	}
	public void shufflePerfectly() {
		int halfSize = getCardCount()/2;
		List<Card> copyArr, top, bottom;
		int index = 1;
		//{2,3,10,4,20,11,18,5,12,12,14,23,8}
		// endre tall 1 med mod(2,getCardCount()-1) for neste oppgave i think.
		for (int i = 0; i < 1; i++) {
			index = 1;
			copyArr = new ArrayList<Card>(this.cards);
			top = copyArr.subList(1, halfSize);
			bottom = copyArr.subList(halfSize, getCardCount()-1);
			for (int j = 0; j < halfSize-1; j++) {
				this.cards.set(index, bottom.get(j));
				index++;
				this.cards.set(index, top.get(j));
				index++;
			}
			//System.out.println(cards);
		}
	}
	public static void main(String[] args) {
		CardDeck cd = new CardDeck(13);
		System.out.println(cd.getCardCount());
		cd.shufflePerfectly();
	}

}
