package ord2016;

import java.util.*;
public class Person implements Iterable<Person> {
//	... fields for name, gender, mother and father ...
	private final String name;
	private Gender gender;
	private Person father, mother;
	private Collection<Person> children = new ArrayList<>();
//	... constructor ...
	public Person(String name) {
		this.name = name;
	}
//	... methods for name, gender, mother and father ...
	public Gender getGender() {
		return this.gender;
	}
	public void setGender(Gender g) {
		this.gender = g;
	}
	private void setMother(Person p) { this.mother = p; }
	public Person getMother() { return this.mother; }
	private void setFather(Person p) { this.father = p; }
	public Person getFather() { return this.father; }
	public void setParent(Person p) {
		if (p.getGender().toString().equals("male")) {
			if (this.getFather() != null) {
				this.getFather().removeChild(this);
			}
			setFather(p);
		} else if (p.getGender().toString().equals("female")) {
			if (this.getMother() != null) {
				this.getMother().removeChild(this);
			}
			setMother(p);
		}
	}
//	... field(s) for children ...
	/**
	 * @return the number of children of this Person
	 */
	public int getChildCount() {
		return this.children.size();
	}
	/**
	 * @param child
	 * @return if this Person has the provided Person as a child
	 */
	public boolean hasChild(Person child) {
		return this.children.stream()
							.anyMatch(p -> p == child);
	}
	/**
	 * Returns all children of this Person with the provided Gender.
	 * If gender is null, all children are returned.
	 * Can be used to get all daughters or sons of a person.
	 * @param gender
	 */
	public Collection<Person> getChildren(Gender gender) {
		Collection<Person> childs = new ArrayList<>();
		for (Person person : children) {
			if (gender == null || person.getGender() == gender) {
				childs.add(person);
			}
		}
		return childs;
	}
	/**
	 * Adds the provided Person as a child of this Person.
	 * Also sets the child's father or mother to this Person,
	 * depending on this Person's gender.
	 * To ensure consistency, if the provided Person already
	 * has a parent of that gender,
	 * it is removed as a child of that parent.
	 * @param child
	 */
	public void addChild(Person child) {
		child.setParent(this);
		this.children.add(child);
	}
	public void removeChild(Person child) {
		if (this.children.contains(child))
			this.children.remove(child);
	}
	@Override
	public Iterator<Person> iterator() {
		return this.children.iterator();
	}
}
