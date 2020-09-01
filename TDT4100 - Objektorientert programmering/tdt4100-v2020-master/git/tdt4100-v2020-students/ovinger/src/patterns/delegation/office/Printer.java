package patterns.delegation.office;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;

public class Printer {
	private HashMap<Employee, List<String>> printHistory = new HashMap<>();
	private void addNewEmployeeHistory(Employee employee) { this.printHistory.put(employee, new ArrayList<>()); }
	
	//skriver documentet til konsollen og tar vare på dokumentet i employee sin historikk.
	public void printDocument(String document, Employee employee) {
		if (this.printHistory.get(employee) == null) {			
			addNewEmployeeHistory(employee);
		}
		List<String> h = this.printHistory.get(employee);
		h.add(document);
		this.printHistory.put(employee, h);
	}

	//returnerer en List med alle dokumentene som har blitt printet av employee av denne printeren i rekkefølgen de har blitt printet.
	public List<String> getPrintHistory(Employee employee) {
		if (this.printHistory.get(employee) == null) {			
			addNewEmployeeHistory(employee);
		}
		return this.printHistory.get(employee);
	}
}
