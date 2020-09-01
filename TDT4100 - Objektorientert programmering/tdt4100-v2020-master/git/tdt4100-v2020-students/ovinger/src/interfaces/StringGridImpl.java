package interfaces;

import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;
public class StringGridImpl implements StringGrid {
	private final List<List<String>> grid = new ArrayList<>();
	private final StringGridIterator it;

	public StringGridImpl(int rows, int columnCount) {
		for (int y = 0; y < columnCount; y++) {
			List<String> column = new ArrayList<>();
			for (int x = 0; x < rows; x++) {
				column.add("");
			}
			grid.add(column);
		}
		this.it = new StringGridIterator(this,true);
	}
	// Returns the number of rows in this StringGrid
    public int getRowCount() {
    	if (this.grid.size() > 0) return this.grid.get(0).size();
    	return 0;
    }
    // Returns the number of columns in this StringGrid
    public int getColumnCount() {
    	if (this.grid.size() > 0) return this.grid.size();
    	return 0;
    }
    // Returns the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range
    public String getElement(int row, int column) throws IllegalArgumentException {
    	if (column > this.grid.size()-1 || column < 0 || row < 0 || row > this.grid.get(0).size()-1) throw new IllegalArgumentException("the row or column is out of range!");
    	for (int y = 0; y < this.grid.size(); y++) {
    		for (int x = 0; x < this.grid.get(0).size(); x++) {
    			if (x == row && y == column) return this.grid.get(y).get(x);
    		}
		}
    	return "";
    }
    // Sets the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range    
    public void setElement(int row, int column, String element) {
    	if (column > this.grid.size()-1 || column < 0 || row < 0 || row > this.grid.get(0).size()-1) throw new IllegalArgumentException("the row or column is out of range!");
    	for (int y = 0; y < this.grid.size(); y++) {
    		for (int x = 0; x < this.grid.get(0).size(); x++) {
    			if (x == row && y == column) this.grid.get(y).set(x, element);
    		}
		}
    }
	@Override
	public Iterator<String> iterator() {
		return it;
	}	
}
