package objectstructures;

import java.util.ArrayList;
import java.util.List;

public class TwitterAccount {
	private String username;
	private List<TwitterAccount> followList = new ArrayList<>();
	private List<Tweet> tweetList = new ArrayList<>();
	private int tweetCount = 0, retweetCount = 0;
	public TwitterAccount(String username) {
		this.username = username;
	}
	public String getUserName() { return this.username; }
	public void follow(TwitterAccount account) {
		this.followList.add(account);
	}
	public void unfollow(TwitterAccount account) {
		for (int i = 0; i < this.followList.size(); i++) {
			if (this.followList.get(i).getUserName().equals(account.getUserName())) {
				this.followList.remove(i);
			}
		}
	}
	public boolean isFollowing(TwitterAccount account) {
		for (int i = 0; i < this.followList.size(); i++) {
			if (this.followList.get(i).getUserName().equals(account.getUserName())) {
				return true;
			}
		}
		return false;
	}
	public boolean isFollowedBy(TwitterAccount account) {
		for (int i = 0; i < account.followList.size(); i++) {
			if (account.followList.get(i).getUserName().equals(this.username)) {
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
	public static void main(String[] args) {
		
	}
}
