<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="ObservableList">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the abstract ObservableList superclass."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.ObservableList"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the ObservableListListener interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.ObservableListListener"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the ObservableHighscoreList class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.ObservableHighscoreList"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the ObservableHighscoreList class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.ObservableHighscoreList"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the ObservableHighscoreListProgram class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.ObservableHighscoreListProgram"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the ObservableHighscoreListProgram class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.ObservableHighscoreListProgram"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the ObservableHighscoreList JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.ObservableHighscoreListTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the ObservableList JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.ObservableListTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="patterns.observable.Observable*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584974518761" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="10" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class ObservableList {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978918814" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.Collections;&#xA;import java.util.Comparator;&#xA;import java.util.List;&#xA;&#xA;final class reverseSortObs implements Comparator&lt;Integer>  { &#xA;&#x9;@Override&#xA;&#x9;public int compare(Integer a, Integer b) { &#xA;        return a - b; &#xA;    }&#xA;} &#xA;public class ObservableList {&#xA;&#x9;private int maxSize;&#xA;&#x9;private List&lt;Integer> results = new ArrayList&lt;>();&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;//- konstruktøren tar inn maks antall resultater som lista skal kunne holde. Denne verdien må brukes av addResult, slik at resultater som er for dårlige kastes.&#xA;&#x9;public ObservableHighscoreList(int maxSize) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.maxSize = maxSize;&#xA;&#x9;}&#xA;&#x9;//- returnerer antall elementer i lista, som altså aldri skal overstige maks-antallet&#xA;&#x9;public int size() { return this.results.size(); }&#xA;&#x9;//- returnerer resultatet i posisjonen angitt av argumentet&#xA;&#x9;public int getElement(int i) {&#xA;&#x9;&#x9;return this.results.get(i);&#xA;&#x9;}&#xA;&#x9;//- registrere et nytt resultat, og dersom resultatet er godt nok til å komme med på lista, så legges det inn på riktig plass. Dersom lista blir for lang, så må dårligste resultat kastes. Alle registrerte lyttere må få beskjed om en evt. endring av lista, inkludert på hvilken posisjon som ble endret.&#xA;&#x9;public void addResult(int n) {&#xA;&#x9;&#x9;this.results.add(n);&#xA;&#x9;&#x9;Collections.sort(results, new reverseSortObs());&#xA;&#x9;&#x9;if (this.results.size() > maxSize) this.results.remove(this.results.size()-1);&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.results.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if (this.results.get(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;//- registrerer en ny lytter&#xA;&#x9;public void addObservableListListener(ObservableListListener oll) {&#xA;&#x9;&#x9;observableListListener.add(oll);&#xA;&#x9;}&#xA;&#x9;//- fjerner en tidligere registrert lytter&#xA;&#x9;public void removeObservableListListener(ObservableListListener oll) {&#xA;&#x9;&#x9;observableListListener.remove(oll);&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="29" end="-89"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978923523" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="L" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="656" end="-1383"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978925861" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="52" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="t" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="678" end="-1350"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978972718" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="51" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";&#xA;import java.util.Collections;&#xA;import java.util.Comparator;&#xA;import java.util.List;&#xA;&#xA;final class reverseSortObs implements Comparator&lt;Integer>  { &#xA;&#x9;@Override&#xA;&#x9;public int compare(Integer a, Integer b) { &#xA;        return a - b; &#xA;    }&#xA;} &#xA;public class ObservableList {&#xA;&#x9;private int maxSize;&#xA;&#x9;private Collection&lt;Object> elements;&#xA;&#x9;private List&lt;Integer> results = new ArrayList&lt;>();&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;public ObservableList(int maxSize) {&#xA;&#x9;&#x9;this.maxSize = maxSize;&#xA;&#x9;}&#xA;&#x9;public int size() { return this.results.size(); }" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="84" end="-1126"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978992494" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="50" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;public ObservableList(int maxSize) {&#xA;&#x9;&#x9;this.maxSize = maxSize;&#xA;&#x9;}&#xA;&#x9;public int size() { return this.elements.size(); }&#xA;&#x9;public int getElement(int i) {&#xA;&#x9;&#x9;return this.elemen" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="423" end="-1074"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979050690" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="50" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" = new ArrayList&lt;>()" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="407" end="-1329"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979273266" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="55" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="n) {&#xA;&#x9;&#x9;int i = 0;&#xA;&#x9;&#x9;for (Object o : this.elements) {&#xA;&#x9;&#x9;&#x9;if (i == n) return o;&#xA;&#x9;&#x9;&#x9;i++;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return null" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="657" end="-1065"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979280191" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="54" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="748" end="-1061"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979292446" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="55" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Object getElement(int n) {&#xA;&#x9;&#x9;int i = 0;&#xA;&#x9;&#x9;for (Object o : this.elements) {&#xA;&#x9;&#x9;&#x9;if (i == n) return o;&#xA;&#x9;&#x9;&#x9;i++;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return null;" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="638" end="-1064"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979410635" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="51" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List&lt;Object> l = new ArrayList&lt;>(elements);&#xA;&#x9;&#x9;return l.get(n);&#xA;&#x9;}&#xA;&#x9;//- registrere et nytt resultat, og dersom resultatet er godt nok til å komme med på lista, så legges det inn på riktig plass. Dersom lista blir for lang, så må dårligste resultat kastes. Alle registrerte lyttere må få beskjed om en evt. endring av lista, inkludert på hvilken posisjon som ble endret.&#xA;&#x9;public void addResult(int n) {&#xA;&#x9;&#x9;this.elements.add(n);&#xA;&#x9;&#x9;Collections.sort(elemen" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="667" end="-678"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979490419" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="50" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List&lt;Integer> elements = new ArrayList&lt;>();&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;public ObservableList(int maxSize) {&#xA;&#x9;&#x9;this.maxSize = maxSize;&#xA;&#x9;}&#xA;&#x9;public int size() { return this.elements.size(); }&#xA;&#x9;public int getElement(int i) {&#xA;&#x9;&#x9;return this.elements.get(i);&#xA;&#x9;}&#xA;&#x9;//- registrere et nytt resultat, og dersom resultatet er godt nok til å komme med på lista, så legges det inn på riktig plass. Dersom lista blir for lang, så må dårligste resultat kastes. Alle registrerte lyttere må få beskjed om en evt. endring av lista, inkludert på hvilken posisjon som ble endret.&#xA;&#x9;public void addResult(int n) {&#xA;&#x9;&#x9;this.elements.add(n);&#xA;&#x9;&#x9;Collections.sort(elements, new reverseSortObs());&#xA;&#x9;&#x9;if (this.elements.size() > maxSize) this.elements.remove(this.elements.size()-1);&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.elements.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if (this.elemen" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="380" end="-436"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979504344" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="49" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="s" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="84" end="-1644"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979618457" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="52" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="abstract class ObservableList {&#xA;&#x9;private int maxSize;&#xA;&#x9;private List&lt;Integer> elements = new ArrayList&lt;>();&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;public ObservableList(int maxSize) {&#xA;&#x9;&#x9;this.maxSize = maxSize;&#xA;&#x9;}&#xA;&#x9;public int size() { return this.elements.size(); }&#xA;&#x9;public int getElement(int i) {&#xA;&#x9;&#x9;return this.elements.get(i);&#xA;&#x9;}&#xA;&#x9;abstract boolean acceptsElement(Object o) {&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="297" end="-1071"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979659065" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="49" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";&#xA;&#x9;public void addElemen" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="713" end="-743"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979711276" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="49" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="throws IllegalArgumentException " edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="746" end="-734"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979781657" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="44" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public abstract class ObservableList {&#xA;&#x9;private int maxSize;&#xA;&#x9;private List&lt;Object> elements = new ArrayList&lt;>();&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;public ObservableList(int maxSize) {&#xA;&#x9;&#x9;this.maxSize = maxSize;&#xA;&#x9;}&#xA;&#x9;public int size() { return this.elements.size(); }&#xA;&#x9;public int getElement(i) {&#xA;&#x9;&#x9;return this.elements.get(i);&#xA;&#x9;}&#xA;&#x9;abstract boolean acceptsElement(Object o);&#xA;&#x9;public void addElement(Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (this.acceptsElement(o))&#xA;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;Collections.sort(elements, new reverseSortObs());&#xA;&#x9;&#x9;if (this.elements.size() > maxSize) this.elements.remove(this.elements.size()-1);&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.elements.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if (this.elements.get(i) == o" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="140" end="-422"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979787065" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="44" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="nt i" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="478" end="-912"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979795476" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="44" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Objec" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="462" end="-930"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979805839" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="44" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;if (this.elements.size() > maxSize) this.elements.remove(this.elements.size()-1);&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.elements.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (this.elements.get(i) == o) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="664" end="-395"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979819059" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="43" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="698" end="-577"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979912472" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int pos, Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.set(pos,o);&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.elements.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (this.elements.get(i) == o) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void addElement(" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="591" end="-685"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979933335" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="51" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="oll.listChanged(this, pos);" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="784" end="-722"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979946702" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="51" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.size()-1" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="1129" end="-403"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979955545" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="49" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="oll.listChanged(this, this.size()-1);" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="1018" end="-395"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979988496" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="48" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public void addElement(int pos, Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.set(pos,o);&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, pos);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="1069" end="-88"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979998043" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="48" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="removeElement(int pos) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.remove(pos" edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="1081" end="-199"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980005986" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="45" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="1215" end="-91"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980007239" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="45" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.27/@edit" start="1209" end="-94"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980066346" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="42" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.28/@edit" start="954" end="-240"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980076777" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="45" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, this.size()-1);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.29/@edit" start="954" end="-241"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980099013" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="56" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=", Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.remove(pos);&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, pos);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void addObservableListListener(ObservableListListener oll) {&#xA;&#x9;&#x9;observableListListener.add(oll);&#xA;&#x9;}&#xA;&#x9;//- fjerner en tidligere registrert lytter&#xA;&#x9;public void removeObservableListListener(ObservableListListener oll) {&#xA;&#x9;&#x9;observableListListener.remove(oll);&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.30/@edit" start="1102" end="-88"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980103919" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="56" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rotected p" edit="/1/@proposals.0/@proposals.0/@attempts.31/@edit" start="1070" end="-611"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980114272" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="56" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ndexOutOfBounds" edit="/1/@proposals.0/@proposals.0/@attempts.32/@edit" start="1132" end="-545"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980123295" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="56" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="v" edit="/1/@proposals.0/@proposals.0/@attempts.33/@edit" start="1079" end="-605"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980132337" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="56" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rotected void addElement(int pos, Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.set(pos,o);&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, pos);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;protected" edit="/1/@proposals.0/@proposals.0/@attempts.34/@edit" start="569" end="-854"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980172710" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="52" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List&lt;Object> elements = new ArrayList&lt;>();&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();" edit="/1/@proposals.0/@proposals.0/@attempts.35/@edit" start="188" end="-1290"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980178487" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="50" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="L" edit="/1/@proposals.0/@proposals.0/@attempts.36/@edit" start="74" end="-1468"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980184125" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="45" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.37/@edit" start="1456" end="-2"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980258644" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="51" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Comparator;&#xA;import java.util.List;&#xA;class reverseSortObs implements Comparator&lt;Integer>  { &#xA;&#x9;@Override&#xA;&#x9;public int compare(Integer a, Integer b) { &#xA;        return a - b; &#xA;    }&#xA;} " edit="/1/@proposals.0/@proposals.0/@attempts.38/@edit" start="74" end="-1379"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980273779" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="46" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.39/@edit" start="109" end="-1378"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980927269" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="49" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Iterator;&#xA;import java.util.List;&#xA;&#xA;public abstract class ObservableList {&#xA;&#x9;private List&lt;Object> elements = new ArrayList&lt;>();&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;public int size() { return this.elements.size(); }&#xA;&#x9;public Object getElement(int i) {&#xA;&#x9;&#x9;return this.elements.get(i);&#xA;&#x9;}&#xA;&#x9;abstract boolean acceptsElement(Object o);&#xA;&#x9;private void sortElements() {&#xA;&#x9;}&#xA;&#x9;protected void addElement(int pos, Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.set(pos,o);" edit="/1/@proposals.0/@proposals.0/@attempts.40/@edit" start="103" end="-888"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980954802" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="54" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="final class reverseSortObs implements Comparator&lt;Integer>  { &#xA;&#x9;@Override&#xA;&#x9;public int compare(Integer a, Integer b) { &#xA;        return a - b; &#xA;    }&#xA;} " edit="/1/@proposals.0/@proposals.0/@attempts.41/@edit" start="136" end="-1411"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980956958" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="55" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.42/@edit" start="136" end="-1560"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980988032" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="55" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Object a, Object b) { &#xA;        return (int) a - (int)" edit="/1/@proposals.0/@proposals.0/@attempts.43/@edit" start="230" end="-1424"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980995632" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="55" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Object" edit="/1/@proposals.0/@proposals.0/@attempts.44/@edit" start="186" end="-1514"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981049157" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="47" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public abstract class ObservableList {&#xA;&#x9;private List&lt;Object> elements = new ArrayList&lt;>();&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;public int size() { return this.elements.size(); }&#xA;&#x9;public Object getElement(int i) {&#xA;&#x9;&#x9;return this.elements.get(i);&#xA;&#x9;}&#xA;&#x9;abstract boolean acceptsElement(Object o);&#xA;&#x9;protected void addElement(int pos, Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.set(pos,o);" edit="/1/@proposals.0/@proposals.0/@attempts.45/@edit" start="137" end="-887"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981068187" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="47" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.46/@edit" start="1135" end="-374"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981119261" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="48" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.elements&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {" edit="/1/@proposals.0/@proposals.0/@attempts.47/@edit" start="557" end="-914"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981140001" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="48" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private List&lt;Object> l = new ArrayList&lt;>(this.elements);" edit="/1/@proposals.0/@proposals.0/@attempts.48/@edit" start="557" end="-953"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981159323" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="48" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="L" edit="/1/@proposals.0/@proposals.0/@attempts.49/@edit" start="557" end="-1000"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981250565" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.elements = new ArrayList&lt;>();&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {&#xA;&#x9;&#x9;&#x9;this.elements.set(pos,o);&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;if (i == pos) this.elements.add(o);&#xA;&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.50/@edit" start="608" end="-885"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981256659" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="52" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f" edit="/1/@proposals.0/@proposals.0/@attempts.51/@edit" start="685" end="-970"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981258370" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="51" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.52/@edit" start="765" end="-885"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981274762" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="52" warningCount="1" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;this.elements.add(l.get(i));&#xA;&#x9;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.53/@edit" start="765" end="-886"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981638764" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="52" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="elements." edit="/1/@proposals.0/@proposals.0/@attempts.54/@edit" start="1130" end="-554"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981902523" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;yoyo&quot;);&#xA;&#x9;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.55/@edit" start="803" end="-890"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981985476" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.0/@attempts.56/@edit" start="657" end="-1045"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981997731" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &amp;&amp; pos &lt;= this.size()" edit="/1/@proposals.0/@proposals.0/@attempts.57/@edit" start="657" end="-1046"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982061991" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (pos >= 0 &amp;&amp; pos &lt;= this.size()) {&#xA;&#x9;&#x9;&#x9;this.elements = new ArrayList&lt;>();" edit="/1/@proposals.0/@proposals.0/@attempts.58/@edit" start="608" end="-1043"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982068136" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (pos >= 0 &amp;&amp; pos &lt;= this.size()) {&#xA;&#x9;&#x9;&#x9;List&lt;Object> l = new ArrayList&lt;>(this.elements);" edit="/1/@proposals.0/@proposals.0/@attempts.59/@edit" start="557" end="-1081"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982104599" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="||" edit="/1/@proposals.0/@proposals.0/@attempts.60/@edit" start="570" end="-1155"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982109541" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" " edit="/1/@proposals.0/@proposals.0/@attempts.61/@edit" start="570" end="-1154"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982111079" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&amp;&amp;" edit="/1/@proposals.0/@proposals.0/@attempts.62/@edit" start="570" end="-1155"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982123278" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="54" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.print(pos >= 0 &amp;&amp; pos &lt;= this.size());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.63/@edit" start="557" end="-1170"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982132773" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f" edit="/1/@proposals.0/@proposals.0/@attempts.64/@edit" start="858" end="-889"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982174396" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="54" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (l.size() == 0) this.elements.add(o);&#xA;&#x9;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.65/@edit" start="858" end="-890"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982210806" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="54" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+1" edit="/1/@proposals.0/@proposals.0/@attempts.66/@edit" start="768" end="-1024"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982228802" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="55" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (i &lt; l.size()) break;&#xA;&#x9;&#x9;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.67/@edit" start="823" end="-971"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982234568" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="55" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=">" edit="/1/@proposals.0/@proposals.0/@attempts.68/@edit" start="829" end="-993"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982268305" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="58" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (l.size() == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;} else {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;for (int i = 0; i &lt; l.size()+1; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (i == pos) this.elements.add(o);&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (i > l.size()) break;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements.add(l.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.69/@edit" start="740" end="-894"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982311404" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="61" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="{&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;break;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements.add(l.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.70/@edit" start="910" end="-905"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="64" charEnd="84" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982325071" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="60" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.71/@edit" start="786" end="-1086"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982335066" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="60" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.elements.add(o);&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;if (l.size() == 0) {" edit="/1/@proposals.0/@proposals.0/@attempts.72/@edit" start="740" end="-1083"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982341138" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="51" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.73/@edit" start="769" end="-893"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982416586" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="58" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (l.size() == 0) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (i-1 == pos) this.elements.add(o);&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements.add(l.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.74/@edit" start="740" end="-898"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982465152" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="58" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" " edit="/1/@proposals.0/@proposals.0/@attempts.75/@edit" start="854" end="-972"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982516644" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="60" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (l.size() == 0) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;} else if (pos > l.size()){&#xA;&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;List&lt;Object> l = new ArrayList&lt;>(this.elements);&#xA;&#x9;&#x9;&#x9;&#x9;this.elements = new ArrayList&lt;>();" edit="/1/@proposals.0/@proposals.0/@attempts.76/@edit" start="650" end="-1025"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982538195" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="58" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" || (pos > l.size())) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;this.elements.add(o);" edit="/1/@proposals.0/@proposals.0/@attempts.77/@edit" start="667" end="-1129"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982548636" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="58" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List&lt;Object> l = new ArrayList&lt;>(this.elements);&#xA;&#x9;&#x9;&#x9;if (l.size() == 0 || (pos > l.size())) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;} else {" edit="/1/@proposals.0/@proposals.0/@attempts.78/@edit" start="650" end="-1064"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982557305" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="58" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.0/@attempts.79/@edit" start="729" end="-1119"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982654320" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="60" warningCount="2" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Not an Integer!&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.80/@edit" start="1314" end="-535"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="93" charEnd="111" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982694690" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="58" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="L" edit="/1/@proposals.0/@proposals.0/@attempts.81/@edit" start="74" end="-1787"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983349947" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="61" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (pos >= 0 &amp;&amp; pos &lt;= this.size()) {&#xA;&#x9;&#x9;&#x9;List&lt;Object> l = new ArrayList&lt;>(this.elements);&#xA;&#x9;&#x9;&#x9;if (l.size() == 0 || (pos >= l.size())) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;this.elements = new ArrayList&lt;>();&#xA;&#x9;&#x9;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (i == pos) this.elements.add(o);&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements.add(l.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, pos);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Out of bounds!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;protected void addElement(Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (this.acceptsElement(o)) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, this.elements.size()-1);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Not an Integer!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;protected void removeElement(int pos) throws IndexOutOfBoundsException {&#xA;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt; this.size()) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.remove(pos);&#x9;&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, pos);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Out of bounds!&quot;);" edit="/1/@proposals.0/@proposals.0/@attempts.82/@edit" start="501" end="-276"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983372552" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="61" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=",IllegalArgumentException" edit="/1/@proposals.0/@proposals.0/@attempts.83/@edit" start="496" end="-1440"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983389033" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="61" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" " edit="/1/@proposals.0/@proposals.0/@attempts.84/@edit" start="496" end="-1439"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983393302" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="61" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=",IllegalArgumentException" edit="/1/@proposals.0/@proposals.0/@attempts.85/@edit" start="496" end="-1440"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983409591" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="61" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" " edit="/1/@proposals.0/@proposals.0/@attempts.86/@edit" start="496" end="-1439"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983418451" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="61" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ndexOutOfBounds" edit="/1/@proposals.0/@proposals.0/@attempts.87/@edit" start="473" end="-1449"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983441620" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="65" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="try {&#xA;&#x9;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt;= this.size()) {&#xA;&#x9;&#x9;&#x9;&#x9;List&lt;Object> l = new ArrayList&lt;>(this.elements);&#xA;&#x9;&#x9;&#x9;&#x9;if (l.size() == 0 || (pos >= l.size())) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements = new ArrayList&lt;>();&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (i == pos) this.elements.add(o);&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements.add(l.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, pos);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Out of bounds!&quot;);&#xA;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;} except (IllegalArgumentException iae) {&#xA;&#x9;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.88/@edit" start="502" end="-922"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983456795" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="65" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.error(&quot;Not an Integer!&quot;);" edit="/1/@proposals.0/@proposals.0/@attempts.89/@edit" start="1094" end="-922"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983461805" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="65" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="catch" edit="/1/@proposals.0/@proposals.0/@attempts.90/@edit" start="1051" end="-995"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983478492" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="65" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="println" edit="/1/@proposals.0/@proposals.0/@attempts.91/@edit" start="1104" end="-942"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983495445" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="65" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="error(iae" edit="/1/@proposals.0/@proposals.0/@attempts.92/@edit" start="1104" end="-924"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983545008" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="65" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="prinln(&quot;Not an Integer!&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.93/@edit" start="1104" end="-924"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983547949" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="65" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="t" edit="/1/@proposals.0/@proposals.0/@attempts.94/@edit" start="1108" end="-944"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984736462" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="66" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List&lt;Object> getElements() { return this.elements; }&#xA;&#x9;public " edit="/1/@proposals.0/@proposals.0/@attempts.95/@edit" start="314" end="-1739"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984829167" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="76" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ublic void addElement(Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (this.acceptsElement(o)) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, this.elements.size()-1);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Not an Integer!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;p" edit="/1/@proposals.0/@proposals.0/@attempts.96/@edit" start="1527" end="-587"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984833171" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="76" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="N" edit="/1/@proposals.0/@proposals.0/@attempts.97/@edit" start="1548" end="-888"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984845328" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="69" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="{&#xA;&#x9;&#x9;this.elements.add(o);" edit="/1/@proposals.0/@proposals.0/@attempts.98/@edit" start="1560" end="-593"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984884875" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="67" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="vois setElements() { return this.elements; }&#xA;&#x9;public Object getElement(int i) {&#xA;&#x9;&#x9;return this.elements.get(i);&#xA;&#x9;}&#xA;&#x9;abstract boolean acceptsElement(Object o);&#xA;&#x9;protected void addElement(int pos, Object o) throws IndexOutOfBoundsException {&#xA;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;if (pos >= 0 &amp;&amp; pos &lt;= this.size()) {&#xA;&#x9;&#x9;&#x9;&#x9;List&lt;Object> l = new ArrayList&lt;>(this.elements);&#xA;&#x9;&#x9;&#x9;&#x9;if (l.size() == 0 || (pos >= l.size())) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements = new ArrayList&lt;>();&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (i == pos) this.elements.add(o);&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;this.elements.add(l.get(i));&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, pos);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Out of bounds!&quot;);&#xA;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;} catch (IllegalArgumentException iae) {&#xA;&#x9;&#x9;&#x9;System.out.println(&quot;Not an Integer!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;protected void addElement(Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (this.acceptsElement(o)) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;oll.listChanged(this, this.elements.size()-1);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Not an Integer!&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.99/@edit" start="375" end="-593"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984888119" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="67" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="d" edit="/1/@proposals.0/@proposals.0/@attempts.100/@edit" start="378" end="-1788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984966217" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="67" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List&lt;Object> l) { this.elements = new ArrayList&lt;>(l)" edit="/1/@proposals.0/@proposals.0/@attempts.101/@edit" start="392" end="-1751"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584985079102" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="66" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="O" edit="/1/@proposals.0/@proposals.0/@attempts.102/@edit" start="375" end="-1738"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584985216703" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="73" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="addElementN(Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (this.acceptsElement(o)) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Not an Integer!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;protected void " edit="/1/@proposals.0/@proposals.0/@attempts.103/@edit" start="1541" end="-573"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988505416" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="66" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="r" edit="/1/@proposals.0/@proposals.0/@attempts.104/@edit" start="1541" end="-572"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988567737" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="66" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.105/@edit" start="2113"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988595690" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="73" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="addElementN(Object o) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (this.acceptsElement(o)) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.elements.add(o);&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Not an Integer!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;protected void " edit="/1/@proposals.0/@proposals.0/@attempts.106/@edit" start="1541" end="-573"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988964725" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="73" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.107/@edit" start="1878" end="-442"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989060172" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="72" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="O" edit="/1/@proposals.0/@proposals.0/@attempts.108/@edit" start="314" end="-1945"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989331309" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="72" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.109/@edit" start="2259"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989603434" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="72" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="otected" edit="/1/@proposals.0/@proposals.0/@attempts.110/@edit" start="123" end="-2132"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989782758" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="72" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="otected" edit="/1/@proposals.0/@proposals.0/@attempts.111/@edit" start="177" end="-2080"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978097747" resourcePath="/ovinger/src/patterns/observable/ObservableListListener.java" sizeMeasure="5" className="patterns.observable.ObservableListListener">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public interface ObservableListListener {&#xA;&#x9;public void listChanged(HighscoreList hl, int pos);&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978108451" resourcePath="/ovinger/src/patterns/observable/ObservableListListener.java" sizeMeasure="5" className="patterns.observable.ObservableListListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Observabl" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="97" end="-23"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978859442" resourcePath="/ovinger/src/patterns/observable/ObservableListListener.java" sizeMeasure="13" className="patterns.observable.ObservableListListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;final class reverseSortObs implements Comparator&lt;Integer>  { &#xA;&#x9;@Override&#xA;&#x9;public int compare(Integer a, Integer b) { &#xA;        return a - b; &#xA;    }&#xA;} &#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="30" end="-99"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978889305" resourcePath="/ovinger/src/patterns/observable/ObservableListListener.java" sizeMeasure="5" className="patterns.observable.ObservableListListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="30" end="-98"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983022603" resourcePath="/ovinger/src/patterns/observable/ObservableListListener.java" sizeMeasure="6" className="patterns.observable.ObservableListListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="126" end="-3"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584974541493" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="10" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class ObservableHighscoreList {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978006345" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="51" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.List;&#xA;import java.util.ArrayList;&#xA;import java.util.Collections;&#xA;import java.util.Comparator;&#xA;&#xA;class reverseSort implements Comparator&lt;Integer>  { &#xA;&#x9;@Override&#xA;&#x9;public int compare(Integer a, Integer b) { &#xA;        return a - b; &#xA;    }&#xA;} &#xA;public class ObservableHighscoreList {&#xA;&#x9;private int maxSize;&#xA;&#x9;private List&lt;Integer> results = new ArrayList&lt;>();&#xA;&#x9;private List&lt;HighscoreListListener> highscoreListListener = new ArrayList&lt;>();&#xA;&#x9;//- konstruktøren tar inn maks antall resultater som lista skal kunne holde. Denne verdien må brukes av addResult, slik at resultater som er for dårlige kastes.&#xA;&#x9;public HighscoreList(int maxSize) {&#xA;&#x9;&#x9;this.maxSize = maxSize;&#xA;&#x9;}&#xA;&#x9;//- returnerer antall elementer i lista, som altså aldri skal overstige maks-antallet&#xA;&#x9;public int size() { return this.results.size(); }&#xA;&#x9;//- returnerer resultatet i posisjonen angitt av argumentet&#xA;&#x9;public int getElement(int i) {&#xA;&#x9;&#x9;return this.results.get(i);&#xA;&#x9;}&#xA;&#x9;//- registrere et nytt resultat, og dersom resultatet er godt nok til å komme med på lista, så legges det inn på riktig plass. Dersom lista blir for lang, så må dårligste resultat kastes. Alle registrerte lyttere må få beskjed om en evt. endring av lista, inkludert på hvilken posisjon som ble endret.&#xA;&#x9;public void addResult(int n) {&#xA;&#x9;&#x9;this.results.add(n);&#xA;&#x9;&#x9;Collections.sort(results, new reverseSort());&#xA;&#x9;&#x9;if (this.results.size() > maxSize) this.results.remove(this.results.size()-1);&#xA;&#x9;&#x9;for (HighscoreListListener hl: highscoreListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.results.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if (this.results.get(i) == n) hl.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;//- registrerer en ny lytter&#xA;&#x9;public void addHighscoreListListener(HighscoreListListener hl) {&#xA;&#x9;&#x9;highscoreListListener.add(hl);&#xA;&#x9;}&#xA;&#x9;//- fjerner en tidligere registrert lytter&#xA;&#x9;public void removeHighscoreListListener(HighscoreListListener hl) {&#xA;&#x9;&#x9;highscoreListListener.remove(hl);&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.0/@edit" start="29" end="-88"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978011040" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="51" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Observable" edit="/1/@proposals.0/@proposals.2/@attempts.1/@edit" start="644" end="-1364"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978079083" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="52" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends ObservableList{&#xA;&#x9;private int maxSize;&#xA;&#x9;private List&lt;Integer> results = new ArrayList&lt;>();&#xA;&#x9;private List&lt;HighscoreListListener> highscoreListListener = new ArrayList&lt;>();&#xA;&#x9;//- konstruktøren tar inn maks antall resultater som lista skal kunne holde. Denne verdien må brukes av addResult, slik at resultater som er for dårlige kastes.&#xA;&#x9;public ObservableHighscoreList(int maxSize) {&#xA;&#x9;&#x9;super();" edit="/1/@proposals.0/@proposals.2/@attempts.2/@edit" start="318" end="-1336"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978182062" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="52" errorCount="2" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ObservableListListener> observabl" edit="/1/@proposals.0/@proposals.2/@attempts.3/@edit" start="430" end="-1590"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="35" charStart="1648" charEnd="1659" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978197075" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="52" errorCount="2" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ObservableListListener olll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.results.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if (this.results.get(i) == n) ol" edit="/1/@proposals.0/@proposals.2/@attempts.4/@edit" start="1505" end="-407"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="35" charStart="1653" charEnd="1664" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978225348" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="48" errorCount="2" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ObservableListListener oll) {&#xA;&#x9;&#x9;observableListListener.add(oll);&#xA;&#x9;}&#xA;&#x9;//- fjerner en tidligere registrert lytter&#xA;&#x9;public void removeHighscoreListListener(HighscoreListListener oll) {&#xA;&#x9;&#x9;observableListListener.remove(oll);" edit="/1/@proposals.0/@proposals.2/@attempts.5/@edit" start="1755" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="35" charStart="1653" charEnd="1664" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978235278" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="48" errorCount="2" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=":" edit="/1/@proposals.0/@proposals.2/@attempts.6/@edit" start="1531" end="-449"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="35" charStart="1652" charEnd="1663" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978252371" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" errorCount="2" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.7/@edit" start="140" end="-1841"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="36" charStart="1662" charEnd="1673" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978260542" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" errorCount="2" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;private " edit="/1/@proposals.0/@proposals.2/@attempts.8/@edit" start="140" end="-1841"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="36" charStart="1661" charEnd="1672" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978271738" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" errorCount="2" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="final" edit="/1/@proposals.0/@proposals.2/@attempts.9/@edit" start="141" end="-1842"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="36" charStart="1659" charEnd="1670" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978311650" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" errorCount="1" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Obs" edit="/1/@proposals.0/@proposals.2/@attempts.10/@edit" start="164" end="-1824"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="-1" charStart="153" charEnd="164" severity="2" problemCategory="-1" problemType="-1"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978319116" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" errorCount="1" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Obs" edit="/1/@proposals.0/@proposals.2/@attempts.11/@edit" start="1422" end="-569"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="-1" charStart="153" charEnd="164" severity="2" problemCategory="-1" problemType="-1"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978353375" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ObservableListListener(ObservableListListener oll) {&#xA;&#x9;&#x9;observableListListener.add(oll);&#xA;&#x9;}&#xA;&#x9;//- fjerner en tidligere registrert lytter&#xA;&#x9;public void removeObservableListListener(Observabl" edit="/1/@proposals.0/@proposals.2/@attempts.12/@edit" start="1745" end="-66"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="46" charStart="1984" charEnd="1987" severity="1" problemCategory="90" problemType="1200"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978676619" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.2/@attempts.13/@edit" start="1996"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584979492611" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="42" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.2/@attempts.14/@edit" start="140" end="-1705"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980209771" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="47" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;&#x9;public void addObservableListListener(ObservableListListener oll) {&#xA;&#x9;&#x9;observableListListener.add(oll);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void removeObservableListListener(ObservableListListener oll) {&#xA;&#x9;&#x9;observableListListener.remove(oll);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;boolean acceptsElement(Object o) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return false" edit="/1/@proposals.0/@proposals.2/@attempts.15/@edit" start="1549" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980279216" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="44" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="final class reverseSortObs implements Comparator&lt;Integer>  { &#xA;&#x9;@Override&#xA;&#x9;public int compare(Integer a, Integer b) { &#xA;        return a - b; &#xA;    }&#xA;} &#xA;public class ObservableHighscoreList extends ObservableList{&#xA;&#x9;private int maxSize;&#xA;&#x9;private List&lt;Integer> results = new ArrayList&lt;>();&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;//- konstruktøren tar inn maks antall resultater som lista skal kunne holde. Denne verdien må brukes av addResult, slik at resultater som er for dårlige kastes.&#xA;&#x9;public ObservableHighscoreList(int maxSize) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.maxSize = maxSize;&#xA;&#x9;}&#xA;&#x9;//- returnerer antall elementer i lista, som altså aldri skal overstige maks-antallet&#xA;&#x9;public int size() { return this.results.size(); }&#xA;&#x9;//- returnerer resultatet i posisjonen angitt av argumentet&#xA;&#x9;public int getElement(int i) {&#xA;&#x9;&#x9;return this.results.get(i);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addResult(int n) {&#xA;&#x9;&#x9;this.results.add(n);&#xA;&#x9;&#x9;Collections.sort(results, new reverseSortObs());&#xA;&#x9;&#x9;if (this.results.size() > maxSize) this.results.remove(this.results.size()-1);&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.results.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if (this.results.get(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.16/@edit" start="139" end="-111"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980296268" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.17/@edit" start="756" end="-482"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980301686" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="37" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.2/@attempts.18/@edit" start="507" end="-569"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980302602" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.19/@edit" start="507" end="-570"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980304703" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.20/@edit" start="595" end="-482"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980305516" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="37" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.21/@edit" start="595" end="-481"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980321984" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="37" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;&#x9;boolean acceptsElement(Object o) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;public void addResult(int n) {&#xA;&#x9;&#x9;this.results.add(n);&#xA;&#x9;&#x9;Collections.sort(results, new reverseSortObs());&#xA;&#x9;&#x9;if (this.results.size() > maxSize) this.results.remove(this.results.size()-1);&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.results.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if (this.results.get(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.22/@edit" start="596" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980362273" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="36" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return (o instanceof Integer)" edit="/1/@proposals.0/@proposals.2/@attempts.23/@edit" start="644" end="-383"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980364540" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="36" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.2/@attempts.24/@edit" start="673" end="-383"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980366792" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="36" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="o instanceof Integer" edit="/1/@proposals.0/@proposals.2/@attempts.25/@edit" start="651" end="-384"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980369579" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="36" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(o instanceof Integer)" edit="/1/@proposals.0/@proposals.2/@attempts.26/@edit" start="651" end="-384"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980950386" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="30" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.2/@attempts.27/@edit" start="139" end="-767"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981052569" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="36" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="final class reverseSortObs implements Comparator&lt;Integer>  { &#xA;&#x9;@Override&#xA;&#x9;public int compare(Integer a, Integer b) { &#xA;        return a - b; &#xA;    }&#xA;} &#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.28/@edit" start="139" end="-768"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981855084" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="boolean b = (o instanceof Integer);&#xA;&#x9;&#x9;System.out.println(b);&#xA;&#x9;&#x9;return b" edit="/1/@proposals.0/@proposals.2/@attempts.29/@edit" start="644" end="-384"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981924373" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="37" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="r" edit="/1/@proposals.0/@proposals.2/@attempts.30/@edit" start="682" end="-391"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981930682" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="36" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return (o instanceof Integer)" edit="/1/@proposals.0/@proposals.2/@attempts.31/@edit" start="644" end="-384"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982758597" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="36" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.2/@attempts.32/@edit" start="1056"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983168090" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="35" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="O" edit="/1/@proposals.0/@proposals.2/@attempts.33/@edit" start="386" end="-618"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983174270" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="35" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="elemen" edit="/1/@proposals.0/@proposals.2/@attempts.34/@edit" start="665" end="-335"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983261595" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="35" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="addElement" edit="/1/@proposals.0/@proposals.2/@attempts.35/@edit" start="665" end="-329"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983277262" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="35" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//" edit="/1/@proposals.0/@proposals.2/@attempts.36/@edit" start="682" end="-322"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983301373" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="35" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="size() > maxSize) this.removeElement(thi" edit="/1/@proposals.0/@proposals.2/@attempts.37/@edit" start="744" end="-205"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983639157" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="35" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if ((int) this.getElemen" edit="/1/@proposals.0/@proposals.2/@attempts.38/@edit" start="886" end="-53"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983675121" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="35" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Collections.sort(elemen" edit="/1/@proposals.0/@proposals.2/@attempts.39/@edit" start="682" end="-280"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983700691" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="36" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;Collections.sort(" edit="/1/@proposals.0/@proposals.2/@attempts.40/@edit" start="682" end="-278"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983702711" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="36" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="s" edit="/1/@proposals.0/@proposals.2/@attempts.41/@edit" start="702" end="-278"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983718335" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="38" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (int i = 0; i &lt; this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;if ((int) this.getElement(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.42/@edit" start="682" end="-299"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983747233" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="39" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List&lt;Object> l = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (int i = 0; i &lt; this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;el" edit="/1/@proposals.0/@proposals.2/@attempts.43/@edit" start="682" end="-303"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983758451" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="39" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="l.add(this.getElement(i));" edit="/1/@proposals.0/@proposals.2/@attempts.44/@edit" start="767" end="-303"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983781966" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="40" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Object>  { &#xA;&#x9;@Override&#xA;&#x9;public int compare(Object a, Object b) { &#xA;        return (int)a - (int)b; &#xA;    }&#xA;} &#xA;public class ObservableHighscoreList extends ObservableList{&#xA;&#x9;private int maxSize;&#xA;&#x9;private List&lt;ObservableListListener> observableListListener = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public ObservableHighscoreList(int maxSize) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.maxSize = maxSize;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;boolean acceptsElement(Object o) {&#xA;&#x9;&#x9;return (o instanceof Integer);&#xA;&#x9;}&#xA;&#x9;public void addResult(int n) {&#xA;&#x9;&#x9;this.addElement(n);&#xA;&#x9;&#x9;List&lt;Object> l = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (int i = 0; i &lt; this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;l.add(this.getElement(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;Collections.sort(l" edit="/1/@proposals.0/@proposals.2/@attempts.45/@edit" start="188" end="-278"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983784539" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="39" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="C" edit="/1/@proposals.0/@proposals.2/@attempts.46/@edit" start="807" end="-295"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983800384" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="42" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int i = 0; i &lt; this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;l.add(this.getElement(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;for (" edit="/1/@proposals.0/@proposals.2/@attempts.47/@edit" start="921" end="-182"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983803728" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="42" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="." edit="/1/@proposals.0/@proposals.2/@attempts.48/@edit" start="936" end="-242"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983805574" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="42" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="l" edit="/1/@proposals.0/@proposals.2/@attempts.49/@edit" start="936" end="-243"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983820653" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="43" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// make copy of array&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.50/@edit" start="689" end="-491"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983883003" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// make copy of array&#xA;&#x9;&#x9;List&lt;Object> l = new ArrayList&lt;>();&#xA;&#x9;&#x9;l.add(n);&#xA;&#x9;&#x9;for (int i = 0; i &lt; this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;l.add(this.getElement(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// sort array&#xA;&#x9;&#x9;Collections.sort(l, new reverseSortObs());&#xA;&#x9;&#x9;// slice array&#xA;&#x9;&#x9;if (this.size() > maxSize) this.removeElement(this.size()-1);&#xA;&#x9;&#x9;// remove original array&#xA;&#x9;&#x9;for (int i = 0; i &lt; this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.getRemove(i);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// copy from copy array to original" edit="/1/@proposals.0/@proposals.2/@attempts.51/@edit" start="667" end="-267"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983921995" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.size()-1; i >= 0; i--) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.removeElement(i);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// copy from copy array to original&#xA;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.addElement(i" edit="/1/@proposals.0/@proposals.2/@attempts.52/@edit" start="1003" end="-196"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983928246" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="l.size()" edit="/1/@proposals.0/@proposals.2/@attempts.53/@edit" start="1167" end="-196"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="87" charEnd="108" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983998074" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="get(i" edit="/1/@proposals.0/@proposals.2/@attempts.54/@edit" start="1169" end="-197"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984130191" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (int i = 0; i &lt; this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;l.add(this.getElement(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;l.add(n);" edit="/1/@proposals.0/@proposals.2/@attempts.55/@edit" start="729" end="-553"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984145934" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if ((int) this.getElement(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// sort array&#xA;&#x9;&#x9;Collections.sort(l, new reverseSortObs());&#xA;&#x9;&#x9;// slice array&#xA;&#x9;&#x9;if (this.size() > maxSize) this.removeElement(this.size()-1);&#xA;&#x9;&#x9;// remove original array&#xA;&#x9;&#x9;for (int i = this.size()-1; i >= 0; i--) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.removeElement(i);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// copy from copy array to original&#xA;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.addElement(l.get(i));" edit="/1/@proposals.0/@proposals.2/@attempts.56/@edit" start="821" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984158590" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="l.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if ((int) l.ge" edit="/1/@proposals.0/@proposals.2/@attempts.57/@edit" start="903" end="-416"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984180711" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// sort array&#xA;&#x9;&#x9;Collections.sort(l, new reverseSortObs());&#xA;&#x9;&#x9;// slice array&#xA;&#x9;&#x9;if (this.size() > maxSize) this.removeElement(this.size()-1);&#xA;&#x9;&#x9;// remove original array&#xA;&#x9;&#x9;for (int i = this.size()-1; i >= 0; i--) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.removeElement(i);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// copy from copy array to original&#xA;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.addElement(l.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if ((int) l.get(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.58/@edit" start="821" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984291734" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="{&#xA;&#x9;&#x9;&#x9;this.removeElement(this.size()-1);&#xA;&#x9;&#x9;&#x9;l.remove(l.size()-1);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.59/@edit" start="926" end="-398"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984349129" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="52" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="l.size() > maxSize) {" edit="/1/@proposals.0/@proposals.2/@attempts.60/@edit" start="903" end="-427"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984355150" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="52" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="copy " edit="/1/@proposals.0/@proposals.2/@attempts.61/@edit" start="891" end="-460"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984357443" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="52" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="copy " edit="/1/@proposals.0/@proposals.2/@attempts.62/@edit" start="829" end="-527"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984506174" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="52" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if ((int) this.getElemen" edit="/1/@proposals.0/@proposals.2/@attempts.63/@edit" start="1269" end="-53"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984633081" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="52" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="t" edit="/1/@proposals.0/@proposals.2/@attempts.64/@edit" start="1301" end="-66"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984634738" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="52" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(int)" edit="/1/@proposals.0/@proposals.2/@attempts.65/@edit" start="1301" end="-67"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984657767" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;get&quot;+i+this.getElement(i));" edit="/1/@proposals.0/@proposals.2/@attempts.66/@edit" start="1288" end="-81"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984663589" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;-&quot;+" edit="/1/@proposals.0/@proposals.2/@attempts.67/@edit" start="1320" end="-101"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984766335" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.getElements()" edit="/1/@proposals.0/@proposals.2/@attempts.68/@edit" start="859" end="-565"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984807078" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="l, new reverseSortObs());&#xA;&#x9;&#x9;// slice copy array&#xA;&#x9;&#x9;if (l.size() > maxSize) {&#xA;&#x9;&#x9;&#x9;l.remove(l.size()-1);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// remove original array&#xA;&#x9;&#x9;for (int i = this.size()-1; i >= 0; i--) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.removeElement(i);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// copy from copy array to original&#xA;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.addElementN(l.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;get&quot;+i+&quot;" edit="/1/@proposals.0/@proposals.2/@attempts.69/@edit" start="859" end="-103"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984898701" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="41" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f" edit="/1/@proposals.0/@proposals.2/@attempts.70/@edit" start="887" end="-236"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984901916" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="40" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i" edit="/1/@proposals.0/@proposals.2/@attempts.71/@edit" start="993" end="-75"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984930324" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="37" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.getElements());" edit="/1/@proposals.0/@proposals.2/@attempts.72/@edit" start="724" end="-263"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584984943184" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.setElements(l);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.73/@edit" start="825" end="-182"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584985056615" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=");&#xA;&#x9;&#x9;for (int i = 0; i &lt; this.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;l.add(this.getElement(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;l.add(n);&#xA;&#x9;&#x9;// sort copy array&#xA;&#x9;&#x9;Collections.sort(l, new reverseSortObs());&#xA;&#x9;&#x9;// slice copy array&#xA;&#x9;&#x9;if (l.size() > maxSize) {&#xA;&#x9;&#x9;&#x9;l.remove(l.size()-1);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// remove original array&#xA;&#x9;&#x9;for (int i = this.size()-1; i >= 0; i--) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.removeElement(i);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// copy from copy array to original&#xA;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.addElementN(l.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.size(); i++) {&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;get&quot;+i+&quot;&quot;+this.getElement(i));" edit="/1/@proposals.0/@proposals.2/@attempts.74/@edit" start="724" end="-81"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="13" charStart="370" charEnd="377" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584985059310" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(" edit="/1/@proposals.0/@proposals.2/@attempts.75/@edit" start="1169" end="-254"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="13" charStart="370" charEnd="377" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584985104203" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.getElements());" edit="/1/@proposals.0/@proposals.2/@attempts.76/@edit" start="724" end="-618"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="13" charStart="370" charEnd="377" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584985222125" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="50" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="N" edit="/1/@proposals.0/@proposals.2/@attempts.77/@edit" start="1107" end="-255"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988135646" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="51" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;get&quot;+i+&quot;&quot;+this.getElement(i));&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.78/@edit" start="1126" end="-237"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988199740" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="51" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(&quot;get&quot;+i+&quot;&quot;+this.getElement(i));&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.79/@edit" start="1122" end="-240"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988244901" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;get&quot;+i+&quot;&quot;+this.getElement(i));&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if ((int)this.getElement(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.80/@edit" start="1123" end="-15"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988261173" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.81/@edit" start="1311" end="-13"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="49" charStart="1322" charEnd="1323" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988276019" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="48" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;get&quot;+i+&quot;&quot;+this.getElement(i));&#xA;&#x9;&#x9;&#x9;&#x9;if ((int)this.getElement(i) == n) oll.listChanged(this, i);" edit="/1/@proposals.0/@proposals.2/@attempts.82/@edit" start="1186" end="-17"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="48" charStart="1314" charEnd="1315" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988319425" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="48" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.2/@attempts.83/@edit" start="1316"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988348798" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="47" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="C" edit="/1/@proposals.0/@proposals.2/@attempts.84/@edit" start="759" end="-536"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988356363" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" l.remove(l.size()-1); " edit="/1/@proposals.0/@proposals.2/@attempts.85/@edit" start="851" end="-417"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988368198" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="43" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" this.removeElement(i); " edit="/1/@proposals.0/@proposals.2/@attempts.86/@edit" start="947" end="-311"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988373713" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;&#x9;this.removeElement(i); &#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.87/@edit" start="948" end="-311"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988527155" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(" edit="/1/@proposals.0/@proposals.2/@attempts.88/@edit" start="1079" end="-208"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1069" charEnd="1079" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988558316" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="N" edit="/1/@proposals.0/@proposals.2/@attempts.89/@edit" start="1079" end="-209"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1069" charEnd="1079" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988574509" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.2/@attempts.90/@edit" start="1288"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1069" charEnd="1079" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988731477" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="46" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;get&quot;);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.91/@edit" start="982" end="-307"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988735816" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="46" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="adding" edit="/1/@proposals.0/@proposals.2/@attempts.92/@edit" start="1002" end="-313"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988736662" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="46" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="." edit="/1/@proposals.0/@proposals.2/@attempts.93/@edit" start="1008" end="-313"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988737805" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="46" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".." edit="/1/@proposals.0/@proposals.2/@attempts.94/@edit" start="1009" end="-313"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988761088" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;}&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.95/@edit" start="974" end="-310"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988787097" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.getElements()" edit="/1/@proposals.0/@proposals.2/@attempts.96/@edit" start="776" end="-513"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988805374" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.getElements().addElement" edit="/1/@proposals.0/@proposals.2/@attempts.97/@edit" start="747" end="-555"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988819523" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="l.add" edit="/1/@proposals.0/@proposals.2/@attempts.98/@edit" start="747" end="-555"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="749" charEnd="752" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988825504" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="l" edit="/1/@proposals.0/@proposals.2/@attempts.99/@edit" start="776" end="-513"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="749" charEnd="752" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988827252" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="45" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.100/@edit" start="978" end="-309"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="749" charEnd="752" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988958400" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="46" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(this.getElements().size());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.101/@edit" start="981" end="-307"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="27" charStart="749" charEnd="752" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584988975446" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="46" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//" edit="/1/@proposals.0/@proposals.2/@attempts.102/@edit" start="981" end="-356"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989128726" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="46" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=");&#xA;&#x9;&#x9;l.add(n);&#xA;&#x9;&#x9;Collections.sort(l, new reverseSortObs());&#xA;&#x9;&#x9;// slice copy array&#xA;&#x9;&#x9;if (l.size() > maxSize) { l.remove(l.size()-1); }&#xA;&#x9;&#x9;// remove original array&#xA;&#x9;&#x9;for (int i = this.size()-1; i >= 0; i--) { &#xA;&#x9;&#x9;&#x9;this.removeElement(i);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// " edit="/1/@proposals.0/@proposals.2/@attempts.103/@edit" start="724" end="-356"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989147704" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="49" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (int i = this.size()-1; i >= 0; i--) { &#xA;&#x9;&#x9;&#x9;l.add(this.getElement(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.104/@edit" start="729" end="-593"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989173034" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="48" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="c" edit="/1/@proposals.0/@proposals.2/@attempts.105/@edit" start="1046" end="-303"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989209487" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="47" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i" edit="/1/@proposals.0/@proposals.2/@attempts.106/@edit" start="1219" end="-75"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989274553" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="47" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;if ((int)this.getElement(i) == n) oll.listChanged(this, i);" edit="/1/@proposals.0/@proposals.2/@attempts.107/@edit" start="1155" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989359737" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="47" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;if ((int)this.getElement(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.108/@edit" start="1155" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989481607" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="55" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.results.add(n);&#xA;&#x9;&#x9;Collections.sort(results, new reverseSort());&#xA;&#x9;&#x9;if (this.results.size() > maxSize) this.results.remove(this.results.size()-1);&#xA;&#x9;&#x9;for (HighscoreListListener hl: highscoreListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.results.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if (this.results.get(i) == n) hl.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.109/@edit" start="667" end="-628"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989528454" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="58" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="elements.add(n);&#xA;&#x9;&#x9;Collections.sort(elements, new reverseSortObs());&#xA;&#x9;&#x9;if (this.elements.size() > maxSize) this.elements.remove(this.elements.size()-1);&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;if ((int)this.getElement(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;for (HighscoreListListener hl: highscoreListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.elemen" edit="/1/@proposals.0/@proposals.2/@attempts.110/@edit" start="672" end="-720"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989547010" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="56" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (int i = 0; i &lt; this.elements.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#x9;if ((int)this.getElement(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.2/@attempts.111/@edit" start="889" end="-631"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989554873" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="57" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/*&#xA;&#x9;&#x9;// make copy of array&#xA;&#x9;&#x9;List&lt;Object> l = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (int i = this.size()-1; i >= 0; i--) { &#xA;&#x9;&#x9;&#x9;l.add(this.getElement(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;l.add(n);&#xA;&#x9;&#x9;Collections.sort(l, new reverseSortObs());&#xA;&#x9;&#x9;// slice copy array&#xA;&#x9;&#x9;if (l.size() > maxSize) { l.remove(l.size()-1); }&#xA;&#x9;&#x9;// remove original array&#xA;&#x9;&#x9;for (int i = this.size()-1; i >= 0; i--) { &#xA;&#x9;&#x9;&#x9;this.removeElement(i);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// copy from copy array to original&#xA;&#x9;&#x9;for (int i = 0; i &lt; l.size(); i++) {&#x9;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.addElementN(l.get(i));&#xA;&#x9;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;&#x9;if ((int)this.getElement(i) == n) oll.listChanged(this, i);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;*/" edit="/1/@proposals.0/@proposals.2/@attempts.112/@edit" start="1017" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989573795" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="57" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getElements().add(n);&#xA;&#x9;&#x9;Collections.sort(getElements(), new reverseSortObs());&#xA;&#x9;&#x9;if (this.getElements().size() > maxSize) this.getElements().remove(this.getElements().size()-1);&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.getElements()" edit="/1/@proposals.0/@proposals.2/@attempts.113/@edit" start="672" end="-733"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989594490" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="57" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="elements.add(n);&#xA;&#x9;&#x9;Collections.sort(elements, new reverseSortObs());&#xA;&#x9;&#x9;if (this.elements.size() > maxSize) this.elements.remove(this.elements.size()-1);&#xA;&#x9;&#x9;for (ObservableListListener oll: observableListListener) {&#xA;&#x9;&#x9;&#x9;for (int i = 0; i &lt; this.elements" edit="/1/@proposals.0/@proposals.2/@attempts.114/@edit" start="672" end="-733"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989613570" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="35" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.2/@attempts.115/@edit" start="1016" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989773676" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="34" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.116/@edit" start="380" end="-559"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584989806467" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="34" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.2/@attempts.117/@edit" start="939"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978387288" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;import java.util.Scanner;&#xA;public class ObservableHighscoreListProgram implements HighscoreListListener {&#xA;&#x9;private HighscoreList hl; &#xA;&#x9;//- oppretter en ny HighscoreList og registrerer seg selv (altså HighscoreListProgram-instansen) som lytter&#xA;&#x9;public void init(int n) {&#xA;&#x9;&#x9;this.hl = new HighscoreList(n);&#xA;&#x9;&#x9;hl.addHighscoreListListener(this);&#xA;&#x9;}&#xA;&#x9;//- leser inn tall (resultater) fra konsollet og legger dem til i listen&#xA;&#x9;public void run() {&#xA;&#x9;&#x9; Scanner input = new Scanner(System.in);  // Create a Scanner object&#xA;&#x9;&#x9; while (true) {&#xA;&#x9;&#x9; &#x9;System.out.println(&quot;Enter an integer (-1 to exit): &quot;);&#xA;&#x9;&#x9; &#x9;int n = input.nextInt();  // Read user input&#xA;&#x9;&#x9; &#x9;if (n == -1) break;&#xA;&#x9;&#x9; &#x9;hl.addResult(n);&#x9;&#x9; &#x9;&#xA;&#x9;&#x9; }&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;//- observerer endringer i HighscoreList-instansen og skriver ut posisjonsargumentet, samt selve listen, til konsollen.&#xA;&#x9;public void listChanged(HighscoreList hl, int n) {&#xA;&#x9;&#x9;for (int i = 0; i &lt; hl.size(); i++) {&#xA;&#x9;&#x9;&#x9;if (hl.getElement(i) == n) System.out.println(n);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;String elements = &quot;Result:\n&quot;;&#xA;&#x9;&#x9;for (int i = 0; i &lt; hl.size(); i++) {&#xA;&#x9;&#x9;&#x9;elements += Integer.toString(hl.getElement(i))+&quot;\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;System.out.println(elements);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;ObservableHighscoreListProgram p = new ObservableHighscoreListProgram();&#xA;&#x9;&#x9;p.init(3);&#xA;&#x9;&#x9;p.run();&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978441418" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ObservableListListener {&#xA;&#x9;private ObservableList ol; &#xA;&#x9;//- oppretter en ny HighscoreList og registrerer seg selv (altså HighscoreListProgram-instansen) som lytter&#xA;&#x9;public void init(int n) {&#xA;&#x9;&#x9;this.ol = new ObservableHighscoreList(n);&#xA;&#x9;&#x9;ol.addObservableHighscoreListListener(this);&#xA;&#x9;}&#xA;&#x9;//- leser inn tall (resultater) fra konsollet og legger dem til i listen&#xA;&#x9;public void run() {&#xA;&#x9;&#x9; Scanner input = new Scanner(System.in);  // Create a Scanner object&#xA;&#x9;&#x9; while (true) {&#xA;&#x9;&#x9; &#x9;System.out.println(&quot;Enter an integer (-1 to exit): &quot;);&#xA;&#x9;&#x9; &#x9;int n = input.nextInt();  // Read user input&#xA;&#x9;&#x9; &#x9;if (n == -1) break;&#xA;&#x9;&#x9; &#x9;ol.addResult(n);&#x9;&#x9; &#x9;&#xA;&#x9;&#x9; }&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;//- observerer endringer i HighscoreList-instansen og skriver ut posisjonsargumentet, samt selve listen, til konsollen.&#xA;&#x9;public void listChanged(ObservableList ol, int n) {&#xA;&#x9;&#x9;for (int i = 0; i &lt; hl.size(); i++) {&#xA;&#x9;&#x9;&#x9;if (ol.getElement(i) == n) System.out.println(n);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;String elements = &quot;Result:\n&quot;;&#xA;&#x9;&#x9;for (int i = 0; i &lt; ol.size(); i++) {&#xA;&#x9;&#x9;&#x9;elements += Integer.toString(o" edit="/1/@proposals.0/@proposals.4/@attempts.0/@edit" start="110" end="-212"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978448410" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="o" edit="/1/@proposals.0/@proposals.4/@attempts.1/@edit" start="950" end="-392"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978454429" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="L" edit="/1/@proposals.0/@proposals.4/@attempts.2/@edit" start="362" end="-971"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978500337" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.4/@attempts.3/@edit" start="1333"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978533560" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.4/@attempts.4/@edit" start="1333"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978556264" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.4/@attempts.5/@edit" start="1333"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978652375" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(ObservableListListener) " edit="/1/@proposals.0/@proposals.4/@attempts.6/@edit" start="375" end="-959"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="733" charEnd="742" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978663136" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.4/@attempts.7/@edit" start="1358"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="733" charEnd="742" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978680287" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.4/@attempts.8/@edit" start="1358"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="733" charEnd="742" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978703117" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.4/@attempts.9/@edit" start="1358"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="733" charEnd="742" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978706953" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="t" edit="/1/@proposals.0/@proposals.4/@attempts.10/@edit" start="375" end="-958"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="708" charEnd="717" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978710276" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="null" edit="/1/@proposals.0/@proposals.4/@attempts.11/@edit" start="375" end="-955"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="708" charEnd="717" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978753557" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this);&#xA;&#x9;}&#xA;&#x9;//- leser inn tall (resultater) fra konsollet og legger dem til i listen&#xA;&#x9;public void run() {&#xA;&#x9;&#x9; Scanner input = new Scanner(System.in);  // Create a Scanner object&#xA;&#x9;&#x9; while (true) {&#xA;&#x9;&#x9; &#x9;System.out.println(&quot;Enter an integer (-1 to exit): &quot;);&#xA;&#x9;&#x9; &#x9;int n = input.nextInt();  // Read user input&#xA;&#x9;&#x9; &#x9;if (n == -1) break;&#xA;&#x9;&#x9; &#x9;ol.addResult(n);" edit="/1/@proposals.0/@proposals.4/@attempts.12/@edit" start="375" end="-609"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="708" charEnd="717" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978768237" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="36" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public void init(int n) {&#xA;&#x9;&#x9;this.ol = new ObservableHighscoreList(n);&#xA;&#x9;&#x9;ol.addObservableListListener(this);&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.4/@attempts.13/@edit" start="165" end="-872"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="525" charEnd="534" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978795195" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="36" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Highscore" edit="/1/@proposals.0/@proposals.4/@attempts.14/@edit" start="154" end="-993"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="534" charEnd="543" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584978822149" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="36" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Highscore" edit="/1/@proposals.0/@proposals.4/@attempts.15/@edit" start="723" end="-433"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="534" charEnd="543" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980425283" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="36" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.4/@attempts.16/@edit" start="1164"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="534" charEnd="543" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980429836" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="36" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List ol; &#xA;&#x9;public void init(int n) {&#xA;&#x9;&#x9;this.ol = new ObservableHighscoreList(n);&#xA;&#x9;&#x9;ol.addObservableListListener(this);&#xA;&#x9;}&#xA;&#x9;public void run() {&#xA;&#x9;&#x9; Scanner input = new Scanner(System.in);  // Create a Scanner object&#xA;&#x9;&#x9; while (true) {&#xA;&#x9;&#x9; &#x9;System.out.println(&quot;Enter an integer (-1 to exit): &quot;);&#xA;&#x9;&#x9; &#x9;int n = input.nextInt();  // Read user input&#xA;&#x9;&#x9; &#x9;if (n == -1) break;&#xA;&#x9;&#x9; &#x9;ol.addResult(n);&#xA;&#x9;&#x9; }&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;//- observerer endringer i HighscoreList-instansen og skriver ut posisjonsargumentet, samt selve listen, til konsollen.&#xA;&#x9;public void listChanged(Observabl" edit="/1/@proposals.0/@proposals.4/@attempts.17/@edit" start="154" end="-434"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="525" charEnd="534" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980440306" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="36" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Elemen" edit="/1/@proposals.0/@proposals.4/@attempts.18/@edit" start="528" end="-614"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="525" charEnd="529" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980461172" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="36" errorCount="6" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="pos" edit="/1/@proposals.0/@proposals.4/@attempts.19/@edit" start="728" end="-419"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="525" charEnd="529" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980477451" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="34" errorCount="4" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(n);" edit="/1/@proposals.0/@proposals.4/@attempts.20/@edit" start="737" end="-319"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="525" charEnd="529" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980493623" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="34" errorCount="4" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="pos);&#xA;&#x9;&#x9;String elements = &quot;Result:\n&quot;;&#xA;&#x9;&#x9;for (int i = 0; i &lt; ol.size(); i++) {&#xA;&#x9;&#x9;&#x9;elements += (Integer)" edit="/1/@proposals.0/@proposals.4/@attempts.21/@edit" start="756" end="-231"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="525" charEnd="529" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584980509879" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="34" errorCount="4" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Integer.toString((Integer) " edit="/1/@proposals.0/@proposals.4/@attempts.22/@edit" start="850" end="-213"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="525" charEnd="529" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981337539" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="34" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="integers separated by space" edit="/1/@proposals.0/@proposals.4/@attempts.23/@edit" start="416" end="-664"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981341919" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="34" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="first integer " edit="/1/@proposals.0/@proposals.4/@attempts.24/@edit" start="445" end="-662"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981350440" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="34" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Line" edit="/1/@proposals.0/@proposals.4/@attempts.25/@edit" start="498" end="-620"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981355432" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="35" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String n = input.nextLine();  // Read user input&#xA;&#x9;&#x9; &#x9;" edit="/1/@proposals.0/@proposals.4/@attempts.26/@edit" start="480" end="-597"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981440289" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="35" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String[] nl = n.split(&quot; &quot;);&#xA;&#x9;&#x9; &#x9;if (nl[0] == &quot;-1&quot;" edit="/1/@proposals.0/@proposals.4/@attempts.27/@edit" start="533" end="-581"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981505613" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="40" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="one or two integers separated by space (first integer -1 to exit): &quot;);&#xA;&#x9;&#x9; &#x9;String n = input.nextLine();  // Read user input&#xA;&#x9;&#x9; &#x9;String[] nl = n.split(&quot; &quot;);&#xA;&#x9;&#x9; &#x9;if (nl.length > 2) {&#xA;&#x9;&#x9; &#x9;&#x9;System.out.println(&quot;Error input!&quot;);&#xA;&#x9;&#x9; &#x9;&#x9;break;&#xA;&#x9;&#x9; &#x9;}&#xA;&#x9;&#x9; &#x9;if (nl[0] == &quot;-1&quot;) break;&#xA;&#x9;&#x9; &#x9;if (nl)" edit="/1/@proposals.0/@proposals.4/@attempts.28/@edit" start="416" end="-573"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981537721" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="43" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".length == 1) {&#xA;&#x9;&#x9; &#x9;&#x9;ol.addElement(nl[0]);&#xA;&#x9;&#x9; &#x9;} else {&#xA;&#x9;&#x9; &#x9;&#x9;ol.addElement(nl[0], nl[1]);&#xA;&#x9;&#x9; &#x9;}" edit="/1/@proposals.0/@proposals.4/@attempts.29/@edit" start="696" end="-551"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981582086" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="43" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Integer.parseInt(nl[0]));&#xA;&#x9;&#x9; &#x9;} else {&#xA;&#x9;&#x9; &#x9;&#x9;ol.addElement(Integer.parseInt(nl[0]), Integer.parseInt(nl[1])" edit="/1/@proposals.0/@proposals.4/@attempts.30/@edit" start="731" end="-559"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981590145" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="42" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.4/@attempts.31/@edit" start="866" end="-408"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981688260" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="44" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9; &#x9;if (nl.length > 2) {&#xA;&#x9;&#x9; &#x9;&#x9;System.out.println(&quot;Error input!&quot;);&#xA;&#x9;&#x9; &#x9;&#x9;break;&#xA;&#x9;&#x9; &#x9;}&#xA;&#x9;&#x9; &#x9;if (nl[0] == &quot;-1&quot;) break;&#xA;&#x9;&#x9; &#x9;if (nl.length == 1) {&#xA;&#x9;&#x9; &#x9;&#x9;ol.addElement(Integer.parseInt(nl[0]));&#xA;&#x9;&#x9; &#x9;} else {&#xA;&#x9;&#x9; &#x9;&#x9;ol.addElement(Integer.parseInt(nl[0]), Integer.parseInt(nl[1]));&#xA;&#x9;&#x9; &#x9;&#x9;System.out.println(nl" edit="/1/@proposals.0/@proposals.4/@attempts.32/@edit" start="576" end="-438"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981691607" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="44" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".toString()" edit="/1/@proposals.0/@proposals.4/@attempts.33/@edit" start="871" end="-438"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981701308" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="44" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.4/@attempts.34/@edit" start="871" end="-437"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981710997" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="44" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="[0],nl[1],nl[2]" edit="/1/@proposals.0/@proposals.4/@attempts.35/@edit" start="871" end="-438"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981718764" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="44" errorCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+nl[1" edit="/1/@proposals.0/@proposals.4/@attempts.36/@edit" start="874" end="-439"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="25" charStart="861" charEnd="868" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981748102" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="44" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot; &quot;+" edit="/1/@proposals.0/@proposals.4/@attempts.37/@edit" start="875" end="-443"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981778790" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="45" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(nl[0]+&quot; &quot;+nl[1]);&#xA;&#x9;&#x9; &#x9;" edit="/1/@proposals.0/@proposals.4/@attempts.38/@edit" start="766" end="-556"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981780888" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="45" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.4/@attempts.39/@edit" start="791" end="-562"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981795360" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="45" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".equals(&quot;-1&quot;)" edit="/1/@proposals.0/@proposals.4/@attempts.40/@edit" start="674" end="-672"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584981796817" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="44" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.4/@attempts.41/@edit" start="771" end="-555"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982889717" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="47" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public run2() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.4/@attempts.42/@edit" start="907" end="-420"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982928030" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="53" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Scanner input = new Scanner(System.in);  // Create a Scanner object&#xA;&#x9;&#x9;while (true) {&#xA;&#x9;&#x9;&#x9;System.out.println(&quot;Enter an integer (-1 to exit): &quot;);&#xA;&#x9;&#x9;&#x9;int n = input.nextInt();  // Read user input&#xA;&#x9;&#x9; &#x9;if (n == -1) break;&#xA;&#x9;&#x9; &#x9;hl.addResult(n);&#x9;&#x9; &#x9;&#xA;&#x9;&#x9; }" edit="/1/@proposals.0/@proposals.4/@attempts.43/@edit" start="925" end="-425"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982931825" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="53" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="o" edit="/1/@proposals.0/@proposals.4/@attempts.44/@edit" start="1144" end="-449"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982937375" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="53" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void " edit="/1/@proposals.0/@proposals.4/@attempts.45/@edit" start="914" end="-680"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982987643" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="54" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ObservableHighscoreList ol2 = (ObservableHighscoreList) ol;&#xA;&#x9;&#x9; &#x9;(ObservableHighscoreList) " edit="/1/@proposals.0/@proposals.4/@attempts.46/@edit" start="1149" end="-450"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584982998349" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="53" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="o" edit="/1/@proposals.0/@proposals.4/@attempts.47/@edit" start="1149" end="-449"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="308" charEnd="313" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983026067" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="53" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Highscore" edit="/1/@proposals.0/@proposals.4/@attempts.48/@edit" start="154" end="-1445"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="317" charEnd="322" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584983043939" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="54" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//p.run();&#xA;&#x9;&#x9;p.run2" edit="/1/@proposals.0/@proposals.4/@attempts.49/@edit" start="1593" end="-10"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="317" charEnd="322" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584978564734" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	The method addObservableListListener(ObservableHighscoreListProgram) is undefined for the type ObservableList

	at ovinger/patterns.observable.ObservableHighscoreListProgram.init(ObservableHighscoreListProgram.java:8)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.main(ObservableHighscoreListProgram.java:35)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584981279874" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>3</consoleOutput>
          <consoleOutput>
