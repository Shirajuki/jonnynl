<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Employee">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Employee Interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.office.Employee"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Clerk Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.office.Clerk"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Clerk class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.office.Clerk"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Clerk JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.office.ClerkTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Printer Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.office.Printer"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Printer class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.office.Printer"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Printer JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.office.PrinterTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Manager Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.office.Manager"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Manager class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.office.Manager"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Manager JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.office.ManagerTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="patterns.delegation.office.*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584116539375" resourcePath="/ovinger/src/patterns/delegation/office/Employee.java" sizeMeasure="10" className="patterns.delegation.office.Employee">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation.office;&#xA;&#xA;public class Employee {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584116690048" resourcePath="/ovinger/src/patterns/delegation/office/Employee.java" sizeMeasure="19" className="patterns.delegation.office.Employee">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.function.BinaryOperator;&#xA;&#xA;public interface Employee {&#xA;&#x9;// regner ut resultatet av å utføre operation med argumentene value1 og value2.&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2);&#xA;&#x9;//Printer document. Hvordan dette gjøres avhenger av den spesifikke implementasjonen.&#xA;&#x9;public void printDocument(String document);&#xA;&#x9;//returnerer hvor mange oppgaver (beregninger og printinger) som har blitt utført av eller på vegne av dette Employee-objektet.&#xA;&#x9;public int getTaskCount();&#xA;&#x9;//antallet employees til rådighet, inkludert Employee-objektet metoden blir kalt på. En Employee skal altså medregne seg selv i antall ressurser den ansatte har til rådighet. Dette tallet skal inkludere alle Employee-objekter nedover i hierarkiet.&#xA;&#x9;public int getResourceCount();" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="37" end="-88"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584116700390" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="10" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation.office;&#xA;&#xA;public class Clerk {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584116747832" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="30" errorCount="1" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.function.BinaryOperator;&#xA;&#xA;public class Clerk implements Employee {&#xA;&#x9;public Clerk(Printer printer) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="37" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="140" charEnd="147" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117071053" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="33" errorCount="5" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate List&lt;String> printHistory = new ArrayList&lt;>();&#xA;&#x9;public Clerk(Printer printer) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public List&lt;Array> getPrintHistory" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="123" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="31" charStart="715" charEnd="730" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117092021" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="34" errorCount="2" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.List;&#xA;import java.util.ArrayList;" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="79" end="-626"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="32" charStart="766" charEnd="781" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117108019" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="34" errorCount="1" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="() { return this.printHistory; }" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="750" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="32" charStart="759" charEnd="764" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117112542" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="34" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="728" end="-54"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117153750" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="31" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;public class Clerk implements Employee {&#xA;&#x9;public Clerk(Printer printer) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="79" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117786891" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="24" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate int taskCount = 0, resourceCount = 0;&#xA;&#x9;public Clerk(Printer printer) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() { return this.taskCount; }&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() { return this.resourceCount; }" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="123" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117838408" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="25" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate Printer printer;&#xA;&#x9;public Clerk(Printer printer) {&#xA;&#x9;&#x9;this.printer = printer;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;this.printer.printDocument(document, this);" edit="/1/@proposals.0/@proposals.1/@attempts.7/@edit" start="170" end="-148"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117840366" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="24" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.1/@attempts.8/@edit" start="519" end="-142"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117855451" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="25" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.taskCount++;&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;this.taskCount++;" edit="/1/@proposals.0/@proposals.1/@attempts.9/@edit" start="365" end="-191"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117951215" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="25" errorCount="1" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="operation(value1,value2)" edit="/1/@proposals.0/@proposals.1/@attempts.10/@edit" start="392" end="-272"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="405" charEnd="414" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117967367" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="25" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".apply" edit="/1/@proposals.0/@proposals.1/@attempts.11/@edit" start="401" end="-287"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118024750" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="25" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.1/@attempts.12/@edit" start="165" end="-528"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118453715" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="25" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.1/@attempts.13/@edit" start="693"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584118052796" completion="1.0" testRunName="patterns.delegation.office.ClerkTest" successCount="4">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584118221844" completion="1.0" testRunName="patterns.delegation.office.ClerkTest" successCount="4">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584116764484" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="5" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation.office;&#xA;&#xA;public class Printer {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117150063" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="17" warningCount="1" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class Printer {&#xA;&#x9;private List&lt;String> printHistory = new ArrayList&lt;>();&#xA;&#x9;//skriver documentet til konsollen og tar vare på dokumentet i employee sin historikk.&#xA;&#x9;public void printDocument(String document, Employee employee) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;//returnerer en List med alle dokumentene som har blitt printet av employee av denne printeren i rekkefølgen de har blitt printet.&#xA;&#x9;public List&lt;String> getPrintHistory(Employee employee) {&#xA;&#x9;&#x9;return null;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.4/@attempts.0/@edit" start="37" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="140" charEnd="152" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117295281" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="19" warningCount="2" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List;&#xA;import java.util.ArrayList;&#xA;import java.util.HashMap;&#xA;&#xA;public class Printer {&#xA;&#x9;private HashMap&lt;String, String> printHistory = new HashMap&lt;String, String>();&#xA;&#x9;//skriver documentet til konsollen og tar vare på dokumentet i employee sin historikk.&#xA;&#x9;public void printDocument(String document, Employee employee) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;//returnerer en List med alle dokumentene som har blitt printet av employee av denne printeren i rekkefølgen de har blitt printet.&#xA;&#x9;public List&lt;String> getPrintHistory(Employee employee) {&#xA;&#x9;&#x9;List&lt;String> h = new ArrayList&lt;>();" edit="/1/@proposals.0/@proposals.4/@attempts.1/@edit" start="54" end="-22"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="597" charEnd="598" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117360843" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="22" warningCount="2" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (int i = 0; i &lt; this.printHistory.size(); i++) {&#xA;&#x9;&#x9;&#x9;this.printHistory.get(employee);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.4/@attempts.2/@edit" start="607" end="-19"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="597" charEnd="598" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117660929" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="30" warningCount="1" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Employee, List&lt;String>> printHistory = new HashMap&lt;>();&#xA;&#x9;//skriver documentet til konsollen og tar vare på dokumentet i employee sin historikk.&#xA;&#x9;public void printDocument(String document, Employee employee) {&#xA;&#x9;&#x9;if (this.printHistory.get(employee) == null) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;List&lt;String> h = new ArrayList&lt;>();&#xA;&#x9;&#x9;&#x9;h.add(document);&#xA;&#x9;&#x9;&#x9;this.printHistory.put(employee, h);&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;List&lt;String> h = this.printHistory.get(employee);&#xA;&#x9;&#x9;&#x9;h.add(document);&#xA;&#x9;&#x9;&#x9;this.printHistory.put(employee, h);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.4/@attempts.3/@edit" start="155" end="-349"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="24" charStart="873" charEnd="874" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584117678401" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="26" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return this.printHistory.get(employee)" edit="/1/@proposals.0/@proposals.4/@attempts.4/@edit" start="837" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118118697" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="30" warningCount="1" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private void addNewEmployeeHistory(Employee employee) {&#xA;&#x9;&#x9;List&lt;String> h = new ArrayList&lt;>();&#xA;&#x9;&#x9;this.printHistory.put(employee, h);&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.4/@attempts.5/@edit" start="212" end="-671"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="233" charEnd="273" severity="1" problemCategory="120" problemType="603979894"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118190911" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="25" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" this.printHistory.put(employee, new ArrayList&lt;>()); }&#xA;&#x9;&#xA;&#x9;//skriver documentet til konsollen og tar vare på dokumentet i employee sin historikk.&#xA;&#x9;public void printDocument(String document, Employee employee) {&#xA;&#x9;&#x9;if (this.printHistory.get(employee) == null) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;addNewEmployeeHistory(employee);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;List&lt;String> h = this.printHistory.get(employee);&#xA;&#x9;&#x9;h.add(document);&#xA;&#x9;&#x9;this.printHistory.put(employee, h);" edit="/1/@proposals.0/@proposals.4/@attempts.6/@edit" start="267" end="-243"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118196207" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="28" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.printHistory.get(employee) == null) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;addNewEmployeeHistory(employee);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.4/@attempts.7/@edit" start="874" end="-46"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584118034675" completion="0.3333333333333333" testRunName="patterns.delegation.office.PrinterTest" successCount="1" errorCount="2">
          <successTests>testPrintHistoryModification</successTests>
          <errorTests>testPrintSingleClerk</errorTests>
          <errorTests>testPrintMulipleClerks</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584118225997" completion="1.0" testRunName="patterns.delegation.office.PrinterTest" successCount="3">
          <successTests>testPrintHistoryModification</successTests>
          <successTests>testPrintSingleClerk</successTests>
          <successTests>testPrintMulipleClerks</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118241216" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="10" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation.office;&#xA;&#xA;public class Manager {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118324230" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="36" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Collection;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class Manager implements Employee{&#xA;&#x9;private Collection&lt;Employee> employees;&#xA;&#x9;public Manager (Collection&lt;Employee> employees) {&#xA;&#x9;&#x9;this.employees = employees;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;" edit="/1/@proposals.0/@proposals.7/@attempts.0/@edit" start="37" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="187" charEnd="196" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118366516" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="37" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="throws IllegalArgumentException {&#xA;&#x9;&#x9;if (employees.size() == 0) throw new IllegalArgumentException(&quot;Employees er tom!&quot;);" edit="/1/@proposals.0/@proposals.7/@attempts.1/@edit" start="241" end="-489"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="187" charEnd="196" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118480660" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="38" warningCount="3" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate int taskCount = 0, resourceCount = 0;&#xA;&#x9;p" edit="/1/@proposals.0/@proposals.7/@attempts.2/@edit" start="194" end="-655"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="227" charEnd="240" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118483600" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="38" warningCount="3" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.7/@attempts.3/@edit" start="236" end="-659"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="212" charEnd="221" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118499241" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="39" warningCount="3" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;this.resourceCount += employees.size();&#xA;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.4/@edit" start="439" end="-457"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="227" charEnd="240" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118511980" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="28" errorCount="1" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;return operation.apply(value1,value2);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;this.printer.printDocument(document, this);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() { return this.taskCount; }&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() { return this.resourceCount; }" edit="/1/@proposals.0/@proposals.7/@attempts.5/@edit" start="483" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="22" charStart="759" charEnd="766" severity="2" problemCategory="50" problemType="33554502"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118551587" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="29" errorCount="1" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// delegeringsloop&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.6/@edit" start="410" end="-511"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="187" charEnd="196" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118554635" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="28" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.7/@attempts.7/@edit" start="753" end="-142"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="187" charEnd="196" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118723195" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="28" errorCount="1" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getResourceCount" edit="/1/@proposals.0/@proposals.7/@attempts.8/@edit" start="493" end="-399"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="13" charStart="505" charEnd="521" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118756201" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="30" errorCount="1" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (int i = 0; i &lt; employees.size(); i++) {&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;this.resourceCount += employees.get(i).getResourceCount();&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.7/@attempts.9/@edit" start="461" end="-396"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="187" charEnd="196" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118836368" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="30" errorCount="1" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="isEmpty()" edit="/1/@proposals.0/@proposals.7/@attempts.10/@edit" start="338" end="-621"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="555" charEnd="558" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118927899" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="27" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.employees = employees;&#xA;&#x9;&#x9;employees.forEach (e -> this.resourceCount += e.getResourceCount());" edit="/1/@proposals.0/@proposals.7/@attempts.11/@edit" start="408" end="-396"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="187" charEnd="196" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584118941574" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="27" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.7/@attempts.12/@edit" start="901"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="7" charStart="187" charEnd="196" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120176295" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="29" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (Employee e: employees)&#xA;&#x9;&#x9;       e.doCalculations(operation, value1, value2);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.13/@edit" start="639" end="-263"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120217356" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="31" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;for (Employee e: employees)&#xA;&#x9;&#x9;       e.printDocument(document);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.14/@edit" start="843" end="-143"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120342730" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="36" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="try {&#x9;&#x9;    &#x9;   &#xA;&#x9;&#x9;    &#x9;   e.doCalculations(operation, value1, value2);&#xA;&#x9;&#x9;       }&#xA;&#x9;&#x9;       catch(Exception ex) {&#xA;&#x9;&#x9;    &#x9;   break;&#xA;&#x9;&#x9;       }" edit="/1/@proposals.0/@proposals.7/@attempts.15/@edit" start="676" end="-332"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120381186" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="41" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;try {&#xA;&#x9;&#x9;&#x9;&#x9;e.printDocument(document);&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;    catch(Exception ex) {&#xA;&#x9;&#x9;    &#x9;break;&#xA;&#x9;&#x9;    }" edit="/1/@proposals.0/@proposals.7/@attempts.16/@edit" start="970" end="-145"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120400148" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="43" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" {&#xA;&#x9;&#x9;       try {&#x9;&#x9;    &#x9;   &#xA;&#x9;&#x9;    &#x9;   e.doCalculations(operation, value1, value2);&#xA;&#x9;&#x9;       }&#xA;&#x9;&#x9;       catch(Exception ex) {&#xA;&#x9;&#x9;    &#x9;   break;&#xA;&#x9;&#x9;       }&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return operation.apply(value1,value2);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;for (Employee e: employees) {&#xA;&#x9;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;&#x9;e.printDocument(document);&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;    catch(Exception ex) {&#xA;&#x9;&#x9;    &#x9;break;&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.17/@edit" start="666" end="-146"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120456517" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="45" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;   break;&#xA;&#x9;&#x9;       }&#xA;&#x9;&#x9;       catch(Exception ex) {&#xA;&#x9;&#x9;    &#x9;   break;&#xA;&#x9;&#x9;       }&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return operation.apply(value1,value2);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;for (Employee e: employees) {&#xA;&#x9;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;&#x9;e.printDocument(document);&#xA;&#x9;&#x9;&#x9;&#x9;break" edit="/1/@proposals.0/@proposals.7/@attempts.18/@edit" start="755" end="-208"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120479457" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="45" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="continue;&#xA;&#x9;&#x9;       }&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return operation.apply(value1,value2);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;for (Employee e: employees) {&#xA;&#x9;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;&#x9;e.printDocument(document);&#xA;&#x9;&#x9;&#x9;&#x9;break;&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;    catch(Exception ex) {&#xA;&#x9;&#x9;    &#x9;continue" edit="/1/@proposals.0/@proposals.7/@attempts.19/@edit" start="818" end="-158"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120508011" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="48" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.7/@attempts.20/@edit" start="1253" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120530490" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="51" errorCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Printer printer = new Printer();&#xA;&#x9;&#x9;Clerk clerk = new Clerk(printer);&#xA;&#x9;&#x9;Clerk secondClerk = new Clerk(printer);&#xA;&#x9;&#x9;Manager manager = new Manager(Arrays.asList(clerk));" edit="/1/@proposals.0/@proposals.7/@attempts.21/@edit" start="1297" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="49" charStart="1488" charEnd="1494" severity="2" problemCategory="50" problemType="570425394"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120544297" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="53" errorCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Arrays;&#xA;import java.util.Collection;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class Manager implements Employee{&#xA;&#x9;private Collection&lt;Employee> employees;&#xA;&#x9;private int taskCount = 0, resourceCount = 1;&#xA;&#x9;public Manager (Collection&lt;Employee> employees) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (employees.isEmpty()) throw new IllegalArgumentException(&quot;Employees er tom!&quot;);&#xA;&#x9;&#x9;this.employees = employees;&#xA;&#x9;&#x9;employees.forEach (e -> this.resourceCount += e.getResourceCount());&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;for (Employee e: employees) {&#xA;&#x9;&#x9;       try {&#x9;&#x9;    &#x9;   &#xA;&#x9;&#x9;    &#x9;   e.doCalculations(operation, value1, value2);&#xA;&#x9;&#x9;    &#x9;   break;&#xA;&#x9;&#x9;       }&#xA;&#x9;&#x9;       catch(Exception ex) {&#xA;&#x9;&#x9;    &#x9;   continue;&#xA;&#x9;&#x9;       }&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return operation.apply(value1,value2);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;for (Employee e: employees) {&#xA;&#x9;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;&#x9;e.printDocument(document);&#xA;&#x9;&#x9;&#x9;&#x9;break;&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;    catch(Exception ex) {&#xA;&#x9;&#x9;    &#x9;continue;&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() { return this.taskCount; }&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() { return this.resourceCount; }&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Printer printer = new Printer();&#xA;&#x9;&#x9;Clerk clerk = new Clerk(printer);&#xA;&#x9;&#x9;Clerk secondClerk = new Clerk(printer);&#xA;&#x9;&#x9;Manager manager = new Manager(Arrays.asList(clerk));&#xA;&#x9;&#x9;instance topManager = new Manager(Arrays.asList(manager))" edit="/1/@proposals.0/@proposals.7/@attempts.22/@edit" start="54" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="51" charStart="1596" charEnd="1597" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120565672" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="53" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="clerk2 = new Clerk(printer);&#xA;&#x9;&#x9;Manager manager = new Manager(Arrays.asList(clerk,clerk2));&#xA;&#x9;&#x9;Manager topManager = new Manager(Arrays.asList(manager));" edit="/1/@proposals.0/@proposals.7/@attempts.23/@edit" start="1399" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="51" charStart="1550" charEnd="1560" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120602557" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="55" warningCount="1" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(manager.getTaskCount());&#xA;&#x9;&#x9;System.out.println(manager.getResourceCount());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.24/@edit" start="1492" end="-64"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="53" charStart="1648" charEnd="1658" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120786719" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="51" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Random;&#xA;public class Manager implements Employee{&#xA;&#x9;private Collection&lt;Employee> employees;&#xA;&#x9;private int taskCount = 0, resourceCount = 1;&#xA;&#x9;public Manager (Collection&lt;Employee> employees) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (employees.isEmpty()) throw new IllegalArgumentException(&quot;Employees er tom!&quot;);&#xA;&#x9;&#x9;this.employees = employees;&#xA;&#x9;&#x9;employees.forEach (e -> this.resourceCount += e.getResourceCount());&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;int rnd = new Random().nextInt(employees.size());&#xA;&#x9;&#x9;for (Employee e: employees) {&#x9;    &#x9;   &#xA;&#x9;&#x9;&#x9;e.doCalculations(operation, value1, value2);&#xA;&#x9;&#x9;    break;" edit="/1/@proposals.0/@proposals.7/@attempts.25/@edit" start="133" end="-789"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="49" charStart="1620" charEnd="1630" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120861625" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="52" warningCount="4" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Iterator;&#xA;import java.util.function.BinaryOperator;&#xA;import java.util.Random;&#xA;public class Manager implements Employee{&#xA;&#x9;private Collection&lt;Employee> employees;&#xA;&#x9;private int taskCount = 0, resourceCount = 1;&#xA;&#x9;public Manager (Collection&lt;Employee> employees) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (employees.isEmpty()) throw new IllegalArgumentException(&quot;Employees er tom!&quot;);&#xA;&#x9;&#x9;this.employees = employees;&#xA;&#x9;&#x9;employees.forEach (e -> this.resourceCount += e.getResourceCount());&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;        Iterator it = employees.iterator(); &#xA;        while (it.hasNext()) {        &#x9;&#xA;        &#x9;int rnd = new Random().nextInt(employees.size());&#xA;        &#x9;Employee e = (Employee) it.next(); &#xA;        " edit="/1/@proposals.0/@proposals.7/@attempts.26/@edit" start="108" end="-786"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="50" charStart="1689" charEnd="1699" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120897048" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="58" warningCount="3" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (rnd == 0) {        &#x9;&#x9;&#xA;        &#x9;&#x9;Employee e = (Employee) it.next();&#xA;        &#x9;&#x9;break;&#xA;        &#x9;}&#xA;        &#x9;if (!it.hasNext()) {&#xA;        &#x9;&#x9;&#xA;        &#x9;}" edit="/1/@proposals.0/@proposals.7/@attempts.27/@edit" start="866" end="-795"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="56" charStart="1810" charEnd="1820" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120905823" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="59" warningCount="4" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Employee e = (Employee) it.next();&#xA;        &#x9;&#x9;break;" edit="/1/@proposals.0/@proposals.7/@attempts.28/@edit" start="1005" end="-806"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="739" charEnd="747" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120969164" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="71" errorCount="4" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Employee e = (Employee) it.next();&#xA;        &#x9;if (rnd == 0) {        &#x9;&#x9;&#xA;        &#x9;&#x9;e.doCalculations(operation, value1, value2);&#xA;        &#x9;&#x9;break;&#xA;        &#x9;}&#xA;        &#x9;if (!it.hasNext()) {&#xA;        &#x9;&#x9;e.doCalculations(operation, value1, value2);&#xA;        &#x9;&#x9;break;&#xA;        &#x9;}&#xA;        }&#xA;&#x9;&#x9;return operation.apply(value1,value2);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;while (it.hasNext()) {        &#x9;&#xA;        &#x9;int rnd = new Random().nextInt(employees.size());&#xA;        &#x9;if (rnd == 0) {        &#x9;&#x9;&#xA;        &#x9;&#x9;Employee e = (Employee) it.next();&#xA;        &#x9;&#x9;break;&#xA;        &#x9;}&#xA;        &#x9;if (!it.hasNext()) {&#xA;        &#x9;&#x9;e.printDocument(document);&#xA;        &#x9;&#x9;break;&#xA;        &#x9;}&#xA;        }" edit="/1/@proposals.0/@proposals.7/@attempts.29/@edit" start="866" end="-664"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="69" charStart="2244" charEnd="2254" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584120996726" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="64" warningCount="3" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Iterator it = employees.iterator(); &#xA;&#x9;&#x9;while (it.hasNext()) {        &#x9;&#xA;        &#x9;int rnd = new Random().nextInt(employees.size());&#xA;        &#x9;Employee e = (Employee) it.next();&#xA;        &#x9;if (rnd == 0) {        &#x9;&#x9;&#xA;        &#x9;&#x9;e.printDocument(document);&#xA;        &#x9;&#x9;break;&#xA;        &#x9;}&#xA;        &#x9;if (!it.hasNext()) {&#xA;        &#x9;&#x9;e.printDocument(document);&#xA;        &#x9;&#x9;break;&#xA;        &#x9;}&#xA;        " edit="/1/@proposals.0/@proposals.7/@attempts.30/@edit" start="1265" end="-517"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="739" charEnd="747" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121058038" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="66" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(topManager.getTaskCount());&#xA;&#x9;&#x9;System.out.println(topManager.getResourceCount());&#xA;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.31/@edit" start="2154" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121073629" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="69" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;Manager toptopManager = new Manager(Arrays.asList(manager));&#xA;&#x9;&#x9;System.out.println(toptopManager.getTaskCount());&#xA;&#x9;&#x9;System.out.println(toptopManager.getResourceCount());&#xA;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.32/@edit" start="2256" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="739" charEnd="747" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121099160" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="72" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;manager&quot;);&#xA;&#x9;&#x9;System.out.println(manager.getTaskCount());&#xA;&#x9;&#x9;System.out.println(manager.getResourceCount());&#xA;&#x9;&#x9;Manager topManager = new Manager(Arrays.asList(manager));&#xA;&#x9;&#x9;System.out.println(&quot;topmanager&quot;);&#xA;&#x9;&#x9;System.out.println(topManager.getTaskCount());&#xA;&#x9;&#x9;System.out.println(topManager.getResourceCount());&#xA;&#x9;&#x9;Manager toptopManager = new Manager(Arrays.asList(manager));&#xA;&#x9;&#x9;System.out.println(&quot;toptopmanager&quot;" edit="/1/@proposals.0/@proposals.7/@attempts.33/@edit" start="2018" end="-117"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121106835" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="72" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="topM" edit="/1/@proposals.0/@proposals.7/@attempts.34/@edit" start="2376" end="-163"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121125206" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="74" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Clerk clerk3 = new Clerk(printer);&#xA;&#x9;&#x9;Clerk clerk4 = new Clerk(printer);&#xA;&#x9;&#x9;Manager manager = new Manager(Arrays.asList(clerk,clerk2,clerk3,clerk4" edit="/1/@proposals.0/@proposals.7/@attempts.35/@edit" start="1937" end="-550"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121160557" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="71" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" + &quot;/&quot; + manager.getResourceCount());&#xA;&#x9;&#x9;Manager topManager = new Manager(Arrays.asList(manager));&#xA;&#x9;&#x9;System.out.println(&quot;topmanager&quot;);&#xA;&#x9;&#x9;System.out.println(topManager.getTaskCount() + &quot;/&quot; + topManager.getResourceCount());&#xA;&#x9;&#x9;Manager toptopManager = new Manager(Arrays.asList(topManager));&#xA;&#x9;&#x9;System.out.println(&quot;toptopmanager&quot;);&#xA;&#x9;&#x9;System.out.println(toptopManager.getTaskCount() + &quot;/&quot; + " edit="/1/@proposals.0/@proposals.7/@attempts.36/@edit" start="2161" end="-41"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121183379" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="72" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="manager.printDocument(&quot;Manager: Doc1&quot;);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.37/@edit" start="2087" end="-499"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="739" charEnd="747" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121191120" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="73" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="manager.printDocument(&quot;Manager: Doc1&quot;);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.38/@edit" start="2129" end="-499"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121217658" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="77" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="2&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;manager&quot;);&#xA;&#x9;&#x9;System.out.println(manager.getTaskCount() + &quot;/&quot; + manager.getResourceCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;Manager topManager = new Manager(Arrays.asList(manager));&#xA;&#x9;&#x9;manager.printDocument(&quot;topManager: Doc3&quot;);&#xA;&#x9;&#x9;manager.printDocument(&quot;topManager: Doc14&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;topmanager&quot;);&#xA;&#x9;&#x9;System.out.println(topManager.getTaskCount() + &quot;/&quot; + topManager.getResourceCount());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.39/@edit" start="2164" end="-205"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121220133" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="77" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="4" edit="/1/@proposals.0/@proposals.7/@attempts.40/@edit" start="2431" end="-334"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121229532" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="77" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="topManager.printDocument(&quot;topManager: Doc3&quot;);&#xA;&#x9;&#x9;topM" edit="/1/@proposals.0/@proposals.7/@attempts.41/@edit" start="2348" end="-372"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121254146" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="79" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="toptopManager.printDocument(&quot;toptopManager: Doc3&quot;);&#xA;&#x9;&#x9;toptopManager.printDocument(&quot;toptopManager: Doc4&quot;);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.42/@edit" start="2636" end="-136"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="739" charEnd="747" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121268184" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="85" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;&#x9;Manager toptoptopManager = new Manager(Arrays.asList(topManager));&#xA;&#x9;&#x9;toptoptopManager.printDocument(&quot;toptoptopManager: Doc3&quot;);&#xA;&#x9;&#x9;toptoptopManager.printDocument(&quot;toptoptopManager: Doc4&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;toptoptopManager&quot;);&#xA;&#x9;&#x9;System.out.println(toptoptopManager.getTaskCount() + &quot;/&quot; + toptoptopManager.getResourceCount());&#xA;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.43/@edit" start="2875" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121275752" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="85" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="top" edit="/1/@proposals.0/@proposals.7/@attempts.44/@edit" start="2935" end="-278"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121289314" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="85" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=":&quot;);&#xA;&#x9;&#x9;System.out.println(manager.getTaskCount() + &quot;/&quot; + manager.getResourceCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;Manager topManager = new Manager(Arrays.asList(manager));&#xA;&#x9;&#x9;topManager.printDocument(&quot;topManager: Doc3&quot;);&#xA;&#x9;&#x9;topManager.printDocument(&quot;topManager: Doc4&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;topmanager:&quot;);&#xA;&#x9;&#x9;System.out.println(topManager.getTaskCount() + &quot;/&quot; + topManager.getResourceCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;Manager toptopManager = new Manager(Arrays.asList(topManager));&#xA;&#x9;&#x9;toptopManager.printDocument(&quot;toptopManager: Doc3&quot;);&#xA;&#x9;&#x9;toptopManager.printDocument(&quot;toptopManager: Doc4&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;toptopmanager:&quot;);&#xA;&#x9;&#x9;System.out.println(toptopManager.getTaskCount() + &quot;/&quot; + toptopManager.getResourceCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;Manager toptoptopManager = new Manager(Arrays.asList(toptopManager));&#xA;&#x9;&#x9;toptoptopManager.printDocument(&quot;toptoptopManager: Doc3&quot;);&#xA;&#x9;&#x9;toptoptopManager.printDocument(&quot;toptoptopManager: Doc4&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;toptoptopManager:" edit="/1/@proposals.0/@proposals.7/@attempts.45/@edit" start="2198" end="-109"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121295851" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="85" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="5&quot;);&#xA;&#x9;&#x9;toptopManager.printDocument(&quot;toptopManager: Doc6&quot;);&#xA;&#x9;&#x9;System.out.println(&quot;toptopmanager:&quot;);&#xA;&#x9;&#x9;System.out.println(toptopManager.getTaskCount() + &quot;/&quot; + toptopManager.getResourceCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;Manager toptoptopManager = new Manager(Arrays.asList(toptopManager));&#xA;&#x9;&#x9;toptoptopManager.printDocument(&quot;toptoptopManager: Doc7&quot;);&#xA;&#x9;&#x9;toptoptopManager.printDocument(&quot;toptoptopManager: Doc8" edit="/1/@proposals.0/@proposals.7/@attempts.46/@edit" start="2685" end="-152"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="37" charStart="1301" charEnd="1309" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121315877" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="86" warningCount="2" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;" edit="/1/@proposals.0/@proposals.7/@attempts.47/@edit" start="1786" end="-1434"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="739" charEnd="747" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584121328748" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="86" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt;Employee> it = employees.iterator(); &#xA;        while (it.hasNext()) {        &#x9;&#xA;        &#x9;int rnd = new Random().nextInt(employees.size());&#xA;        &#x9;Employee e = (Employee) it.next();&#xA;        &#x9;if (rnd == 0) {        &#x9;&#x9;&#xA;        &#x9;&#x9;e.doCalculations(operation, value1, value2);&#xA;        &#x9;&#x9;break;&#xA;        &#x9;}&#xA;        &#x9;if (!it.hasNext()) {&#xA;        &#x9;&#x9;e.doCalculations(operation, value1, value2);&#xA;        &#x9;&#x9;break;&#xA;        &#x9;}&#xA;        }&#xA;&#x9;&#x9;return operation.apply(value1,value2);&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;this.taskCount++;&#xA;&#x9;&#x9;Iterator&lt;Employee>" edit="/1/@proposals.0/@proposals.7/@attempts.48/@edit" start="729" end="-1949"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121039306" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
3&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121058936" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
3&#xD;
0&#xD;
4&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121074832" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
3&#xD;
0&#xD;
4&#xD;
0&#xD;
4&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121100062" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager&#xD;
0&#xD;
3&#xD;
topmanager&#xD;
0&#xD;
4&#xD;
toptopmanager&#xD;
0&#xD;
4&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121107689" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager&#xD;
0&#xD;
3&#xD;
topmanager&#xD;
0&#xD;
4&#xD;
toptopmanager&#xD;
0&#xD;
5&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121126409" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager&#xD;
0&#xD;
5&#xD;
topmanager&#xD;
0&#xD;
6&#xD;
toptopmanager&#xD;
0&#xD;
7&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121162008" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager&#xD;
0/5&#xD;
topmanager&#xD;
0/6&#xD;
toptopmanager&#xD;
0/7&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121186680" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager&#xD;
1/5&#xD;
topmanager&#xD;
0/6&#xD;
toptopmanager&#xD;
0/7&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121220538" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager&#xD;
2/5&#xD;
topmanager&#xD;
0/6&#xD;
toptopmanager&#xD;
0/7&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121230464" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager&#xD;
2/5&#xD;
topmanager&#xD;
2/6&#xD;
toptopmanager&#xD;
0/7&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121269074" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager&#xD;
2/5&#xD;
topmanager&#xD;
2/6&#xD;
toptopmanager&#xD;
2/7&#xD;
toptoptopManager&#xD;
2/7&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121276726" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager&#xD;
2/5&#xD;
topmanager&#xD;
2/6&#xD;
toptopmanager&#xD;
2/7&#xD;
toptoptopManager&#xD;
2/8&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584121296914" mode="run" className="patterns.delegation.office.Manager">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.office.Manager</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>manager:&#xD;
2/5&#xD;
topmanager:&#xD;
2/6&#xD;
toptopmanager:&#xD;
2/7&#xD;
toptoptopManager:&#xD;
2/8&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584120415185" completion="0.8571428571428571" testRunName="patterns.delegation.office.ManagerTest" successCount="6" failureCount="1">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testMiddleManagementResourceCounts</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
          <successTests>testNoEmployeesConstructor</successTests>
          <failureTests>testSeveralClerks</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584120483847" completion="1.0" testRunName="patterns.delegation.office.ManagerTest" successCount="7">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testSeveralClerks</successTests>
          <successTests>testMiddleManagementResourceCounts</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
          <successTests>testNoEmployeesConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584121003415" completion="1.0" testRunName="patterns.delegation.office.ManagerTest" successCount="7">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testSeveralClerks</successTests>
          <successTests>testMiddleManagementResourceCounts</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
          <successTests>testNoEmployeesConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584121335920" completion="1.0" testRunName="patterns.delegation.office.ManagerTest" successCount="7">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testSeveralClerks</successTests>
          <successTests>testMiddleManagementResourceCounts</successTests>
          <successTests>testTaskCount</successTests>
          <successTests>testPrintDocuments</successTests>
          <successTests>testNoEmployeesConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
