package patterns.observable;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
final class reverseSortObs implements Comparator<Object>  { 
	@Override
	public int compare(Object a, Object b) { 
        return (int)a - (int)b; 
    }
} 
public class ObservableHighscoreList extends ObservableList{
	private int maxSize;
	
	public ObservableHighscoreList(int maxSize) {
		super();
		this.maxSize = maxSize;
	}
	@Override
	boolean acceptsElement(Object o) {
		return (o instanceof Integer);
	}
	public void addResult(int n) {
		this.elements.add(n);
		Collections.sort(elements, new reverseSortObs());
		if (this.elements.size() > maxSize) this.elements.remove(this.elements.size()-1);
		for (ObservableListListener oll: observableListListener) {
			for (int i = 0; i < this.elements.size(); i++) {				
				if ((int)this.getElement(i) == n) oll.listChanged(this, i);
			}
		}
	}

}
