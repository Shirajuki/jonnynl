package inheritance;

public class TrainCar {
	private int deadWeight;
	
	public TrainCar(int deadWeight) {
		this.deadWeight = deadWeight;		
	}
	public int getTotalWeight() { return this.deadWeight; }
	public void setDeadWeight(int w) { this.deadWeight = w; }
	public int getDeadWeight() { return this.deadWeight; }
	@Override
	public String toString() { return "Type: TrainCar, TotalWeight: "+this.getTotalWeight();}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}

}
