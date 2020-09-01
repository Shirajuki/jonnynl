package restaurant;

public class SimpleTable extends Table {// TODO
	private int capacity;
	private static int staticID;
	private int ID;
	public SimpleTable(int capacity) {
		this.capacity = capacity;
		this.staticID += 1;
		this.ID = this.staticID;
	}
	@Override
	public int getCapacity() {
		return this.capacity;
	}
	public int getID() {
		return this.ID;
	}
	public static void main(String[] args) {
		SimpleTable st = new SimpleTable(10);
		SimpleTable st2 = new SimpleTable(10);
		System.out.println(st.getID());
		System.out.println(st2.getID());
	}
}
	