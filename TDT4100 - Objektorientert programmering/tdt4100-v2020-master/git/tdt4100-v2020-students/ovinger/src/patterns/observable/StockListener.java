package patterns.observable;

public interface StockListener {
	//lyttermetode for å holde lytteren oppdatert på aksjeprisen. 
	// Metoden skal ta inn et Stock-objekt, samt gammel og ny pris. Alle lyttere må implementere denne metoden.
	public void stockPriceChanged(Stock stock, double oldValue, double newValue);

}