</consoleOutput>
          <consoleOutput>0
Result:
3

Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>2</consoleOutput>
          <consoleOutput>1
Result:
3
2

Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>1</consoleOutput>
          <consoleOutput>2
Result:
3
2
1

Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>3
Result:
3
2
1
3

Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>-</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584981712021" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	The method println(String) in the type PrintStream is not applicable for the arguments (String, String, String)

	at ovinger/patterns.observable.ObservableHighscoreListProgram.run(ObservableHighscoreListProgram.java:25)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.main(ObservableHighscoreListProgram.java:42)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584981798394" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter one or two integers separated by space (first integer -1 to exit): 
</consoleOutput>
          <consoleOutput>-</consoleOutput>
          <consoleOutput>1</consoleOutput>
          <consoleOutput>
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584981801432" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter one or two integers separated by space (first integer -1 to exit): 
1
0
Result:
1

Enter one or two integers separated by space (first integer -1 to exit): 
2</consoleOutput>
          <consoleOutput> </consoleOutput>
          <consoleOutput>3</consoleOutput>
          <consoleOutput>
</consoleOutput>
          <consoleOutput>2 3
Enter one or two integers separated by space (first integer -1 to exit): 
</consoleOutput>
          <consoleOutput>o</consoleOutput>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NumberFormatException: For input string: &quot;o&quot;
	at java.base/java.lang.NumberFormatException.forInputString(NumberFormatException.java:65)
	at java.base/java.lang.Integer.parseInt(Integer.java:652)
	at java.base/java.lang.Integer.parseInt(Integer.java:770)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.run(ObservableHighscoreListProgram.java:22)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.main(ObservableHighscoreListProgram.java:42)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584982236532" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter one or two integers separated by space (first integer -1 to exit): 
