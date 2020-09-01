package debugging;

import java.util.Random;

public class CoffeeCupProgram {

	private CoffeeCup cup;
	private Random r;
	
	public void init(){
		cup = new CoffeeCup();
		r = new Random(123456789L);
	}
	
	public void run(){
		//part1();
		part2();
	}
	
	private void part1(){
		cup.increaseCupSize(40.0);
		cup.fillCoffee(20.5);
		cup.drinkCoffee(Math.floor(r.nextDouble()*20.5)); // -13
		cup.fillCoffee(32.5);
		cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9)); // -18
		cup.drinkCoffee(Math.ceil(r.nextDouble()*42)); // -17
		cup.increaseCupSize(17);
		//ERROR DOWN HERE: capacity: 57.0 && currentVolume: 5.0
		cup.drinkCoffee(40); // -40.0
		cup.drinkCoffee(Math.ceil(r.nextDouble()*42)); // -38
		cup.drinkCoffee(Math.floor(r.nextDouble()*20.5)); // -15
		cup.fillCoffee(32.5);
		cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9)); // -14
		cup.drinkCoffee(Math.ceil(r.nextDouble()*42)); // -20
		cup.increaseCupSize(17);
	}
	
	private void part2(){
		cup = new CoffeeCup(40.0, 20.5);
		//capacity: 40.0 && currentVolume: 20.5
		r = new Random(987654321L);
		cup.drinkCoffee(Math.floor(r.nextDouble()*20.5)); // -6 => currentVolume: 14.5
		cup.fillCoffee(Math.floor(r.nextDouble()*30)); // +24 => currentVolume: 38.5
		cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9)); // -2 => currentVolume: 36.5
		cup.drinkCoffee(Math.ceil(r.nextDouble()*42)); // -30 => currentVolume: 6.5
		cup.increaseCupSize(Math.floor(r.nextDouble()*26)); // +0 => capacity: 40
		// ERROR DOWN HERE: capacity: 40.0 && currentVolume: 6.5
		// IllegalArgumentException
		cup.fillCoffee(Math.ceil(r.nextDouble()*59)); // +40
		cup.drinkCoffee(Math.ceil(r.nextDouble()*42)); // -1
		cup.increaseCupSize(Math.floor(r.nextDouble()*35)); // +3
		cup.fillCoffee(Math.floor(r.nextDouble()*30)); // +29
		cup.increaseCupSize(Math.floor(r.nextDouble()*26)); // +8
	}
	
	
	public static void main(String[] args) {
		CoffeeCupProgram program = new CoffeeCupProgram();
		program.init();
		program.run();
	}

}
