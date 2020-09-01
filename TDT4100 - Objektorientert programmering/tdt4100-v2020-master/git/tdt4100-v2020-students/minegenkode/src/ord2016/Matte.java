package ord2016;

/**
 * This class represents the gender of a Person.
 * It cannot be instantiated outside this class.
 * It provides all legal Gender values as static variables.
 */
public class Gender {
	... String label;
	... Gender(String label) {
		this.label = label;
	}
	@Override
	public String toString() {
		return label;
	}
	public static Gender
	MALE = new Gender("male"),
	FEMALE = new Gender("female");
	/**
	 * Returns a pre-existing Gender instance for the provided label, or
	 * null of there is no such instance.
	 * @param label
	 * @return a pre-existing Gender instance
	 */
	... Gender valueOf(String label) {
		...
	}
}