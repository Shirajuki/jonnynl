package ord2016;

import java.util.*;
public class Sister implements Relation {
	@Override
	public Collection<Person> getRelativesOf(Person person) {
		Collection<Person> sisterRelatives = new ArrayList<>(); 
		for (Person p : person.getFather()) {
			if (p != person && p.getGender().toString().equals("female"))
				sisterRelatives.add(p);
		}
		for (Person p : person.getMother()) {
			if (p != person && p.getGender().toString().equals("female") && !sisterRelatives.contains(p))
				sisterRelatives.add(p);
		}
		return sisterRelatives;
	}
	
}
