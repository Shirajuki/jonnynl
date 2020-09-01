package restaurant;

/**
 * A group (of people) dining together, and should be seated at the same table.
 */
public class Group {
	private Table table;
	private int guestCount;
	
	public Group(int guestCount) {
		this.guestCount = guestCount;
	}
	public void setGuestCount(int c) {
		this.guestCount = c;
		if (this.table != null)
			if (this.table.getCapacity() < c)
				this.setTable(null);
	}
	public int getGuestCount() {
		return this.guestCount;
	}
	public void setTable(Table table) {
		this.table = table;
	}
	public Table getTable() {
		return this.table;
	}
}
