package objectstructures;

public class Partner {
	private String name;
	private Partner partner;
	public Partner(String name) {
		this.name = name;
	}
	public String getName() { return name; }
	public Partner getPartner() { return partner; }
	public void setPartner(Partner newP) {
		Partner p = this.partner;
		if (newP != null && partner != newP) {
			if (partner != null) {
				p.setPartner(null);
				partner = newP;
				newP.setPartner(this);
			} else {
				partner = newP;
				newP.setPartner(this);
			}
		} else {
			if (newP == null && p != null) {
				partner = null;
				p.setPartner(null);
			}
		}
	}
	@Override 
	public String toString() {
		return name;
	}
	public static void main(String[] args) {
		Partner p1 = new Partner("1");
		Partner p2 = new Partner("2");
		System.out.println(p1.getPartner());
		System.out.println(p2.getPartner());
		p1.setPartner(p2);
		System.out.println(p1.getPartner().toString());
		System.out.println(p2.getPartner().toString());
		p1.setPartner(null);
		System.out.println(p1.getPartner());
		System.out.println(p2.getPartner());
		p1.setPartner(p2);
		System.out.println(p1.getPartner().toString());
		System.out.println(p2.getPartner().toString());
		///*
		Partner p3 = new Partner("3");
		Partner p4 = new Partner("4");
		p3.setPartner(p4);
		System.out.println(p3.getPartner().toString());
		System.out.println(p4.getPartner().toString());
		p1.setPartner(p3);
		System.out.println(p1.getPartner());
		System.out.println(p2.getPartner());
		System.out.println(p3.getPartner());
		System.out.println(p4.getPartner());
		//*/
	}

}
