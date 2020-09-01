package objectstructures;

import java.util.ArrayList;
import java.util.List;

import objectstructures.Card;
public class CardHand {
	private List<Card> cards = new ArrayList<Card>();
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
	public void addCard(Card card) {
		this.cards.add(card);
	}
	public Card play(int n) {
		Card card = this.cards.get(n);
		this.cards.remove(n);
		return card;
	}
}
