package interfaces.twitter;

import java.util.Comparator;

public class UserNameComparator implements Comparator<TwitterAccount>{

	@Override
	public int compare(TwitterAccount t1, TwitterAccount t2) {
		return t1.getUserName().compareTo(t2.getUserName());
	}
}
