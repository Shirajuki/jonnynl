package restaurant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import app.App;

/**
 * A place where groups of guests can buy a meal
 */
public class Restaurant {
	private Collection<Table> tables = new ArrayList<>();
	private Collection<CapacityListener> capacityListeners = new ArrayList<>();
	public int getTableCount() {
		return tables.size();
	}
	public Table getTable(int n) {
		Iterator<Table> it = tables.iterator();
		while (n > 0) {
			it.next();
		}
		return it.next();
	}
	public boolean isOccupied(Table table) { 
		return table.getGroup() != null; 
	}
	/**
	 * Computes the guest capacity,
	 * either the remaining (includeOccupied == false) or total (includeOccupied == true).
	 * @param includeOccupied controls whether to include tables that are occupied.
	 * @return the guest capacity
	 */
	public int getCapacity(boolean includeOccupied) {
		int totalCapacity = tables.stream()
				.filter(t -> isOccupied(t) == includeOccupied)
				.map(Table::getCapacity)
				.reduce((a,b) -> a+b).get();
		return totalCapacity;
	}
	public void addTable(Table table) {
		if (!tables.contains(table))
			tables.add(table);
		this.capacityListeners.stream().forEach(cl -> cl.capacityChanged(this));
	}
	public void removeTable(Table table) throws IllegalArgumentException{
		if (!isOccupied(table)) {
			tables.remove(table);
			this.capacityListeners.stream().forEach(cl -> cl.capacityChanged(this));
		} else {
			throw new IllegalArgumentException("A table is occupied, cannot be removed!");
		}
	}
	/**
	 * Merges two tables, i.e. replaces two tables with one table.
	 * lostCapacity is the difference between the old capacity and the new.
	 * This number is typically positive, since seats are lost when moving two tables close to each other.
	 * @param table1
	 * @param table2
	 * @param lostCapacity
	 * @throws IllegalArgumentException if any of the tables are occupied
	 */
	public void mergeTables(Table table1, Table table2, int lostCapacity) throws IllegalArgumentException {
		if (isOccupied(table1) && isOccupied(table2)) {
			Table ct = new CompositeTable(table1, table2, lostCapacity);
			tables.remove(table1);
			tables.remove(table2);
			tables.add(ct);
		} else {
			throw new IllegalArgumentException("A table is occupied, cannot be merged!"); 
		}
	}
	public void splitTable(CompositeTable table) throws IllegalArgumentException {
		Table t1 = table.getTable1();
		Table t2 = table.getTable2();
		if (isOccupied(t1) || isOccupied(t2))
			throw new IllegalArgumentException("A table is occupied, cannot split tables!");
		tables.remove(table);
		tables.add(t1);
		tables.add(t2);
	}
	// Note that a table cannot be shared among different groups.
	public boolean hasCapacity(Table table, int capacity) {
		if (!isOccupied(table) && table.getCapacity() >= capacity)
			return true;
		return false;
	}
	/**
	 * Returns the tables that has the provided capacity.
	 * The tables should be sorted with the one with the least capacity (but enough) first.
	 * @param capacity
	 * @return the tables that has the provided capacity
	 */
	public List<Table> findAvailableTables(int capacity) {
		List<Table> table = new ArrayList<>(tables);
		Collections.sort(table, (a,b) -> a.getCapacity() - b.getCapacity());
		return table.stream().filter(t -> hasCapacity(t,capacity)).collect(Collectors.toList());	
	}
	/**
	 * Finds a suitable table for the provided group.
	 * The chosen table should be the one with the least capacity.
	 * @param group the group to be seated
	 * @return true if group was seated, false otherwise
	 * @throws IllegalArgumentException if Group already is seated (in this Restaurant)
	 */
	public boolean seatGroup(Group group) throws IllegalArgumentException {
		if (group.getTable() != null)
			throw new IllegalArgumentException("Group is already seated");
		List<Table> availableTables = findAvailableTables(group.getGuestCount());
		if (availableTables.isEmpty())
			return false;
		Table t = availableTables.get(0);
		group.setTable(t);
		t.setGroup(group);
		return true;
	}
	public void removeGroupFromTable(int tableID) {
		Table table = findTable(tableID);
		Group g = table.getGroup();
		if (g != null)
			table.setGroup(null);
	}
	private Table findTable(int tableID) {
		for (Table table : tables) {
			if (isTable(table, tableID)) {
				return table;
			}
		}
		return null;
	}
	private boolean isTable(Table table, int tableID) {
		if (table instanceof SimpleTable) {
			return (((SimpleTable) table).getID() == tableID);
		} else if (table instanceof CompositeTable) {
			CompositeTable comp = (CompositeTable) table;
			if (isTable(comp.getTable1(), tableID) || isTable(comp.getTable2(), tableID)) {
				return true;
			}
		}
		return false;
	}
	public void addCapacityListener(CapacityListener cl) {
		this.capacityListeners.add(cl);
	}
	public void removeCapacityListener(CapacityListener cl) {
		if (this.capacityListeners.contains(cl))
			this.capacityListeners.remove(cl);
	}
	public static void main(final String[] args) {
		Restaurant r = new Restaurant();
		Group g = new Group(10);
		Table t = new SimpleTable(10);
		System.out.println(t.getCapacity());
		r.addTable(t);
		r.seatGroup(g);
		System.out.println(t.getGroup() == g);
		
	}
}
