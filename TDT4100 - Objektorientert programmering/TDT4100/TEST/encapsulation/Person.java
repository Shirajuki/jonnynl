package encapsulation;

import java.util.Date;
public class Person {
	private final String[] COUNTRY_CODE = {"ad", "ae", "af", "ag", "ai", "al", "am", "ao", "aq", "ar", "as", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bl", "bm", "bn", "bo", "bq", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "eh", "er", "es", "et", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mf", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "ss", "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "ye", "yt", "za", "zm", "zw"};
	private final String VALID_NAME_CHARS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	private final String VALID_DOMAIN_CHARS = "abcdefghijklmnopqrstuvwxyz0123456789";
	private String firstname = "", lastname = "", email = "",  = "", gender = "";
	// public Person() throws IllegalArgumentException {
	//
	// }
	// PRIVATE METHODS
	private Boolean isNumeric(String sNum) {
		try {
			int i = Integer.parseInt(sNum);
		} catch (NumberFormatException efn) {
			return false;
		}
		return true;
	}
	private Boolean validCharsInString(String s, String chars) {
		for (int i = 0; i < s.length(); i++) {
			if (chars.indexOf(s.substring(i,i+1)) == -1) return false;
		}
		return true;
	}
	private Boolean validName(String firstname, String lastname) {
		if (!this.validCharsInString(firstname, this.VALID_NAME_CHARS) || !this.validCharsInString(firstname, this.VALID_NAME_CHARS)) return false;
		return true;
	}
	private Boolean isStringInStrings(String s, String[] sArr) {
		for (int i = 0; i < sArr.length; i++) {
			if (sArr[i].equals(s)) return true;
		}
		return false;
	}
	private Boolean validEmail(String mail) {
		if (mail == null) {
				return true;
		} else {
			String[] splittedEmail = mail.split("\\.");
			if (splittedEmail.length == 3) {
				String[] domainSplit = splittedEmail[1].split("@");
				if (domainSplit.length == 2) {
					// System.out.printf("%s %s %s %s %s\n",splittedEmail[0].equals(this.firstname) , domainSplit[0].equals(this.lastname) , !this.isNumeric(domainSplit[1]) , domainSplit[1].length() >= 2 , this.isStringInStrings(splittedEmail[2], this.COUNTRY_CODE));
					return (splittedEmail[0].equals(this.firstname) && domainSplit[0].equals(this.lastname) && this.validCharsInString(domainSplit[1],this.VALID_DOMAIN_CHARS) && domainSplit[1].length() >= 2 && this.isStringInStrings(splittedEmail[2], this.COUNTRY_CODE));
				}
			}
			return false;
		}
	}
	private Boolean validBirthday(Date d) {
		long today = new Date().getTime();
		long date = d.getTime();
		Date test = new Date(1997,10,27);
		System.out.printf("%s %s", today, date, test.getTime());
	}
	// PUBLIC METHODS
	public void setName(String name) throws IllegalArgumentException {
		String[] splittedName = name.split(" ");
		if (splittedName.length == 2) {
			if (splittedName[0].length() >= 2 && splittedName[1].length() >= 2) {
					if (this.validName(splittedName[0], splittedName[1])) {
						this.firstname = splittedName[0];
						this.lastname = splittedName[1];
					}
			}
		} else {
			throw new IllegalArgumentException("Invalid name input!");
		}
	}
	public String getName() {
		return this.firstname + " " + this.lastname;
	}
	public void setEmail(String mail) throws IllegalArgumentException {
		if (validEmail(mail)) {
			this.email = mail;
		} else {
			throw new IllegalArgumentException("Invalid email input!");
		}
	}
	public String getEmail() {
		return this.email;
	}
	public void setBirthday(Date d) throws IllegalArgumentException {
		if (validBirthday(d)) {
			this.birthday = d;
		}
		else {
			throw new IllegalArgumentException("Invalid birthday input!");
		}
	}
	public static void main(String[] args) {
		Person p = new Person();
		p.setName("Hallvard trætteberg");
		p.setEmail("Hallvard.trætteberg@ntnu.no");
		Date d = new Date();
		p.setBirthday(d);
		// Hallvard.trætteberg@ntnu.no
		System.out.println(p.getName());
		System.out.println(p.getEmail());
	}

}
