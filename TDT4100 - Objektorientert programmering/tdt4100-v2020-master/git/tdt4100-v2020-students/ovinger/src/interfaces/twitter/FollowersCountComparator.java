package interfaces.twitter;

import java.util.Comparator;

public class FollowersCountComparator implements Comparator<TwitterAccount>{
	@Override
	public int compare(TwitterAccount t1, TwitterAccount t2) {
		return t2.getFollowerCount() - t1.getFollowerCount();
	}
}
