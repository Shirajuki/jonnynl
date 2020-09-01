package interfaces.twitter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class TwitterAccount implements Comparable<TwitterAccount> {
	private String username;
	private List<Tweet> tweetList = new ArrayList<>();
	private int tweetCount = 0, retweetCount = 0;
	public List<TwitterAccount> followList = new ArrayList<>();
	public List<TwitterAccount> followersList = new ArrayList<>();
	public TwitterAccount(String username) {
		this.username = username;
	}
	public String getUserName() { return this.username; }
	public void follow(TwitterAccount account) {
		this.getFollowList().add(account);
		account.getFollowersList().add(this);
	}
	public void unfollow(TwitterAccount account) {
		List<TwitterAccount> l1 = this.getFollowList();
		List<TwitterAccount> l2 = account.getFollowersList();
		for (int i = 0; i < l1.size(); i++) {
			if (l1.get(i).getUserName().equals(account.getUserName())) {
				l1.remove(i);
			}
		}
		for (int i = 0; i < l2.size(); i++) {
			if (l2.get(i).getUserName().equals(this.getUserName())) {
				l2.remove(i);
			}
		}
	}
	public boolean isFollowing(TwitterAccount account) {
		List<TwitterAccount> l1 = this.getFollowList();
		for (int i = 0; i < l1.size(); i++) {
			if (l1.get(i).getUserName().equals(account.getUserName())) {
				return true;
			}
		}
		return false;
	}
	public boolean isFollowedBy(TwitterAccount account) {
		List<TwitterAccount> l2 = account.getFollowList();
		for (int i = 0; i < l2.size(); i++) {
			if (l2.get(i).getUserName().equals(this.username)) {
				return true;
			}
		}
		return false;
	}
	public Tweet getTweet(int i) {
		return this.tweetList.get(this.tweetList.size()-1 - (i-1));
	}
	public void tweet(String text) {
		Tweet t = new Tweet(this, text);
		this.tweetCount++;
		this.tweetList.add(t);
	}
	public void retweet(Tweet tweet) {
		Tweet t = new Tweet(this, tweet);
		this.tweetCount++;
		if (tweet.getOriginalTweet() != null) {
			tweet.getOriginalTweet().getOwner().addRetweetCount(1);
		} else {			
			tweet.getOwner().addRetweetCount(1);
		}
		this.tweetList.add(t);
	}
	public int getTweetCount() { return this.tweetCount; }
	public int getRetweetCount() { return this.retweetCount; }
	public void addRetweetCount(int n) { this.retweetCount += n; }
	@Override
	public String toString() {
		return getUserName() + ": " + getTweetCount() + " - " + getRetweetCount();
	}
	// Ny i øving 6
	public List<TwitterAccount> getFollowersList() { return this.followersList; }
	public int getFollowerCount() { return this.followersList.size(); } //
	public List<TwitterAccount> getFollowList() { return this.followList; }
	public List<TwitterAccount> getFollowers(Comparator<TwitterAccount> c) {
		List<TwitterAccount> copyArr = new ArrayList<>(this.followersList);
		if (c != null) {			
			Collections.sort(copyArr, c);
		}
		return copyArr;
	}
	@Override
	public int compareTo(TwitterAccount arg0) {
		return 0;
	}
}
