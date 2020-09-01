package encapsulation;

public class Vehicle {
	private final char[] VEHICLE_TYPES_ARRAY = {'M', 'C'};
	private final char[] FUEL_TYPES_ARRAY = {'H', 'E', 'D', 'G'};
	private final char[] EXCLUDED_CHARS = {'Æ','Ø','Å'};
	private final char[] EXCLUDED_NUMBERS = {'1','2','3','4','5','6','7','8','9','0'};
	private final String[] EXCLUDED_STRINGS = {"HY","EK","EL"};
	private char vehicleType;
	private char fuelType;
	private String registrationNumber = "";

	public Vehicle(char v, char f, String r) throws IllegalArgumentException {
		if (!this.validVehicle(v,f,r)) throw new IllegalArgumentException("Invalid vehicle!");
		this.vehicleType = v;
		this.fuelType = f;
		this.registrationNumber = r;
	}
	// PRIVATE METHODS
	private Boolean validCharInChars(char c, char[] chars) {
		Boolean b = false;
		for (int i = 0; i < chars.length; i++) {
			if (c == chars[i]) b = true;
		}
		return b;
	}
	private Boolean isSubstringsInString(int start, int end, String string, String[] subs) {
		Boolean b = false;
		for (int i = 0; i < subs.length; i++) {
			if (string.substring(start,end).equals(subs[i])) b = true;
		}
		return b;
	}
	private Boolean isCharsInString(String string, char[] chars) {
		Boolean b = false;
		for (int i = 0; i < chars.length; i++) {
			if (string.indexOf(chars[i]) != -1) b = true;
		}
		return b;
	}
	private Boolean isNumeric(String sNum) {
		try {
			int i = Integer.parseInt(sNum);
		} catch (NumberFormatException efn) {
			return false;
		}
		return true;
	}
	private Boolean validRegistrationNumber(char v, char f, String r) {
		if (r.equals(r.toUpperCase())) { // Bare store bokstaver
			Boolean b = true;
			if (f == 'E' && !(r.substring(0,2).equals("EL") || r.substring(0,2).equals("EK"))) { // E kjøretøy
				b = false;
				System.out.println("1");
			}
			if (f == 'H' && v == 'C' && !r.substring(0,2).equals("HY")) { // Hydrogenbiler
				b = false;
				System.out.println("2");
			}
			if (f == 'H' && v == 'M' && r.substring(0,2).equals("HY")) { // Hydrogen motorsykkel??
				b = false;
				System.out.println("2");
			}
			System.out.println(this.isCharsInString(r,EXCLUDED_CHARS));
			System.out.println(this.isSubstringsInString(0,2,r,EXCLUDED_STRINGS));
			if ((f == 'D' || f == 'G') && (this.isSubstringsInString(0,2,r,EXCLUDED_STRINGS) || this.isCharsInString(r,EXCLUDED_CHARS))) { // Diesel og Bensin
				b = false;
				System.out.println("3");
			}
			if (v == 'M') { // Motorsykkelsjekk
				if (r.length() != 2+4) {
					b = false;
				} else if (!this.isNumeric(r.substring(2,2+4)) || this.isNumeric(r.substring(0,1)) || this.isNumeric(r.substring(1,2))) {
					b = false;
				}
			}
			if (v == 'C') { // Bilsjekk
				if (r.length() != 2+5) {
					b = false;
				} else if (!this.isNumeric(r.substring(2,2+5)) || this.isNumeric(r.substring(0,1)) || this.isNumeric(r.substring(1,2))) {
					b = false;
				}
			}
			return b;
		}
		return false;
	}
	private Boolean validVehicle(char v, char f, String r) {
		if (r.length() > 2+5) return false;
		else if (this.validCharInChars(v,VEHICLE_TYPES_ARRAY) && this.validCharInChars(f,FUEL_TYPES_ARRAY)) {
			if (this.validRegistrationNumber(v,f,r)) return true;
		}
		return false;
	}

	// PUBLIC METHODS
	public char getFuelType() {
		return this.fuelType;
	}
	public String getRegistrationNumber() {
		return this.registrationNumber;
	}
	public void setRegistrationNumber(String r) throws IllegalArgumentException {
		if (!validRegistrationNumber(this.vehicleType,this.fuelType,r)) throw new IllegalArgumentException("Invalid registration number!");
		this.registrationNumber = r;
	}
	public char getVehicleType() {
		return this.vehicleType;
	}
	public static void main(String[] args) {
		Vehicle v = new Vehicle('C', 'G', "AÆ21234");
		//v.setRegistrationNumber("HY5433");
		System.out.println(v.getFuelType());
		System.out.println(v.getVehicleType());
		System.out.println(v.getRegistrationNumber());
	}

}
