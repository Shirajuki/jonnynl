package interfaces;
import java.util.Iterator;
public class StringGridIterator implements Iterator<String> {
	private boolean rowMajor = true;
	private StringGrid g;
	private int currIndexColumn = 0, currIndexRow = 0;
	public StringGridIterator(StringGrid g, boolean rowMajor) {
		this.g = g;
		this.rowMajor = rowMajor;
	}
	@Override
	public boolean hasNext() {
		return currIndexColumn < g.getColumnCount() && currIndexRow < g.getRowCount() && g.getElement(currIndexRow, currIndexColumn) != null;
	}
	@Override
	public String next() {
		String e = g.getElement(currIndexRow, currIndexColumn);
		if (!this.rowMajor) {			
			this.currIndexRow++;
			if (this.currIndexRow >= g.getRowCount()) {
				this.currIndexRow = 0;
				this.currIndexColumn++;
			}
		} else {
			this.currIndexColumn++;
			if (this.currIndexColumn >= g.getColumnCount()) {
				this.currIndexColumn = 0;
				this.currIndexRow++;
			}
		}
		return e;
	}
	public void remove() {
		throw new UnsupportedOperationException();	
	}
	public static void main(String[] args) {
		StringGrid grid = new StringGridImpl(2,3); // her initialiseres stringGrid
		StringGridIterator gridIterator = new StringGridIterator(grid, true);
    	grid.setElement(0, 0, "0, 0");
    	grid.setElement(0, 1, "0, 1"); 
    	grid.setElement(0, 2, "0, 2");
    	grid.setElement(1, 0, "1, 0"); 
    	grid.setElement(1, 1, "1, 1");
    	grid.setElement(1, 2, "1, 2");
    	// gå gjennom alle elementene i stringGrid
    	for (String s: grid) {
    		System.out.println(s);
    	}
	}
}
