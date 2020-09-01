package ord2016;

import java.util.*;
public class Relation2 implements Relation { //Tante
	private final Relation rel1, rel2;
	public Relation2(Relation rel1, Relation rel2) {
		this.rel1 = rel1;
		this.rel2 = rel2;
	}
	/*
	Poenget her er å gjøre som beskrevet i oppgaven, å bruke rel2 på resultatet av å bruke rel1. 
	Her sjekkes det ikke for duplikater (som det sjelden er behov for med relasjoner av denne typen). 
	Dette er delegeringsteknikken i praksis, som kjennetegnes ved at et delegerende objekt, som skal utføre 
	en oppgave, ber en eller flere delegater om å utføre (omtrent) samme oppgave, for så å kombinere 
	resultatene. Her delegeres det til rel1 og rel2, som implementerer samme grensesnitt som Relation2. 
	Det er også en form for komposisjon, men det er ikke pensum.
	*/
	@Override
	public Collection<Person> getRelativesOf(Person person) {
		Collection<Person> relation1 = rel1.getRelativesOf(person);
		Collection<Person> bothRelation = new ArrayList<>();
		for (Person p : relation1) {
			bothRelation.addAll(rel2.getRelativesOf(p));
		}
		return bothRelation;
	}
	/*
	Relation2: constructor:
		Relation parent = new Parent();
		Relation grandParent = new Relation2(parent, parent);
		Relation grandGrandParent = new Relation2(grandParent, parent);
	*/
	/*
	En kan lage Sibling-klassen med utgangspunkt i Sister-klassen, og legge til et gender-felt som brukes 
	for å plukke ut og legge til barn med den gitte kjønnet (eller begge, hvis gender er null).Her gjøres 
	det i addChildren-metoden, som må endres. Sister- og Brother-klassene sørger for å initialisere gender-feltet
	med riktig verdi, evt. vha. en Sister-konstruktør.

	En annen variant er å la Sister og Brother filtrere superklassen sitt resultat på kjønn, men dette er ikke
	like god utnyttelse av arv (kunne i prinsippet brukt delegering). 
	*/
	/*
	En abstrakt klasse er en klasse som ikke kan instansieres, enten fordi den er ufullstendig ved at den 
	deklarerer én eller flere abstrakte (tomme) metoder, eller fordi det ikke gir mening. Ingen av de tre 
	klassene bør være abstrakte, siden alle er fullstendige og implementerer en nyttig relasjon.
	*/
	/*
	Funksjonelle grensesnitt har bare én metode (krav 1), og den metoden er funksjonell fordi den for samme 
	input(-parametre) alltid gir samme output(-verdi). En annen måte å si det siste på er at den ikke har 
	intern tilstand som påvirker oppførselen og som kan endres. Det er også vanlig å tenke på 
	grensesnitt-metoden som klassens hovedfunksjon.
	*/
	
	/*
	Fullfør deklarasjon under slik at daughter-variablen implementerer datter-relasjonen. 
	daughter.getRelativesOf(person) skal altså returnere døtrene til person.
	
	Relation daughter = ... bruk Java 8-syntaks her ...
	*/
	Relation daughter = (person) -> person.getChildren(Gender.FEMALE);
}
