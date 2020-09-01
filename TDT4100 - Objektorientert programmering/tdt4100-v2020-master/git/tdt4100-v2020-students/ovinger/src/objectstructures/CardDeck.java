package objectstructures;
import java.util.ArrayList;
import java.util.List;

import objectstructures.Card;
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
	public void shufflePerfectly2() {
		int halfSize = getCardCount()/2;
		List<Card> copyArr, top, bottom;
		int index = 1;
		// endre tall index = 1 med mod(2,getCardCount()-1) for neste oppgave i think, og loop...
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
			//System.out.print(this.cards);
		}
	}
	public void shufflePerfectly() {
		int halfSize = getCardCount()/2;
		List<Card> newArr = new ArrayList<>();
		for (int i = 0; i < halfSize; i++) {
			newArr.add(this.cards.get(i));
			newArr.add(this.cards.get(halfSize+i));
		}
		this.cards = newArr;
		//System.out.print(newArr+"\n");
	}
	public void deal(CardHand Ch, int n) {
		for (int i = 0; i < n; i++) {
			int size = this.cards.size();
			if (size <= 0) break;
			Ch.addCard(this.cards.get(size - 1));
			this.cards.remove(size - 1);
		}
	}
	public static void main(String[] args) {
		CardDeck cd = new CardDeck(13);
		System.out.println(cd.getCardCount());
		cd.shufflePerfectly();
	}

}
