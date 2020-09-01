package patterns.delegation.office;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.BinaryOperator;
import java.util.Random;
public class Manager implements Employee{
	private Collection<Employee> employees;
	private int taskCount = 0, resourceCount = 1;
	public Manager (Collection<Employee> employees) throws IllegalArgumentException {
		if (employees.isEmpty()) throw new IllegalArgumentException("Employees er tom!");
		this.employees = employees;
		employees.forEach (e -> this.resourceCount += e.getResourceCount());
	}
	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		this.taskCount++;
        Iterator<Employee> it = employees.iterator(); 
        while (it.hasNext()) {        	
        	int rnd = new Random().nextInt(employees.size());
        	Employee e = (Employee) it.next();
        	if (rnd == 0) {        		
        		e.doCalculations(operation, value1, value2);
        		break;
        	}
        	if (!it.hasNext()) {
        		e.doCalculations(operation, value1, value2);
        		break;
        	}
        }
		return operation.apply(value1,value2);
	}
	@Override
	public void printDocument(String document) {
		this.taskCount++;
		Iterator<Employee> it = employees.iterator(); 
		while (it.hasNext()) {        	
        	int rnd = new Random().nextInt(employees.size());
        	Employee e = (Employee) it.next();
        	if (rnd == 0) {        		
        		e.printDocument(document);
        		break;
        	}
        	if (!it.hasNext()) {
        		e.printDocument(document);
        		break;
        	}
        }
	}
	@Override
	public int getTaskCount() { return this.taskCount; }
	@Override
	public int getResourceCount() { return this.resourceCount; }
	
	public static void main(String[] args) {
		Printer printer = new Printer();
		Clerk clerk = new Clerk(printer);
		Clerk clerk2 = new Clerk(printer);
		Clerk clerk3 = new Clerk(printer);
		Clerk clerk4 = new Clerk(printer);
		Manager manager = new Manager(Arrays.asList(clerk,clerk2,clerk3,clerk4));
		manager.printDocument("Manager: Doc1");
		manager.printDocument("Manager: Doc2");
		System.out.println("manager:");
		System.out.println(manager.getTaskCount() + "/" + manager.getResourceCount());
		
		Manager topManager = new Manager(Arrays.asList(manager));
		topManager.printDocument("topManager: Doc3");
		topManager.printDocument("topManager: Doc4");
		System.out.println("topmanager:");
		System.out.println(topManager.getTaskCount() + "/" + topManager.getResourceCount());
		
		Manager toptopManager = new Manager(Arrays.asList(topManager));
		toptopManager.printDocument("toptopManager: Doc5");
		toptopManager.printDocument("toptopManager: Doc6");
		System.out.println("toptopmanager:");
		System.out.println(toptopManager.getTaskCount() + "/" + toptopManager.getResourceCount());
		
		Manager toptoptopManager = new Manager(Arrays.asList(toptopManager));
		toptoptopManager.printDocument("toptoptopManager: Doc7");
		toptoptopManager.printDocument("toptoptopManager: Doc8");
		System.out.println("toptoptopManager:");
		System.out.println(toptoptopManager.getTaskCount() + "/" + toptoptopManager.getResourceCount());
	}
}
