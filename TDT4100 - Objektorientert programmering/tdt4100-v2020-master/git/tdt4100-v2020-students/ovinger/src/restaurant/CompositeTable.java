package restaurant;

/**
 * A table that consists of other tables.
 */
public class CompositeTable extends Table { // TODO
	private int capacity, lostCapacity;
	private Table table1, table2;
	public CompositeTable(Table table1, Table table2, int lostCapacity) {
		this.table1 = table1;
		this.table2 = table2;
		this.lostCapacity = lostCapacity;
	}
	@Override
	public int getCapacity() {
		return this.capacity;
	}
	public Table getTable1() { return this.table1; }
	public void setTable1(Table t) { this.table1 = t; }
	public Table getTable2() { return this.table2; }
	public void setTable2(Table t) { this.table2 = t; }
	
	public int getLostCapacity() { return this.lostCapacity; }
	public void setLostCapacity(int c) { this.lostCapacity = c; }
}
