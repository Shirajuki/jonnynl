package encapsulation;

public class Nim {
	private int[] pile = new int[3];
	private boolean gameOver = false;
	// Constructor
	public Nim(int pileSize) throws IllegalArgumentException {
		for (int i = 0; i < this.pile.length; i++) {
			this.pile[i] = pileSize;
		}
	}
	public Nim() {
		for (int i = 0; i < this.pile.length; i++) {
			this.pile[i] = 10;
		}
    }
	// Private methods
	public int getPile(int targetPile) {
		return this.pile[targetPile];
	}
	public void removePieces(int number, int targetPile) throws IllegalArgumentException, IllegalStateException {
		if (!isGameOver()) {
			if (isValidMove(number, targetPile)) {
				this.pile[targetPile] = this.getPile(targetPile) - 1;         			
			} else {
				throw new IllegalArgumentException("removePieces number < 1");
			}
		} else {
			throw new IllegalStateException("removePieces gameOver");
		}


	}
	// Public methods
	public boolean isValidMove(int number, int targetPile) {
		return (isGameOver() && number >= 1 && targetPile >= 0 && targetPile < 3);
	}
	public boolean isGameOver() {
		return this.gameOver;
	}
	@Override
	public String toString() {
		String s = "";
		for (int i = 0; i < this.pile.length; i++) {
			s += this.pile[i]+" ";
		}
		return s;
	}
	public static void main(String[] args) {
		Nim n = new Nim(5);
		System.out.println(n.getPile(0));
	}
}