</consoleOutput>
          <consoleOutput>0</consoleOutput>
          <consoleOutput> </consoleOutput>
          <consoleOutput>2</consoleOutput>
          <consoleOutput>
</consoleOutput>
          <consoleOutput>trueException in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 0 out of bounds for length 0
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)
	at java.base/java.util.Objects.checkIndex(Objects.java:372)
	at java.base/java.util.ArrayList.get(ArrayList.java:458)
	at ovinger/patterns.observable.ObservableList.addElement(ObservableList.java:23)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.run(ObservableHighscoreListProgram.java:24)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.main(ObservableHighscoreListProgram.java:42)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584982269740" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter one or two integers separated by space (first integer -1 to exit): 
</consoleOutput>
          <consoleOutput>0</consoleOutput>
          <consoleOutput> </consoleOutput>
          <consoleOutput>2</consoleOutput>
          <consoleOutput>
</consoleOutput>
          <consoleOutput>true0
Result:
2

0 2
Enter one or two integers separated by space (first integer -1 to exit): 
</consoleOutput>
          <consoleOutput>1</consoleOutput>
          <consoleOutput>3</consoleOutput>
          <consoleOutput>trueException in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 1 out of bounds for length 1
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)
	at java.base/java.util.Objects.checkIndex(Objects.java:372)
	at java.base/java.util.ArrayList.get(ArrayList.java:458)
	at ovinger/patterns.observable.ObservableList.addElement(ObservableList.java:26)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.run(ObservableHighscoreListProgram.java:24)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.main(ObservableHighscoreListProgram.java:42)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584982312621" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter one or two integers separated by space (first integer -1 to exit): 
