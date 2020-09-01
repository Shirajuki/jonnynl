package inheritance;

public class CargoCar extends TrainCar{
	private int deadWeight,cargoWeight;
	public CargoCar(int deadWeight, int cargoWeight) {
		super(deadWeight);
		this.deadWeight = deadWeight;
		this.cargoWeight = cargoWeight;
	}
	@Override
	public int getTotalWeight() { return this.deadWeight + this.cargoWeight; }
	@Override
	public void setDeadWeight(int w) { this.deadWeight = w; }
	@Override
	public int getDeadWeight() { return this.deadWeight; }
	public void setCargoWeight(int w) { this.cargoWeight = w; }
	public int getCargoWeight() { return this.cargoWeight; }
	@Override
	public String toString() { return "Type: CargoCar, TotalWeight: "+this.getTotalWeight()+" CargoWeight: "+getCargoWeight();}
}
