package inheritance;

public class PassengerCar extends TrainCar{
	private int deadWeight,passengerCount;
	final private int WEIGHT = 80; 
	public PassengerCar(int deadWeight, int passengerCount) {
		super(deadWeight);
		this.deadWeight = deadWeight;
		this.passengerCount = passengerCount;
	}
	@Override
	public int getTotalWeight() { return this.deadWeight + this.passengerCount*this.WEIGHT; }
	@Override
	public void setDeadWeight(int w) { this.deadWeight = w; }
	@Override
	public int getDeadWeight() { return this.deadWeight; }
	public void setPassengerCount(int p) { this.passengerCount = p; }
	public int getPassengerCount() { return this.passengerCount; }
	@Override
	public String toString() { return "Type: PassengerCar, TotalWeight: "+this.getTotalWeight()+" PassengerCount: "+getPassengerCount();}

}
