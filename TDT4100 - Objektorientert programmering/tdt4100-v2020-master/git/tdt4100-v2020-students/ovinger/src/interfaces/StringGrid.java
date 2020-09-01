package interfaces;

/*
An interface with methods for managing the content of a String grid.
The grid has a number of rows (the grid's height) and columns (the grid's width).
In each cell in the grid there is a String that can be set with the setElement method and read with the getElement method.
*/
 public interface StringGrid extends Iterable<String> {
    // Returns the number of rows in this StringGrid
    public int getRowCount();
    // Returns the number of columns in this StringGrid
    public int getColumnCount();
    // Returns the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range
    public String getElement(int row, int column);
    // Sets the String at the given row and column. Throws an IllegalArgumentException if the row or column is out of range
    public void setElement(int row, int column, String element);
    public static void main(String[] args) {
    	StringGrid grid = new StringGridImpl(2,3); // her initialiseres stringGrid
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