</consoleOutput>
          <consoleOutput>0</consoleOutput>
          <consoleOutput> </consoleOutput>
          <consoleOutput>2</consoleOutput>
          <consoleOutput>
</consoleOutput>
          <consoleOutput>true0
Result:
2

0 2
Enter one or two integers separated by space (first integer -1 to exit): 
</consoleOutput>
          <consoleOutput>1</consoleOutput>
          <consoleOutput>3</consoleOutput>
          <consoleOutput>trueException in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 1 out of bounds for length 1
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)
	at java.base/java.util.Objects.checkIndex(Objects.java:372)
	at java.base/java.util.ArrayList.get(ArrayList.java:458)
	at ovinger/patterns.observable.ObservableList.addElement(ObservableList.java:28)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.run(ObservableHighscoreListProgram.java:24)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.main(ObservableHighscoreListProgram.java:42)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584988808360" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>2</consoleOutput>
          <consoleOutput>
</consoleOutput>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	The method addElement(int) is undefined for the type List&lt;Object>

	at ovinger/patterns.observable.ObservableHighscoreList.addResult(ObservableHighscoreList.java:27)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.run2(ObservableHighscoreListProgram.java:35)
	at ovinger/patterns.observable.ObservableHighscoreListProgram.main(ObservableHighscoreListProgram.java:52)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584988962281" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>2</consoleOutput>
          <consoleOutput>
