package encapsulation;

public class Card {
	private char suit = '\0';
	private int face = 0;
	public Card(char suit, int face) throws IllegalArgumentException {
		if ("SHDC".indexOf(suit) == -1 || face < 1 || face > 13) throw new IllegalArgumentException("Illegal parameters given");
		this.suit = suit;
		this.face = face;
	}
	public char getSuit() {
		return this.suit;
	}
	public int getFace() {
		return this.face;
	}
	@Override
	public String toString() {
		return (""+suit+face);
	}
}
