<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Twitter">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Tweet class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.Tweet"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the TwitterAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.TwitterAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Tweet class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.Tweet"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the TwitterAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.TwitterAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TweetTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.TweetTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TwitterAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.TwitterAccountTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the Tweet class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.Tweet" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the TwitterAccount class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.TwitterAccount" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582131336557" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="35" className="objectstructures.Tweet">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.List;&#xA;import objectstructures.TwitterAccount;&#xA;public class Tweet {&#xA;&#x9;private TwitterAccount owner;&#xA;&#x9;private Tweet originalTweet;&#xA;&#x9;private text = text;&#xA;&#x9;private int retweetCount = 0;&#xA;&#x9;public Tweet(TwitterAccount owner, String text) {&#xA;&#x9;&#x9;this.owner = owner;&#xA;&#x9;&#x9;this.text = text;&#xA;&#x9;}&#xA;&#x9;// TBD&#xA;&#x9;public Tweet(TwitterAccount owner, Tweet t) throws RuntimeException {&#xA;&#x9;&#x9;if (owner.getUserName().equals(t.getOwner().getUserName()) throw new RuntimeException(&quot;Kan ikke retweete seg selv!&quot;);&#xA;&#x9;&#x9;this.owner = owner;&#xA;&#x9;&#x9;this.originalTweet = t;&#xA;&#x9;&#x9;this.text = t.getText();&#xA;&#x9;&#x9;this.retweetCount = t.getRetweetCount();&#xA;&#x9;}&#xA;&#xA;&#x9;public String getText() { return text; }&#xA;&#x9;public TwitterAccount getOwner() { return this.owner; }&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;if (this.originalTweet != null) return originalTweet;&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() { return this.retweetCount; }&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132143679" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="37" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String text;&#xA;&#x9;private int retweetCount = 0;&#xA;&#x9;public Tweet(TwitterAccount owner, String text) {&#xA;&#x9;&#x9;this.owner = owner;&#xA;&#x9;&#x9;this.text = text;&#xA;&#x9;}&#xA;&#x9;// TBD&#xA;&#x9;public Tweet(TwitterAccount owner, Tweet t) throws RuntimeException {&#xA;&#x9;&#x9;if (owner.getUserName().equals(t.getOwner().getUserName())) {&#xA;&#x9;&#x9;&#x9;throw new RuntimeException(&quot;Kan ikke retweete seg selv!&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="209" end="-443"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132154148" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="35" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="o" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="34" end="-914"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132156302" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="34" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="27" end="-881"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132561253" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="40" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ublic int retweetCount = 0;&#xA;&#x9;public Tweet(TwitterAccount owner, String text) {&#xA;&#x9;&#x9;this.owner = owner;&#xA;&#x9;&#x9;this.text = text;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet(TwitterAccount owner, Tweet t) throws RuntimeException {&#xA;&#x9;&#x9;if (owner.getUserName().equals(t.getOwner().getUserName())) {&#xA;&#x9;&#x9;&#x9;throw new RuntimeException(&quot;Kan ikke retweete seg selv!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.owner = owner;&#xA;&#x9;&#x9;this.originalTweet = t.getOriginalTweet();&#xA;&#x9;&#x9;t.retweetCount++;&#xA;&#x9;&#x9;this.text = t.getText();&#xA;&#x9;&#x9;this.retweetCount = t.getRetweetCount();&#xA;&#x9;}&#xA;&#xA;&#x9;public String getText() { return text; }&#xA;&#x9;public TwitterAccount getOwner() { return this.owner; }&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;if (this.originalTweet != null) return originalTweet;&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() { return this.retweetCount; }&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount ta1 = new TwitterAccount(&quot;Bob&quot;);&#xA;&#x9;&#x9;ta1.tweet(&quot;yoyo&quot;);&#xA;&#x9;&#x9;Tweet t = ta1.getTweet(1);&#xA;&#x9;&#x9;t.getText();&#xA;&#x9;&#x9;t.getOwner();&#xA;&#x9;&#x9;t.getOriginalTweet();" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="133" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132577388" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="41" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;t.getRetweetCount();&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="1088" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132711109" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="41" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return &quot;Text: &quot; +getText() + &quot;\nOwner: &quot; + getOwner() + &quot;\nOGTweet: &quot; + getOriginalTweet() + &quot;\nRetweetCount: &quot; + getRetweetCount();&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount ta1 = new TwitterAccount(&quot;Bob&quot;);&#xA;&#x9;&#x9;ta1.tweet(&quot;yoyo&quot;);&#xA;&#x9;&#x9;Tweet t = ta1.getTweet(1);&#xA;&#x9;&#x9;t.toString" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="889" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132730138" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="41" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(t.toString()" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1210" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132747783" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="41" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".getUserName()" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="983" end="-267"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132759382" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="42" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="TwitterAccount ta1 = new TwitterAccount(&quot;Alice&quot;);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="1174" end="-90"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132761922" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="42" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="2" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="1191" end="-124"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132782707" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="43" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ta2.retweet(t);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1276" end="-40"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132819631" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="45" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1 = ta1.getTweet(1);&#xA;&#x9;&#x9;ta2.retweet(t1);&#xA;&#x9;&#x9;System.out.println(t1.toString());&#xA;&#x9;&#x9;Tweet t2 = ta2.getTweet(1);&#xA;&#x9;&#x9;System.out.println(t2" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="1254" end="-20"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132865481" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="45" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="t.getOwner()" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="475" end="-924"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132883622" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="45" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(t1.toString());&#xA;&#x9;&#x9;ta2.retweet(t1" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="1284" end="-76"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132997427" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="55" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;1) TWEET-test&quot;);&#xA;&#x9;&#x9;ta1.tweet(&quot;yoyo&quot;);&#xA;&#x9;&#x9;Tweet t1 = ta1.getTweet(1);&#xA;&#x9;&#x9;System.out.println(t1.toString());&#xA;&#x9;&#x9;ta2.retweet(t1);&#xA;&#x9;&#x9;Tweet t2 = ta2.getTweet(1);&#xA;&#x9;&#x9;System.out.println(t2.toString());&#xA;&#x9;&#x9;System.out.println(&quot;2) FOLLOW-test&quot;);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.follow(ta1);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.unfollow(ta1)&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="1233" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133002643" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="55" errorCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="1700" end="-96"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="51" charStart="1699" charEnd="1700" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133043286" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="57" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="TWEETCOUNT-test&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;3) FOLLOW-test&quot;);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.follow(ta1);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.unfollow(ta1);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="1469" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133079535" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="61" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ta1.getTweetCount());&#xA;&#x9;&#x9;System.out.println(ta1.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(ta2.getTweetCount());&#xA;&#x9;&#x9;System.out.println(ta2.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="1509" end="-335"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133831288" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="62" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1.toString());&#xA;&#x9;&#x9;System.out.println(t" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="1429" end="-591"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133903242" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="61" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="2" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="1429" end="-590"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134141783" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="61" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="513" end="-1487"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134363946" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="61" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="2000"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134452862" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="71" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/*&#xA;&#x9;&#x9;TwitterAccount ta1 = new TwitterAccount(&quot;Bob&quot;);&#xA;&#x9;&#x9;TwitterAccount ta2 = new TwitterAccount(&quot;Alice&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;1) TWEET-test&quot;);&#xA;&#x9;&#x9;ta1.tweet(&quot;yoyo&quot;);&#xA;&#x9;&#x9;Tweet t1 = ta1.getTweet(1);&#xA;&#x9;&#x9;System.out.println(t1.toString());&#xA;&#x9;&#x9;ta2.retweet(t1);&#xA;&#x9;&#x9;Tweet t2 = ta2.getTweet(1);&#xA;&#x9;&#x9;System.out.println(t2.toString());&#xA;&#x9;&#x9;System.out.println(&quot;2) TWEETCOUNT-test&quot;);&#xA;&#x9;&#x9;System.out.println(ta1.getTweetCount());&#xA;&#x9;&#x9;System.out.println(ta1.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(ta2.getTweetCount());&#xA;&#x9;&#x9;System.out.println(ta2.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(&quot;3) FOLLOW-test&quot;);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.follow(ta1);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.unfollow(ta1);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;*/&#xA;&#x9;&#x9;TwitterAccount nils = new TwitterAccount(&quot;Nils&quot;);&#xA;&#x9;&#x9;TwitterAccount ole = new TwitterAccount(&quot;Ole&quot;);&#xA;&#x9;&#x9;TwitterAccount kari = new TwitterAccount(&quot;Kari&quot;);&#xA;&#x9;&#x9;nils.tweet(&quot;Kvitre!&quot;);&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;ole.retweet(nils.getTweet(1));&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;kari.retweet(ole.getTweet(1" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="1112" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134540675" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="71" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="2265"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134605704" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="75" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="riginalTweet = t;&#xA;&#x9;&#x9;if (originalTweet == null) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.owner = t.getOwner();&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;this.owner = originalTweet.getOwner();&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="468" end="-1752"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134651240" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="79" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;ole.retweet(nils.getTweet(1));&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;kari.retweet(ole.getTweet(1));&#xA;&#x9;&#x9;//" edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="2280" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134748086" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="80" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;1&quot;);&#xA;&#x9;&#x9;System.out.println(" edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="2299" end="-182"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134757395" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="83" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;1&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;ole.retweet(nils.getTweet(1));&#xA;&#x9;&#x9;System.out.println(&quot;2&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString(" edit="/1/@proposals.0/@proposals.0/@attempts.27/@edit" start="2275" end="-53"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134764954" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="87" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;1&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.28/@edit" start="2637" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134847036" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="88" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(kari.getTweet(1).getText());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.29/@edit" start="2780" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134887157" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="91" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getTweet(1).originalTweet == nils.getTweet(1)&#xA;&#x9;&#x9;System.out.println(kari.getTweet(1).originalTweet().toString());&#xA;&#x9;&#x9;System.out.println(nils.getTweet(1).toString());&#xA;&#x9;&#x9;//" edit="/1/@proposals.0/@proposals.0/@attempts.30/@edit" start="2832" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134906088" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="91" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getO" edit="/1/@proposals.0/@proposals.0/@attempts.31/@edit" start="2916" end="-90"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134931568" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="91" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="3&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;System.out.println(&quot;4&quot;);&#xA;&#x9;&#x9;System.out.println(kari.getTweet(1).getText());" edit="/1/@proposals.0/@proposals.0/@attempts.32/@edit" start="2657" end="-133"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134946684" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;4.1&quot;);&#xA;&#x9;&#x9;System.out.println(kari.getTweet(1).getOriginalTweet().toString());&#xA;&#x9;&#x9;System.out.println(&quot;4.2&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.33/@edit" start="2876" end="-65"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134993464" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ublic" edit="/1/@proposals.0/@proposals.0/@attempts.34/@edit" start="81" end="-2958"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134997433" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="o" edit="/1/@proposals.0/@proposals.0/@attempts.35/@edit" start="2921" end="-119"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135004388" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" errorCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="." edit="/1/@proposals.0/@proposals.0/@attempts.36/@edit" start="2934" end="-104"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="88" charStart="2921" charEnd="2934" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135015938" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate Tweet originalTweet;&#xA;&#x9;private String text;&#xA;&#x9;public int retweetCount = 0;&#xA;&#x9;public Tweet(TwitterAccount owner, String text) {&#xA;&#x9;&#x9;this.owner = owner;&#xA;&#x9;&#x9;this.text = text;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet(TwitterAccount owner, Tweet t) throws RuntimeException {&#xA;&#x9;&#x9;if (owner.getUserName().equals(t.getOwner().getUserName())) {&#xA;&#x9;&#x9;&#x9;throw new RuntimeException(&quot;Kan ikke retweete seg selv!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.originalTweet = t;&#xA;&#x9;&#x9;if (originalTweet == null) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.owner = t.getOwner();&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;this.owner = originalTweet.getOwner();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;t.retweetCount++;&#xA;&#x9;&#x9;this.text = t.getText();&#xA;&#x9;&#x9;this.retweetCount = t.getRetweetCount();&#xA;&#x9;}&#xA;&#xA;&#x9;public String getText() { return text; }&#xA;&#x9;public TwitterAccount getOwner() { return this.owner; }&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;if (this.originalTweet != null) return originalTweet;&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() { return this.retweetCount; }&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return &quot;Text: &quot; +getText() + &quot;\nOwner: &quot; + getOwner().getUserName() + &quot;\nOGTweet: &quot; + getOriginalTweet() + &quot;\nRetweetCount: &quot; + getRetweetCount();&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;/*&#xA;&#x9;&#x9;TwitterAccount ta1 = new TwitterAccount(&quot;Bob&quot;);&#xA;&#x9;&#x9;TwitterAccount ta2 = new TwitterAccount(&quot;Alice&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;1) TWEET-test&quot;);&#xA;&#x9;&#x9;ta1.tweet(&quot;yoyo&quot;);&#xA;&#x9;&#x9;Tweet t1 = ta1.getTweet(1);&#xA;&#x9;&#x9;System.out.println(t1.toString());&#xA;&#x9;&#x9;ta2.retweet(t1);&#xA;&#x9;&#x9;Tweet t2 = ta2.getTweet(1);&#xA;&#x9;&#x9;System.out.println(t2.toString());&#xA;&#x9;&#x9;System.out.println(&quot;2) TWEETCOUNT-test&quot;);&#xA;&#x9;&#x9;System.out.println(ta1.getTweetCount());&#xA;&#x9;&#x9;System.out.println(ta1.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(ta2.getTweetCount());&#xA;&#x9;&#x9;System.out.println(ta2.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(&quot;3) FOLLOW-test&quot;);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.follow(ta1);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.unfollow(ta1);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;*/&#xA;&#x9;&#x9;TwitterAccount nils = new TwitterAccount(&quot;Nils&quot;);&#xA;&#x9;&#x9;TwitterAccount ole = new TwitterAccount(&quot;Ole&quot;);&#xA;&#x9;&#x9;TwitterAccount kari = new TwitterAccount(&quot;Kari&quot;);&#xA;&#x9;&#x9;nils.tweet(&quot;Kvitre!&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;1&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;ole.retweet(nils.getTweet(1));&#xA;&#x9;&#x9;System.out.println(&quot;2&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;kari.retweet(ole.getTweet(1));&#xA;&#x9;&#x9;System.out.println(&quot;3&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;System.out.println(&quot;4&quot;);&#xA;&#x9;&#x9;System.out.println(kari.getTweet(1).getText());&#xA;&#x9;&#x9;System.out.println(&quot;4.1&quot;);&#xA;&#x9;&#x9;System.out.println(kari.getTweet(1).getOriginalTweet()" edit="/1/@proposals.0/@proposals.0/@attempts.37/@edit" start="81" end="-105"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135041458" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.0/@attempts.38/@edit" start="2940" end="-93"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135070632" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this." edit="/1/@proposals.0/@proposals.0/@attempts.39/@edit" start="876" end="-2158"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135101369" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="R" edit="/1/@proposals.0/@proposals.0/@attempts.40/@edit" start="1088" end="-1913"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135130468" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="94" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;t.retweetCount++;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;this.owner = originalTweet.getOwner();&#xA;&#x9;&#x9;&#x9;originalTweet.retweetCount++;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.41/@edit" start="552" end="-2376"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135181416" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.42/@edit" start="552" end="-2462"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135188694" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="94" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;t.retweetCount++;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.43/@edit" start="552" end="-2463"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135190407" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.44/@edit" start="626" end="-2376"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135205807" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="} else {&#xA;&#x9;&#x9;&#x9;this.owner = originalTweet.getOwner();&#xA;&#x9;&#x9;&#x9;originalTweet.retweetCount++" edit="/1/@proposals.0/@proposals.0/@attempts.45/@edit" start="552" end="-2381"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135232967" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;t.retweetCount++;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;this.owner = originalTweet.getOwner()" edit="/1/@proposals.0/@proposals.0/@attempts.46/@edit" start="552" end="-2381"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582135243330" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="} else {&#xA;&#x9;&#x9;&#x9;this.owner = originalTweet.getOwner();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;t.retweetCount++;" edit="/1/@proposals.0/@proposals.0/@attempts.47/@edit" start="552" end="-2376"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582136932906" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="91" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="throw new RuntimeException(&quot;Kan ikke retweete seg selv!&quot;);" edit="/1/@proposals.0/@proposals.0/@attempts.48/@edit" start="392" end="-2543"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582136964947" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="91" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="his.retweetCount = t.getRetweetCount();&#xA;&#x9;&#x9;t.retweetCount++;&#xA;&#x9;&#x9;this.text = t.getTex" edit="/1/@proposals.0/@proposals.0/@attempts.49/@edit" start="601" end="-2310"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137077649" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="93" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;4.3&quot;);&#xA;&#x9;&#x9;System.out.println(nils.getTweet(1) == kari.getTweet(1).getOriginalTweet());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.50/@edit" start="2984" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137237546" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.owner = originalTweet.getOwner();" edit="/1/@proposals.0/@proposals.0/@attempts.51/@edit" start="479" end="-2504"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137249002" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="originalTweet.getRetweetCount();&#xA;&#x9;&#x9;originalTwee" edit="/1/@proposals.0/@proposals.0/@attempts.52/@edit" start="540" end="-2458"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137277756" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="90" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public void addRetweetCount() { this.retweetCount++; }&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.53/@edit" start="910" end="-2135"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137291113" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="90" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="addRetweetCount(1)" edit="/1/@proposals.0/@proposals.0/@attempts.54/@edit" start="589" end="-2498"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137307303" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="90" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int n) { this.retweetCount += n" edit="/1/@proposals.0/@proposals.0/@attempts.55/@edit" start="942" end="-2140"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137482106" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return this.originalTweet;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.56/@edit" start="776" end="-2264"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137999356" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" + originalTweet()" edit="/1/@proposals.0/@proposals.0/@attempts.57/@edit" start="1081" end="-1987"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138004902" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getO" edit="/1/@proposals.0/@proposals.0/@attempts.58/@edit" start="1084" end="-2001"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138025988" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;\n&quot; +" edit="/1/@proposals.0/@proposals.0/@attempts.59/@edit" start="1084" end="-2005"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138564213" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="90" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Tweet tta = kari.getTweet(1).getOriginalTweet();&#xA;&#x9;&#x9;System.out.println(tta.toString()" edit="/1/@proposals.0/@proposals.0/@attempts.60/@edit" start="2839" end="-203"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138567258" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="90" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.61/@edit" start="2924" end="-200"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138840867" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public Tweet(TwitterAccount owner, Tweet t) throws RuntimeException {&#xA;&#x9;&#x9;if (owner.getUserName().equals(t.getOwner().getUserName())) throw new RuntimeException(&quot;Kan ikke retweete seg selv!&quot;);&#xA;&#x9;&#x9;this.originalTweet = t;&#xA;&#x9;&#x9;this.owner = originalTweet.getOwner();&#xA;&#x9;&#x9;this.retweetCount = originalTweet.getRetweetCount();&#xA;&#x9;&#x9;originalTweet.addRetweetCount(1);&#xA;&#x9;&#x9;this.text = t.getText();&#xA;&#x9;}&#xA;&#xA;&#x9;public String getText() { return text; }&#xA;&#x9;public TwitterAccount getOwner() { return this.owner; }&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;return this.originalTweet;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() { return this.retweetCount; }&#xA;&#x9;public void addRetweetCount(int n) { this.retweetCount += n; }&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return &quot;Text: &quot; +getText() + &quot;\nOwner: &quot; + getOwner().getUserName() + &quot;\nRetweetCount: &quot; + getRetweetCount() + &quot;\n&quot; +getOriginalTweet();&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;/*&#xA;&#x9;&#x9;TwitterAccount ta1 = new TwitterAccount(&quot;Bob&quot;);&#xA;&#x9;&#x9;TwitterAccount ta2 = new TwitterAccount(&quot;Alice&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;1) TWEET-test&quot;);&#xA;&#x9;&#x9;ta1.tweet(&quot;yoyo&quot;);&#xA;&#x9;&#x9;Tweet t1 = ta1.getTweet(1);&#xA;&#x9;&#x9;System.out.println(t1.toString());&#xA;&#x9;&#x9;ta2.retweet(t1);&#xA;&#x9;&#x9;Tweet t2 = ta2.getTweet(1);&#xA;&#x9;&#x9;System.out.println(t2.toString());&#xA;&#x9;&#x9;System.out.println(&quot;2) TWEETCOUNT-test&quot;);&#xA;&#x9;&#x9;System.out.println(ta1.getTweetCount());&#xA;&#x9;&#x9;System.out.println(ta1.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(ta2.getTweetCount());&#xA;&#x9;&#x9;System.out.println(ta2.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(&quot;3) FOLLOW-test&quot;);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.follow(ta1);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;ta2.unfollow(ta1);&#xA;&#x9;&#x9;System.out.println(ta2.isFollowing(ta1));&#xA;&#x9;&#x9;System.out.println(ta1.isFollowedBy(ta2));&#xA;&#x9;&#x9;*/&#xA;&#x9;&#x9;TwitterAccount nils = new TwitterAccount(&quot;Nils&quot;);&#xA;&#x9;&#x9;TwitterAccount ole = new TwitterAccount(&quot;Ole&quot;);&#xA;&#x9;&#x9;TwitterAccount kari = new TwitterAccount(&quot;Kari&quot;);&#xA;&#x9;&#x9;nils.tweet(&quot;Kvitre!&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;1&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;ole.retweet(nils.getTweet(1));&#xA;&#x9;&#x9;System.out.println(&quot;2&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;kari.retweet(ole.getTweet(1));&#xA;&#x9;&#x9;System.out.println(&quot;3&quot;);&#xA;&#x9;&#x9;System.out.println(nils.toString());&#xA;&#x9;&#x9;System.out.println(ole.toString());&#xA;&#x9;&#x9;System.out.println(kari.toString());&#xA;&#x9;&#x9;System.out.println(&quot;4&quot;);&#xA;&#x9;&#x9;System.out.println(kari.getTweet(1).getText());&#xA;&#x9;&#x9;System.out.println(&quot;4.1&quot;);&#xA;&#x9;&#x9;Tweet tta = kari.getTweet(1).getOriginalTweet();&#xA;&#x9;&#x9;System.out.println(tta" edit="/1/@proposals.0/@proposals.0/@attempts.62/@edit" start="258" end="-202"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138856253" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".getOriginalTweet()" edit="/1/@proposals.0/@proposals.0/@attempts.63/@edit" start="2884" end="-228"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138925506" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="90" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".getOriginalTweet();&#xA;&#x9;&#x9;if (originalTweet == null) this.originalTweet = t; " edit="/1/@proposals.0/@proposals.0/@attempts.64/@edit" start="473" end="-2657"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138934909" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="90" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.65/@edit" start="2957" end="-227"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138941163" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="90" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="kari.getTweet(1).getOriginalTweet()" edit="/1/@proposals.0/@proposals.0/@attempts.66/@edit" start="2980" end="-202"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138942867" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="S" edit="/1/@proposals.0/@proposals.0/@attempts.67/@edit" start="2910" end="-255"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582138945561" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="89" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.0/@attempts.68/@edit" start="3033" end="-121"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582139034614" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="91" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="{&#xA;&#x9;&#x9;&#x9;this.originalTweet = t; &#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.69/@edit" start="523" end="-2608"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582139074344" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="91" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="t" edit="/1/@proposals.0/@proposals.0/@attempts.70/@edit" start="572" end="-2579"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582139124089" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="91" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.71/@edit" start="3151"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582139158554" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="91" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="owner" edit="/1/@proposals.0/@proposals.0/@attempts.72/@edit" start="572" end="-2568"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582131327019" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="21" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class TwitterAccount {&#xA;&#x9;private char suit = '\0';&#xA;&#x9;private int face = 0;&#xA;&#x9;public TwitterAccount(char suit, int face) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (&quot;SHDC&quot;.indexOf(suit) == -1 || face &lt; 1 || face > 13) throw new IllegalArgumentException(&quot;Illegal parameters given&quot;);&#xA;&#x9;&#x9;this.suit = suit;&#xA;&#x9;&#x9;this.face = face;&#xA;&#x9;}&#xA;&#x9;public char getSuit() {&#xA;&#x9;&#x9;return this.suit;&#xA;&#x9;}&#xA;&#x9;public int getFace() {&#xA;&#x9;&#x9;return this.face;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return (&quot;&quot;+suit+face);&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582131354524" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="35" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;import objectstructures.TwitterAccount;&#xA;public class Tweet {&#xA;&#x9;private TwitterAccount owner;&#xA;&#x9;private Tweet originalTweet;&#xA;&#x9;private text = text;&#xA;&#x9;private int retweetCount = 0;&#xA;&#x9;public Tweet(TwitterAccount owner, String text) {&#xA;&#x9;&#x9;this.owner = owner;&#xA;&#x9;&#x9;this.text = text;&#xA;&#x9;}&#xA;&#x9;// TBD&#xA;&#x9;public Tweet(TwitterAccount owner, Tweet t) throws RuntimeException {&#xA;&#x9;&#x9;if (owner.getUserName().equals(t.getOwner().getUserName()) throw new RuntimeException(&quot;Kan ikke retweete seg selv!&quot;);&#xA;&#x9;&#x9;this.owner = owner;&#xA;&#x9;&#x9;this.originalTweet = t;&#xA;&#x9;&#x9;this.text = t.getText();&#xA;&#x9;&#x9;this.retweetCount = t.getRetweetCount();&#xA;&#x9;}&#xA;&#xA;&#x9;public String getText() { return text; }&#xA;&#x9;public TwitterAccount getOwner() { return this.owner; }&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;if (this.originalTweet != null) return originalTweet;&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() { return this.retweetCount; }&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="27" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132077352" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="55" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class TwitterAccount {&#xA;&#x9;private String username;&#xA;&#x9;private List&lt;TwitterAccount> followList = new ArrayList&lt;>();&#xA;&#x9;private List&lt;Teet> tweetList = new ArrayList&lt;>();&#xA;&#x9;private int tweetCount = 0, retweetCount = 0;&#xA;&#x9;public TwitterAccount(String username) {&#xA;&#x9;&#x9;this.usename = username;&#xA;&#x9;}&#xA;&#x9;public String getUserName() { return this.username; }&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;this.followList.add(account);&#xA;&#x9;}&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;for (int i = 0; i &lt; this.followList.size(); i++) {&#xA;&#x9;&#x9;&#x9;if (this.follow.get(i).getUserName().equals(account.getUserName())) {&#xA;&#x9;&#x9;&#x9;&#x9;this.follow.remove(i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public boolean isFollowing(TwitterAccount account) [&#xA;&#x9;&#x9;for (int i = 0; i &lt; this.followList.size(); i++) {&#xA;&#x9;&#x9;&#x9;if (this.follow.get(i).getUserName().equals(account.getUserName())) {&#xA;&#x9;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;for (int i = 0; i &lt; account.followList.size(); i++) {&#xA;&#x9;&#x9;&#x9;if (account.follow.get(i).getUserName().equals(this.username)) {&#xA;&#x9;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;public void tweet(String text) {&#xA;&#x9;&#x9;Tweet t = new Tweet(this, text);&#xA;&#x9;&#x9;this.tweetCount++;&#xA;&#x9;&#x9;this.tweetList.add(t);&#xA;&#x9;}&#xA;&#x9;public void retweet(Tweet tweet) {&#xA;&#x9;&#x9;Tweet t = new Tweet(this, tweet);&#xA;&#x9;&#x9;this.retweetCount++;&#xA;&#x9;&#x9;this.tweetList.add(t);&#xA;&#x9;}&#xA;&#x9;public int getTweetCount() { return this.tweetCount; }&#xA;&#x9;public int getRetweetCount() { return this.retweetCount; }" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="78" end="-52"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132105220" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="55" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="weet> tweetList = new ArrayList&lt;>();&#xA;&#x9;private int tweetCount = 0, retweetCount = 0;&#xA;&#x9;public TwitterAccount(String username) {&#xA;&#x9;&#x9;this.username = username;&#xA;&#x9;}&#xA;&#x9;public String getUserName() { return this.username; }&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;this.followList.add(account);&#xA;&#x9;}&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;for (int i = 0; i &lt; this.followList.size(); i++) {&#xA;&#x9;&#x9;&#x9;if (this.followList.get(i).getUserName().equals(account.getUserName())) {&#xA;&#x9;&#x9;&#x9;&#x9;this.followList.remove(i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;for (int i = 0; i &lt; this.followList.size(); i++) {&#xA;&#x9;&#x9;&#x9;if (this.followList.get(i).getUserName().equals(account.getUserName())) {&#xA;&#x9;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;for (int i = 0; i &lt; account.followList.size(); i++) {&#xA;&#x9;&#x9;&#x9;if (account.followList" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="211" end="-500"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132400227" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="58" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Tweet getTweet(int i) {&#xA;&#x9;&#x9;return this.tweetList.get(this.tweetList.size() - (i-1) - 1);&#xA;&#x9;}&#xA;&#x9;public " edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="1190" end="-400"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582132413581" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="58" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-1 - (i-1)" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="1263" end="-414"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133319102" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="59" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Count++;&#xA;&#x9;&#x9;this.tweet" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="1504" end="-183"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133583594" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="58" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="weet.getOwner().re" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="1472" end="-209"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133590542" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="58" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ublic" edit="/1/@proposals.0/@proposals.1/@attempts.7/@edit" start="250" end="-1443"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133735657" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="59" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="addRetweetCount();&#xA;&#x9;&#x9;this.tweetList.add(t);&#xA;&#x9;}&#xA;&#x9;public int getTweetCount() { return this.tweetCount; }&#xA;&#x9;public int getRetweetCount() { return this.retweetCount; }&#xA;&#x9;public void addRetweetCount() { this.retweetCount++" edit="/1/@proposals.0/@proposals.1/@attempts.8/@edit" start="1487" end="-55"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133740570" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="59" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate" edit="/1/@proposals.0/@proposals.1/@attempts.9/@edit" start="250" end="-1502"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133765363" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="58" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.1/@attempts.10/@edit" start="1508" end="-224"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133797005" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="58" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="." edit="/1/@proposals.0/@proposals.1/@attempts.11/@edit" start="1472" end="-256"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133854945" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="59" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;this.tweetList.add(t);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.12/@edit" start="1504" end="-225"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582133935666" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="60" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="addRetweetCount();&#xA;&#x9;&#x9;this." edit="/1/@proposals.0/@proposals.1/@attempts.13/@edit" start="1510" end="-244"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134023159" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="60" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="his.tweetCount++;&#xA;&#x9;&#x9;t.getOwner()" edit="/1/@proposals.0/@proposals.1/@attempts.14/@edit" start="1472" end="-271"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582134722211" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="64" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return getTweetCount() + &quot; - &quot; + getRetweetCount();&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.15/@edit" start="1725" end="-50"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137102571" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="63" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.tweetCount++;&#xA;&#x9;&#x9;t.getOwner().addRetweetCount();&#xA;&#x9;&#x9;this.tweetList.add(twee" edit="/1/@proposals.0/@proposals.1/@attempts.16/@edit" start="1435" end="-326"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137107775" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="63" errorCount="1" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="weet" edit="/1/@proposals.0/@proposals.1/@attempts.17/@edit" start="1457" end="-382"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="50" charStart="1461" charEnd="1461" severity="2" problemCategory="50" problemType="570425394"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137254810" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="62" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@" edit="/1/@proposals.0/@proposals.1/@attempts.18/@edit" start="1641" end="-145"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137260097" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="62" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="retweetCount++" edit="/1/@proposals.0/@proposals.1/@attempts.19/@edit" start="1473" end="-297"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137270185" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="63" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="addRetweetCount();&#xA;&#x9;&#x9;this.tweetList.add(tweet);&#xA;&#x9;}&#xA;&#x9;public int getTweetCount() { return this.tweetCount; }&#xA;&#x9;public int getRetweetCount() { return this.retweetCount; }&#xA;&#x9;public void addRetweetCount() { this.retweetCount++" edit="/1/@proposals.0/@proposals.1/@attempts.20/@edit" start="1473" end="-151"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137313464" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="63" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int n) { this.retweetCount += n" edit="/1/@proposals.0/@proposals.1/@attempts.21/@edit" start="1669" end="-151"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137421663" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="63" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.1/@attempts.22/@edit" start="1489" end="-362"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137531528" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="64" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Tweet t = new Tweet(this, tweet);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.23/@edit" start="1435" end="-417"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582137535490" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="64" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.1/@attempts.24/@edit" start="1551" end="-332"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582139053095" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="64" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="UserName() + &quot;: &quot;+ get" edit="/1/@proposals.0/@proposals.1/@attempts.25/@edit" start="1788" end="-96"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1582139054172" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="64" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" " edit="/1/@proposals.0/@proposals.1/@attempts.26/@edit" start="1805" end="-101"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582132579733" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582132712298" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582132731311" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Text: yoyo
Owner: objectstructures.TwitterAccount@32d992b2
OGTweet: null
RetweetCount: 0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582132749390" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582132821637" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 1
Text: yoyo
Owner: Alice
OGTweet: null
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582132869717" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 1
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582132884788" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 0
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582132998887" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	Syntax error, insert &quot;;&quot; to complete Statement

	at ovinger/objectstructures.Tweet.main(Tweet.java:51)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582133003834" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1) TWEET-test
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 0
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 1
2) FOLLOW-test
false
false
true
true
false
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582133082619" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1) TWEET-test
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 0
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 1
2) TWEETCOUNT-test
1
0
0
1
3) FOLLOW-test
false
false
true
true
false
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582133832330" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1) TWEET-test
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 0
Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index -1 out of bounds for length 0
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)
	at java.base/java.util.Objects.checkIndex(Objects.java:372)
	at java.base/java.util.ArrayList.get(ArrayList.java:458)
	at ovinger/objectstructures.TwitterAccount.getTweet(TwitterAccount.java:41)
	at ovinger/objectstructures.Tweet.main(Tweet.java:43)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582133858458" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1) TWEET-test
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 0
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 1
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 1
2) TWEETCOUNT-test
1
1
0
0
3) FOLLOW-test
false
false
true
true
false
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582133904209" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1) TWEET-test
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 0
Text: yoyo
Owner: Bob
OGTweet: null
RetweetCount: 1
2) TWEETCOUNT-test
1
1
0
0
3) FOLLOW-test
false
false
true
true
false
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582134652781" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>objectstructures.TwitterAccount@215be6bb
objectstructures.TwitterAccount@4439f31e
objectstructures.TwitterAccount@5dfcfece
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582134724551" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1 - 0
0 - 0
0 - 0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582134759029" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582134766609" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
1
1 - 2
1 - 0
1 - 0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582134907632" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
1
1 - 2
1 - 0
1 - 0
Kvitre!
Text: Kvitre!
Owner: Nils
OGTweet: Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
RetweetCount: 2
Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582134932724" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
Text: Kvitre!
Owner: Nils
OGTweet: Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
RetweetCount: 2
Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582134947960" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
OGTweet: Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
RetweetCount: 2
4.2
Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582134999008" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	The method originalTweet() is undefined for the type Tweet

	at ovinger/objectstructures.Tweet.main(Tweet.java:88)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582135005773" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
