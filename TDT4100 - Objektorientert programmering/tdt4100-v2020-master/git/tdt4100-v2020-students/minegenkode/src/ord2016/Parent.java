package ord2016;

import java.util.*;

public class Parent implements Relation {

	@Override
	public Collection<Person> getRelativesOf(Person person) {
		Collection<Person> parentRelatives = new ArrayList<>();
		Person father = person.getFather();
		Person mother = person.getMother();
		if (father != null)
			parentRelatives.add(father);
		if (mother != null)
			parentRelatives.add(mother);
		return parentRelatives;
	}

}
