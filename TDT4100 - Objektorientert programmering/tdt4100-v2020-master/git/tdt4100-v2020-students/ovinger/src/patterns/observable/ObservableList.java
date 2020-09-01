package patterns.observable;
import java.util.ArrayList;
import java.util.List;

public abstract class ObservableList {
	protected List<Object> elements = new ArrayList<>();
	protected List<ObservableListListener> observableListListener = new ArrayList<>();
	public int size() { return this.elements.size(); }
	public Object getElement(int i) {
		return this.elements.get(i);
	}
	abstract boolean acceptsElement(Object o);
	protected void addElement(int pos, Object o) throws IndexOutOfBoundsException {
		try {
			if (pos >= 0 && pos <= this.size()) {
				List<Object> l = new ArrayList<>(this.elements);
				if (l.size() == 0 || (pos >= l.size())) {				
					this.elements.add(o);
				} else {
					this.elements = new ArrayList<>();
					for (int i = 0; i < l.size(); i++) {
						if (i == pos) this.elements.add(o);
						this.elements.add(l.get(i));
					}
				}
				
				for (ObservableListListener oll: observableListListener) {
					oll.listChanged(this, pos);
				}
			} else {
				throw new IllegalArgumentException("Out of bounds!");
			}	
		} catch (IllegalArgumentException iae) {
			System.out.println("Not an Integer!");
		}
	}
	protected void addElement(Object o) throws IllegalArgumentException {
		if (this.acceptsElement(o)) {			
			this.elements.add(o);
			for (ObservableListListener oll: observableListListener) {
				oll.listChanged(this, this.elements.size()-1);
			}
		} else {
			throw new IllegalArgumentException("Not an Integer!");
		}
	}
	protected void addElementN(Object o) throws IllegalArgumentException {
		if (this.acceptsElement(o)) {			
			this.elements.add(o);
		} else {
			throw new IllegalArgumentException("Not an Integer!");
		}
	}
	protected void removeElement(int pos) throws IndexOutOfBoundsException {
		if (pos >= 0 && pos < this.size()) {			
			this.elements.remove(pos);
			for (ObservableListListener oll: observableListListener) {
				oll.listChanged(this, pos);
			}
		} else {
			throw new IllegalArgumentException("Out of bounds!");
		}
	}
	public void addObservableListListener(ObservableListListener oll) {
		observableListListener.add(oll);
	}
	//- fjerner en tidligere registrert lytter
	public void removeObservableListListener(ObservableListListener oll) {
		observableListListener.remove(oll);
	}

}
