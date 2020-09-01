package patterns.observable;

import java.util.ArrayList;
import java.util.List;

public class StockIndex implements StockListener {
	// navn (String), indeks (double) og en liste med Stock-objektene som er inkludert i indeksen. 
	// Indeksen beregnes ut i fra aksjeprisene den "observerer", og vil v�re lik summen av disse.
	private String name = "";
	private double index = 0.0;
	private List<Stock> stockList = new ArrayList<>();
	
	private void updateStockList() {
		this.index = 0.0;
		for (int i = 0; i < stockList.size(); i++) {
			this.index += stockList.get(i).getPrice();
			System.out.println(i+"-"+stockList.get(i).getPrice());
		}
	}
	//konstrukt�r som tar inn ingen, �n eller flere aksjer (Stock-objekter). Stock-parameteret defineres som et s�kalt varargs-parameter. 
	// NB: StockIndex-objektet skal holdes oppdatert p� aksjeprisene allerede fra det er instansiert. 
	// Dersom en indeks instansieres uten Stock-objekter, skal aksjeindeksen v�re 0.
	public StockIndex(String name, Stock ... stock) {
		this.name = name;
		for (int i = 0; i < stock.length; i++) {			
			stock[i].addStockListener(this);
			this.stockList.add(stock[i]);
		} 
		updateStockList();
	}
	
	//metode for � legge til en aksjepris i indeksen.
	public void addStock(Stock stock) {
		if (!this.stockList.contains(stock)) {
			stock.addStockListener(this);
			this.stockList.add(stock);
		}
		updateStockList();
	}
	//metode for � fjerne en aksjepris fra indeksen.
	public void removeStock(Stock stock) { 
		this.stockList.remove(stock);
		updateStockList();
	}
	//hentemetode for indeksen.
	public double getIndex() { return this.index; }
	
	@Override
	public void stockPriceChanged(Stock stock, double oldValue, double newValue) {
		System.out.println(this.name+"-"+oldValue+"-"+newValue);
		updateStockList();
	}
}