</consoleOutput>
          <consoleOutput>0
Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>3</consoleOutput>
          <consoleOutput>0
Result:

0
Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>1</consoleOutput>
          <consoleOutput>1
Result:
2

0
Result:

0
Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>2
Result:
1
2

1
Result:
1

0
Result:

0
Enter an integer (-1 to exit): 
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584989744616" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>5</consoleOutput>
          <consoleOutput>
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584989809450" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>2</consoleOutput>
          <consoleOutput>
</consoleOutput>
          <consoleOutput>0
Result:
2

Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>3</consoleOutput>
          <consoleOutput>1
Result:
2
3

Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>1</consoleOutput>
          <consoleOutput>0
Result:
1
2
3

Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>1
Result:
1
2
2

2
Result:
1
2
2

Enter an integer (-1 to exit): 
</consoleOutput>
          <consoleOutput>0
Result:
1
1
2

1
Result:
1
1
2

Enter an integer (-1 to exit): 
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584989825862" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter an integer (-1 to exit): 
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584978134793" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584978281466" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" errorCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584978324796" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" errorCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584978357638" completion="1.0" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="7">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testListListenerSimple</successTests>
          <successTests>testListListenerDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testListListenerMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584980546840" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584980662519" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584982674067" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584982770377" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584983098434" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584983131266" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584984013625" completion="0.2857142857142857" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="2" failureCount="5">
          <successTests>testAddElementSimple</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584984161996" completion="0.2857142857142857" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="2" failureCount="5">
          <successTests>testAddElementSimple</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584984297567" completion="0.2857142857142857" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="2" failureCount="5">
          <successTests>testAddElementSimple</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584984373819" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584984976717" completion="0.2857142857142857" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="2" failureCount="5">
          <successTests>testAddElementSimple</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584985126046" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584985224138" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988140171" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988146891" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988254280" completion="0.0" testRunName="patterns.observable.ObservableHighscoreListTest" errorCount="7">
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988282659" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988384289" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988402586" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988407281" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988411552" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988509490" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988609710" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584989219847" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584989339196" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584989347115" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584989390897" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584989584771" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584989615973" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584989657078" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584989830346" completion="1.0" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="7">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testListListenerSimple</successTests>
          <successTests>testListListenerDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testListListenerMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585176706583" completion="1.0" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="7">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testListListenerSimple</successTests>
          <successTests>testListListenerDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testListListenerMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584980583065" completion="0.25" testRunName="patterns.observable.ObservableListTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testListListener</failureTests>
          <failureTests>testAddElement</failureTests>
          <failureTests>testAcceptsElement</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584980776872" completion="0.25" testRunName="patterns.observable.ObservableListTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testListListener</failureTests>
          <failureTests>testAddElement</failureTests>
          <failureTests>testAcceptsElement</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584982588641" completion="0.75" testRunName="patterns.observable.ObservableListTest" successCount="3" failureCount="1">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAcceptsElement</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584982657751" completion="1.0" testRunName="patterns.observable.ObservableListTest" successCount="4">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testAcceptsElement</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584982721984" completion="1.0" testRunName="patterns.observable.ObservableListTest" successCount="4">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testAcceptsElement</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584983111815" completion="1.0" testRunName="patterns.observable.ObservableListTest" successCount="4">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testAcceptsElement</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584984008517" completion="1.0" testRunName="patterns.observable.ObservableListTest" successCount="4">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testAcceptsElement</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584984370748" completion="1.0" testRunName="patterns.observable.ObservableListTest" successCount="4">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testAcceptsElement</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584984973925" completion="1.0" testRunName="patterns.observable.ObservableListTest" successCount="4">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testAcceptsElement</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988249959" completion="1.0" testRunName="patterns.observable.ObservableListTest" successCount="4">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testAcceptsElement</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584988513796" completion="1.0" testRunName="patterns.observable.ObservableListTest" successCount="4">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testAcceptsElement</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585176701041" completion="1.0" testRunName="patterns.observable.ObservableListTest" successCount="4">
          <successTests>testListListener</successTests>
          <successTests>testAddElement</successTests>
          <successTests>testAcceptsElement</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589497795" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589755686" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589815604" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589833777" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589834761" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589837363" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589847794" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589848272" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589848800" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589849265" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589851775" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589967043" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589968907" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589969379" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589969722" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589970179" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589970816" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589978249" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589980520" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589981392" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589982062" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589982642" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589983244" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589983709" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582589985713" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590057421" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590060038" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590060661" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590061321" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590062099" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590092165" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590099083" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590121720" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590122706" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590123903" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590124960" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590129497" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590159898" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590161199" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590161502" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590161938" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590162295" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590162628" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590172318" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590177417" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590178548" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590178964" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590182272" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590182888" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590183271" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590183601" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590183818" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590184025" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590206348" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590209017" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590209703" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590210178" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590210623" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590211186" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590211500" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590211946" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590212374" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590213493" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590213840" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590214298" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590214582" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590215807" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590216284" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590216736" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590217292" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590218359" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590218858" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590219878" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590220326" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590220825" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590221138" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590221555" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590221852" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590222126" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408546745" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408815112" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408897794" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408899364" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408922665" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408924074" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408932604" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408934448" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408935249" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408935818" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408936266" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408936507" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408936713" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408937074" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1585408937277" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590101276" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590167901" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1582590168265" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582589481842" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582589502480" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582589510151" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582589818363" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582589844249" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582589972784" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582590007140" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582590023571" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582590058812" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582590095798" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582590165543" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582590180256" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1582590207433" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585408527545" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585408542446" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585408863100" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585408869399" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585408904531" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585409043909" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585409269413" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585409275552" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585409571858" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585409614485" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585409621601" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585409683987" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585409827628" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585410623215" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585411075482" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585412426257" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585412781183" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1585412796178" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
