package inheritance;
import java.util.List;
import java.util.ArrayList;
public class Train {
	List<TrainCar> tcArray = new ArrayList<>();
	//- denne metoden skal ta inn en togvogn og knytte den til dette lokomotivet.
	public void addTrainCar(TrainCar tc) {
		tcArray.add(tc);
	}
	//- Sjekker om lokomotivet har TrainCar-argument knyttet til seg.
	public boolean contains(TrainCar tc) {
		for (int i = 0; i < tcArray.size(); i++) {
			if (tcArray.get(i).equals(tc)) {
				return true;
			}
		}
		return false;
	}
	//- returner alle vognene sin totale vekt. Vi tar ikke høyde for lokomotivet sin eventuelle vekt.
	public int getTotalWeight() {
		int totalWeight = 0;
		for (int i = 0; i < tcArray.size(); i++) {
			totalWeight += tcArray.get(i).getTotalWeight();
		}
		return totalWeight;
	}
	//- tilsvarende PassengerCar sin metode, men returnerer antallet for alle vognene.
	public int getPassengerCount() {
		int passangerCount = 0;
		for (int i = 0; i < tcArray.size(); i++) {
			try {
				passangerCount += ((PassengerCar) tcArray.get(i)).getPassengerCount();
			} catch(Exception e) {				
				passangerCount += 0;  
			}
		}
		return passangerCount;
	}
	//- tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene.
	public int getCargoWeight() {
		int totalWeight = 0;
		for (int i = 0; i < tcArray.size(); i++) {
			try {
				totalWeight += ((CargoCar) tcArray.get(i)).getCargoWeight();
			} catch(Exception e) {				
				totalWeight += 0;  
			}
		}
		return totalWeight;
	}
	//- toString-metoden skal sette sammen en String med oversikt over alle vognene som er knyttet til den. 
	// For hver vogn skal vogntype og totalvekt være med. 
	// Passasjervogner skal i tillegg ha med antall passasjerer og lastevogner skal ha med hvor mye lasten veier.
	public String toString() {
		String s = "";
		for (int i = 0; i < tcArray.size(); i++) {
			s += tcArray.get(i).toString()+"\n";
		}
		return s;
	}
}