OGTweet: Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
RetweetCount: 2
4.2
Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582135042826" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
OGTweet: Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
RetweetCount: 2
4.2
Text: Kvitre!
Owner: Nils
OGTweet: null
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582135102746" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 2
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582135155982" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 2
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582135182740" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 2
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582135193276" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 0
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582135207191" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 2
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582135233893" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 0
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582135244407" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 2
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582136968211" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582137033300" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582137079786" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582137113277" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 0
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582137427602" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 0
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582137483045" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 0
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582137538314" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582138006086" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 1Text: Kvitre!
Owner: Nils
RetweetCount: 1null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1null
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582138027018" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
null
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582138569730" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
null
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582138842678" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
null
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582138858228" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 1
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 1
null
4.3
false
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582138927777" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 2
null
4.3
true
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582138947415" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
1 - 0
0 - 0
0 - 0
2
1 - 1
1 - 0
0 - 0
3
1 - 2
1 - 0
1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 2
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 2
null
4.3
true
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582139075797" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
Nils: 1 - 0
Ole: 0 - 0
Kari: 0 - 0
2
Nils: 1 - 1
Ole: 1 - 0
Kari: 0 - 0
3
Nils: 1 - 2
Ole: 1 - 0
Kari: 1 - 0
4
Kvitre!
4.1
Text: Kvitre!
Owner: Nils
RetweetCount: 2
null
4.2
Text: Kvitre!
Owner: Nils
RetweetCount: 2
null
4.3
true
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582136972370" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582137104134" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1582137109301" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582138977987" completion="0.75" testRunName="objectstructures.TweetTest" successCount="3" failureCount="1">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testGetOriginalTweet</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <failureTests>testConstructorRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582139057791" completion="0.75" testRunName="objectstructures.TweetTest" successCount="3" failureCount="1">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testGetOriginalTweet</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <failureTests>testConstructorRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582139078663" completion="0.75" testRunName="objectstructures.TweetTest" successCount="3" failureCount="1">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testGetOriginalTweet</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <failureTests>testConstructorRetweet</failureTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582133137427" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582133337106" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582133596553" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582133744377" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582133802965" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582133939753" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582134026643" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582134151391" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582134613726" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582135136006" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582136976489" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testRetweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1582138954470" completion="1.0" testRunName="objectstructures.TwitterAccountTest" successCount="6">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
