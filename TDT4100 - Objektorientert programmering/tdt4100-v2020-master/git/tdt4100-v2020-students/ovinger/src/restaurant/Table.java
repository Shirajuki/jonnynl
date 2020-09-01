package restaurant;

public abstract class Table {
	private Group group;
	abstract int getCapacity();
	public Group getGroup() {
		return this.group;
	}
	// Compare sort
	public void setGroup(Group group) throws IllegalArgumentException {
		if (this.getCapacity() >= group.getGuestCount()) {			
			this.group = group;
		} else {
			System.out.println(this.getCapacity() +"-"+ group.getGuestCount());
			throw new IllegalArgumentException("Table doesn't have enough capacity for the group");
		}
	}
}
