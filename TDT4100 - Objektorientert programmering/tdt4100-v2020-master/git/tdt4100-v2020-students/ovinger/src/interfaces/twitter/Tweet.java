package interfaces.twitter;

public class Tweet {
	private TwitterAccount owner;
	private Tweet originalTweet;
	private String text;
	private int retweetCount = 0;
	public Tweet(TwitterAccount owner, String text) {
		this.owner = owner;
		this.text = text;
	}
	public Tweet(TwitterAccount owner, Tweet t) throws RuntimeException {
		if (owner.getUserName().equals(t.getOwner().getUserName())) throw new RuntimeException("Kan ikke retweete seg selv!");
		this.originalTweet = t.getOriginalTweet();
		if (originalTweet == null) {
			this.originalTweet = t; 
		}
		this.owner = owner;
		this.retweetCount = originalTweet.getRetweetCount();
		originalTweet.addRetweetCount(1);
		this.text = t.getText();
	}
	public String getText() { return text; }
	public TwitterAccount getOwner() { return this.owner; }
	public Tweet getOriginalTweet() {
		return this.originalTweet;		
	}
	public int getRetweetCount() { return this.retweetCount; }
	public void addRetweetCount(int n) { this.retweetCount += n; }
	@Override
	public String toString() {
		return "Text: " +getText() + "\nOwner: " + getOwner().getUserName() + "\nRetweetCount: " + getRetweetCount() + "\n" +getOriginalTweet();
	}
	public static void main(String[] args) {
		/*
		TwitterAccount ta1 = new TwitterAccount("Bob");
		TwitterAccount ta2 = new TwitterAccount("Alice");
		System.out.println("1) TWEET-test");
		ta1.tweet("yoyo");
		Tweet t1 = ta1.getTweet(1);
		System.out.println(t1.toString());
		ta2.retweet(t1);
		Tweet t2 = ta2.getTweet(1);
		System.out.println(t2.toString());
		System.out.println("2) TWEETCOUNT-test");
		System.out.println(ta1.getTweetCount());
		System.out.println(ta1.getRetweetCount());
		System.out.println(ta2.getTweetCount());
		System.out.println(ta2.getRetweetCount());
		System.out.println("3) FOLLOW-test");
		System.out.println(ta2.isFollowing(ta1));
		System.out.println(ta1.isFollowedBy(ta2));
		ta2.follow(ta1);
		System.out.println(ta2.isFollowing(ta1));
		System.out.println(ta1.isFollowedBy(ta2));
		ta2.unfollow(ta1);
		System.out.println(ta2.isFollowing(ta1));
		System.out.println(ta1.isFollowedBy(ta2));
		*/
		TwitterAccount nils = new TwitterAccount("Nils");
		TwitterAccount ole = new TwitterAccount("Ole");
		TwitterAccount kari = new TwitterAccount("Kari");
		nils.tweet("Kvitre!");
		System.out.println("1");
		System.out.println(nils.toString());
		System.out.println(ole.toString());
		System.out.println(kari.toString());
		//
		ole.retweet(nils.getTweet(1));
		System.out.println("2");
		System.out.println(nils.toString());
		System.out.println(ole.toString());
		System.out.println(kari.toString());
		//
		kari.retweet(ole.getTweet(1));
		System.out.println("3");
		System.out.println(nils.toString());
		System.out.println(ole.toString());
		System.out.println(kari.toString());
		System.out.println("4");
		System.out.println(kari.getTweet(1).getText());
		System.out.println("4.1");
		System.out.println(kari.getTweet(1).getOriginalTweet());
		System.out.println("4.2");
		System.out.println(ole.getRetweetCount());
		System.out.println(nils.getRetweetCount());
		System.out.println("4.3");
		System.out.println(nils.getTweet(1) == kari.getTweet(1).getOriginalTweet());
		//
	}
}
