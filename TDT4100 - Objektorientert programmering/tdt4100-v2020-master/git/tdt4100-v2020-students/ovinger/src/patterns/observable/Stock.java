package patterns.observable;

import java.util.List;
import java.util.ArrayList;

public class Stock {
	private String ticker;
	private double price;
	private List<StockListener> stockListeners = new ArrayList<>();
	//en konstruktør som tar inn en aksjekode (ticker) og en aksjepris.
	public Stock(String ticker, double price) {
		this.ticker = ticker;
		this.price = price;
	}
	//endringsmetode for aksjeprisen. Dersom aksjepris er negativ eller lik null, skal metoden utløse en IllegalArgumentException.
	public void setPrice(double price) throws IllegalArgumentException {
		//What??
		//if (price >= 0) throw new IllegalArgumentException("Aksjepris er negativ eller lik null!");
		double oldValue = this.price;
		this.price = price;
		for (StockListener sl: stockListeners) {
			sl.stockPriceChanged(this, oldValue, this.price);
		}
	}
	//metode for å hente aksjekoden.
	public String getTicker() { return this.ticker; }
	//metode for å hente aksjeprisen.
	public double getPrice() { return this.price; }
	
	//metode for å legge til nye observatører.
	public void addStockListener(StockListener sl) {
		stockListeners.add(sl);
	}
	//metode for å fjerne observatører.
	public void removeStockListener(StockListener sl) {
		stockListeners.remove(sl);
	}
}
