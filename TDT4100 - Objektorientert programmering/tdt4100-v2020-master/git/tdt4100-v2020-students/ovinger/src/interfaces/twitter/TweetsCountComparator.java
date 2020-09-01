package interfaces.twitter;

import java.util.Comparator;

public class TweetsCountComparator implements Comparator<TwitterAccount>{
	@Override
	public int compare(TwitterAccount t1, TwitterAccount t2) {
		return t2.getTweetCount() - t1.getTweetCount();
	}
}
