<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Stock class and StockListener interface">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StockListener interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.StockListener"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Stock class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.Stock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Stock class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.Stock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Stock JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.StockTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="StockIndex implements StockListener">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StockIndex class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.StockIndex"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StockIndex class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.StockIndex"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StockIndex JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.StockIndexTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Extra assignments">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the SmartStock class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.SmartStock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SmartStock class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.SmartStock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SmartStock JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.SmartStockTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="patterns.observable.*Stock*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133692429" resourcePath="/ovinger/src/patterns/observable/StockListener.java" sizeMeasure="10" className="patterns.observable.StockListener">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class StockListener {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133714430" resourcePath="/ovinger/src/patterns/observable/StockListener.java" sizeMeasure="11" className="patterns.observable.StockListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interface StockListener {&#xA;&#x9;//lyttermetode for å holde lytteren oppdatert på aksjeprisen. Metoden skal ta inn et Stock-objekt, samt gammel og ny pris. Alle lyttere må implementere denne metoden.&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldValue, double newValue);" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="37" end="-88"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133717062" resourcePath="/ovinger/src/patterns/observable/StockListener.java" sizeMeasure="7" className="patterns.observable.StockListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="310" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134011678" resourcePath="/ovinger/src/patterns/observable/StockListener.java" sizeMeasure="8" className="patterns.observable.StockListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;// " edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="126" end="-188"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133385966" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="5" className="patterns.observable.Stock">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class Stock {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133445054" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="20" errorCount="4" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;//en konstruktør som tar inn en aksjekode (ticker) og en aksjepris.&#xA;&#x9;public Stock(String, double) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;//endringsmetode for aksjeprisen. Dersom aksjepris er negativ eller lik null, skal metoden utløse en IllegalArgumentException.&#xA;&#x9;public void setPrice(double) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;//metode for å hente aksjekoden.&#xA;&#x9;public String getTicker() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;//metode for å hente aksjeprisen.&#xA;&#x9;public double getPrice() {&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="51" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="146" charEnd="152" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133552414" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="23" errorCount="2" warningCount="2" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;//en konstruktør som tar inn en aksjekode (ticker) og en aksjepris.&#xA;&#x9;public Stock(String ticker, double price) {&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;//endringsmetode for aksjeprisen. Dersom aksjepris er negativ eller lik null, skal metoden utløse en IllegalArgumentException.&#xA;&#x9;public void setPrice(double price) throws IllegalArgumentException" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="52" end="-150"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="95" charEnd="100" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133578418" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="19" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" return this.ticker; }&#xA;&#x9;//metode for å hente aksjeprisen.&#xA;&#x9;public double getPrice() { return this.price; " edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="527" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133676727" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="20" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (price >= 0) throw new IllegalArgumentException(&quot;Aksjepris er negativ eller lik null!&quot;);&#xA;&#x9;&#x9;this.price = price;" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="461" end="-176"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133761649" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="29" errorCount="4" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;//metode for å legge til nye observatører.&#xA;&#x9;public void addStockListener(StockListener) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;//metode for å fjerne observatører.&#xA;&#x9;public void removeStockListener(StockListener) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="747" end="-3"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="763" charEnd="764" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133767340" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="29" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" sl) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;//metode for å fjerne observatører.&#xA;&#x9;public void removeStockListener(StockListener sl" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="836" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584133946472" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="33" warningCount="1" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.List;&#xA;import java.util.ArrayList;&#xA;&#xA;public class Stock {&#xA;&#x9;private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;private List&lt;StockListener> stockListeners = new ArrayList&lt;>()" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="30" end="-852"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="187" charEnd="201" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134039368" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="36" errorCount="2" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;for (StockListener stockListeners: sl) {&#xA;            sl.stockPriceChanged(this, this.price, price);&#xA;        }&#xA;&#x9;}&#xA;&#x9;//metode for å hente aksjekoden.&#xA;&#x9;public String getTicker() { return this.ticker; }&#xA;&#x9;//metode for å hente aksjeprisen.&#xA;&#x9;public double getPrice() { return this.price; }&#xA;&#x9;&#xA;&#x9;//metode for å legge til nye observatører.&#xA;&#x9;public void addStockListener(StockListener sl) {&#xA;&#x9;&#x9;stockListeners.add(sl);&#xA;&#x9;}&#xA;&#x9;//metode for å fjerne observatører.&#xA;&#x9;public void removeStockListener(StockListener sl) {&#xA;&#x9;&#x9;stockListeners.remove(sl);" edit="/1/@proposals.0/@proposals.1/@attempts.7/@edit" start="693" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="20" charStart="766" charEnd="768" severity="2" problemCategory="50" problemType="570425394"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134069232" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="36" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="l: stockListeners" edit="/1/@proposals.0/@proposals.1/@attempts.8/@edit" start="714" end="-495"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134076181" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="36" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (StockListener sl: stockListeners) {&#xA;&#x9;&#x9;&#x9;sl.stockPriceChanged(this, this.price, price);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.price = price;" edit="/1/@proposals.0/@proposals.1/@attempts.9/@edit" start="672" end="-423"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134102603" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="37" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double oldValue = this.price;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;&#x9;for (StockListener sl: stockListeners) {&#xA;&#x9;&#x9;&#x9;sl.stockPriceChanged(this, oldValue, price);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.10/@edit" start="672" end="-423"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134106639" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="37" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this." edit="/1/@proposals.0/@proposals.1/@attempts.11/@edit" start="807" end="-434"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584135019915" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="37" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//" edit="/1/@proposals.0/@proposals.1/@attempts.12/@edit" start="578" end="-668"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584135048374" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="38" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="What??&#xA;&#x9;&#x9;//" edit="/1/@proposals.0/@proposals.1/@attempts.13/@edit" start="580" end="-668"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584134925673" completion="0.5" testRunName="patterns.observable.StockTest" successCount="1" errorCount="1">
          <successTests>testConstructor</successTests>
          <errorTests>testStockListener</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584135025541" completion="1.0" testRunName="patterns.observable.StockTest" successCount="2">
          <successTests>testStockListener</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584135030578" completion="1.0" testRunName="patterns.observable.StockTest" successCount="2">
          <successTests>testStockListener</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134128432" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="5" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class StockIndex {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134235299" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="18" warningCount="3" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class StockIndex implements StockListener {&#xA;&#x9;// navn (String), indeks (double) og en liste med Stock-objektene som er inkludert i indeksen. &#xA;&#x9;// Indeksen beregnes ut i fra aksjeprisene den &quot;observerer&quot;, og vil være lik summen av disse.&#xA;&#x9;private String name = &quot;&quot;;&#xA;&#x9;private double index = 0.0;&#xA;&#x9;private List&lt;Stock> stockList = new ArrayList&lt;>();&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldValue, double newValue) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="30" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="11" charStart="412" charEnd="421" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134237729" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="19" warningCount="3" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.1/@edit" start="434" end="-137"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="11" charStart="412" charEnd="421" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134367031" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="36" errorCount="5" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//konstruktør som tar inn ingen, én eller flere aksjer (Stock-objekter). Stock-parameteret defineres som et såkalt varargs-parameter. &#xA;&#x9;// NB: StockIndex-objektet skal holdes oppdatert på aksjeprisene allerede fra det er instansiert. &#xA;&#x9;// Dersom en indeks instansieres uten Stock-objekter, skal aksjeindeksen være 0.&#xA;&#x9;public StockIndex(String string, Stock ... stock) {&#xA;&#x9;&#x9;for (Stock s: stock) &#xA;            System.out.print(s + &quot; &quot;); &#xA;&#x9;}&#xA;&#xA;&#x9;//metode for å legge til en aksjepris i indeksen.&#xA;&#x9;public void addStock(Stock) &#xA;&#xA;&#x9;//metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;public void removeStock(Stock)&#xA;&#xA;&#x9;//hentemetode for indeksen.&#xA;&#x9;public double getIndex()&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.2/@edit" start="436" end="-137"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="28" charStart="1119" charEnd="1120" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134850160" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="47" warningCount="1" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private void updateStockList() {&#xA;&#x9;&#x9;this.index = 0.0;&#xA;&#x9;&#x9;for (int i = 0; i &lt; stockList.size(); i++) {&#xA;&#x9;&#x9;&#x9;this.index += stockList.get(i).getPrice();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;//konstruktør som tar inn ingen, én eller flere aksjer (Stock-objekter). Stock-parameteret defineres som et såkalt varargs-parameter. &#xA;&#x9;// NB: StockIndex-objektet skal holdes oppdatert på aksjeprisene allerede fra det er instansiert. &#xA;&#x9;// Dersom en indeks instansieres uten Stock-objekter, skal aksjeindeksen være 0.&#xA;&#x9;public StockIndex(String string, Stock ... stock) {&#xA;&#x9;&#x9;for (Stock s: stock) &#xA;&#x9;&#x9;&#x9;stockList.add(s);&#xA;&#x9;&#x9;updateStockList();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//metode for å legge til en aksjepris i indeksen.&#xA;&#x9;public void addStock(Stock stock) { &#xA;&#x9;&#x9;this.stockList.add(stock);&#xA;&#x9;&#x9;updateStockList();&#xA;&#x9;}&#xA;&#x9;//metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;public void removeStock(Stock stock) { &#xA;&#x9;&#x9;this.stockList.remove(stock);&#xA;&#x9;&#x9;updateStockList();&#xA;&#x9;}&#xA;&#x9;//hentemetode for indeksen.&#xA;&#x9;public double getIndex() { return this.index; }" edit="/1/@proposals.1/@proposals.0/@attempts.3/@edit" start="436" end="-141"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="349" charEnd="353" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584134865142" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="46" warningCount="1" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="updateStockList();" edit="/1/@proposals.1/@proposals.0/@attempts.4/@edit" start="1493" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="349" charEnd="353" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.3">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.3/@tasks.0/@q" answer="/0/@parts.3/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.1/@q" answer="/0/@parts.3/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.2/@q" answer="/0/@parts.3/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.3/@tasks.3/@q" answer="/0/@parts.3/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
