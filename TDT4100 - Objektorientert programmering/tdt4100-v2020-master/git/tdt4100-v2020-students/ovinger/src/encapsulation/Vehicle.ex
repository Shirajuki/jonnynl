<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Vehicle">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Vehicle class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.Vehicle"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Vehicle class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.Vehicle"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Vehicle class, by running the VehicleTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.VehicleTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Using Eclipse">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579175457277" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="10" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;public class Vehicle {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579175484479" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="11" errorCount="1" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private &#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="47" end="-88"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="79" charEnd="98" severity="2" problemCategory="50" problemType="67109224"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579175496666" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="10" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="48" end="-87"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579175532184" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="11" errorCount="3" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private char kjoretoy = &quot;M&quot;;&#xA;&#x9;private char kjoretoy = &quot;M&quot;;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="48" end="-88"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="91" charEnd="99" severity="2" problemCategory="50" problemType="33554772"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579175560524" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="11" errorCount="2" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";&#xA;&#x9;private char drivstoff = &quot;E" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="74" end="-90"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="72" charEnd="75" severity="2" problemCategory="20" problemType="1610612995"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579175566778" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="11" errorCount="2" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="74" end="-120"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="103" charEnd="106" severity="2" problemCategory="40" problemType="16777233"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579175578037" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="11" errorCount="2" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="M;&#xA;&#x9;private char drivstoff = E" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="72" end="-89"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="101" charEnd="102" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579175581711" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="11" warningCount="2" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="'M';&#xA;&#x9;private char drivstoff = 'E'" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="72" end="-89"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="91" charEnd="100" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579175756129" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="12" warningCount="3" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate String registreringsnummer = &quot;&quot;; &#xA;&#x9;p" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="110" end="-85"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="124" charEnd="143" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579176239853" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="37" errorCount="1" warningCount="2" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="vehicleType = 'M';&#xA;&#x9;private char fuelType = 'E';&#xA;&#x9;private String registrationNumber = &quot;&quot;;&#xA;&#x9;&#xA;&#x9;public Vehicle(char v, char f, String r) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (false) throw new IllegalArgumentException(&quot;ERROR MESSAGE!&quot;);&#xA;&#x9;&#x9;this.vehicleType = v;&#xA;&#x9;&#x9;this.fuelType = f;&#xA;&#x9;&#x9;this.registrationNumber = r;&#xA;&#x9;}&#xA;&#x9;// Methods&#xA;&#x9;public char getFuelType() {&#xA;&#x9;&#x9;return this.fuelType;&#xA;&#x9;}&#xA;&#x9;public String getRegistrationNumber() {&#xA;&#x9;&#x9;return this.registrationNumber;&#xA;&#x9;}&#xA;&#x9;public void setRegistrationNumber(String r) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (false) throw new IllegalArgumentException(&quot;ERROR MESSAGE!&quot;);&#xA;&#x9;&#x9;this.registrationNumber = r;&#xA;&#x9;}&#xA;&#x9;public char getVehicleType() {&#xA;&#x9;&#x9;return this.vehicleType;&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Vehicle v = new Vehicle('M','E',&quot;EL&quot;);&#xA;&#x9;&#x9;System.out.println(v.getFuelType());&#xA;&#x9;&#x9;v.setRegistrationNumber(&quot;EK&quot;)&#xA;&#x9;&#x9;System.out.println(v.getRegistrationNumber());&#xA;&#x9;&#x9;System.out.println(v.getVehicleType());" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="61" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="31" charStart="915" charEnd="916" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579176276425" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="37" warningCount="2" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="916" end="-100"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="22" charStart="613" charEnd="666" severity="1" problemCategory="90" problemType="536871061"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579437281147" resourcePath="/ovinger/src/encapsulation/Vehicle.java" sizeMeasure="118" warningCount="2" className="encapsulation.Vehicle">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="final char[] VEHICLE_TYPES_ARRAY = {'M', 'C'};&#xA;&#x9;private final char[] FUEL_TYPES_ARRAY = {'H', 'E', 'D', 'G'};&#xA;&#x9;private final char[] EXCLUDED_CHARS = {'Æ','Ø','Å'};&#xA;&#x9;private final char[] EXCLUDED_NUMBERS = {'1','2','3','4','5','6','7','8','9','0'};&#xA;&#x9;private final String[] EXCLUDED_STRINGS = {&quot;HY&quot;,&quot;EK&quot;,&quot;EL&quot;};&#xA;&#x9;private char vehicleType;&#xA;&#x9;private char fuelType;&#xA;&#x9;private String registrationNumber = &quot;&quot;;&#xA;&#xA;&#x9;public Vehicle(char v, char f, String r) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (!this.validVehicle(v,f,r)) throw new IllegalArgumentException(&quot;Invalid vehicle!&quot;);&#xA;&#x9;&#x9;this.vehicleType = v;&#xA;&#x9;&#x9;this.fuelType = f;&#xA;&#x9;&#x9;this.registrationNumber = r;&#xA;&#x9;}&#xA;&#x9;// PRIVATE METHODS&#xA;&#x9;private Boolean validCharInChars(char c, char[] chars) {&#xA;&#x9;&#x9;Boolean b = false;&#xA;&#x9;&#x9;for (int i = 0; i &lt; chars.length; i++) {&#xA;&#x9;&#x9;&#x9;if (c == chars[i]) b = true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return b;&#xA;&#x9;}&#xA;&#x9;private Boolean isSubstringsInString(int start, int end, String string, String[] subs) {&#xA;&#x9;&#x9;Boolean b = false;&#xA;&#x9;&#x9;for (int i = 0; i &lt; subs.length; i++) {&#xA;&#x9;&#x9;&#x9;if (string.substring(start,end).equals(subs[i])) b = true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return b;&#xA;&#x9;}&#xA;&#x9;private Boolean isCharsInString(String string, char[] chars) {&#xA;&#x9;&#x9;Boolean b = false;&#xA;&#x9;&#x9;for (int i = 0; i &lt; chars.length; i++) {&#xA;&#x9;&#x9;&#x9;if (string.indexOf(chars[i]) != -1) b = true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return b;&#xA;&#x9;}&#xA;&#x9;private Boolean isNumeric(String sNum) {&#xA;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;int i = Integer.parseInt(sNum);&#xA;&#x9;&#x9;} catch (NumberFormatException efn) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return true;&#xA;&#x9;}&#xA;&#x9;private Boolean validRegistrationNumber(char v, char f, String r) {&#xA;&#x9;&#x9;if (r.equals(r.toUpperCase())) { // Bare store bokstaver&#xA;&#x9;&#x9;&#x9;Boolean b = true;&#xA;&#x9;&#x9;&#x9;if (f == 'E' &amp;&amp; !(r.substring(0,2).equals(&quot;EL&quot;) || r.substring(0,2).equals(&quot;EK&quot;))) { // E kjøretøy&#xA;&#x9;&#x9;&#x9;&#x9;b = false;&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;1&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if (f == 'H' &amp;&amp; v == 'C' &amp;&amp; !r.substring(0,2).equals(&quot;HY&quot;)) { // Hydrogenbiler&#xA;&#x9;&#x9;&#x9;&#x9;b = false;&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;2&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if (f == 'H' &amp;&amp; v == 'M' &amp;&amp; r.substring(0,2).equals(&quot;HY&quot;)) { // Hydrogen motorsykkel??&#xA;&#x9;&#x9;&#x9;&#x9;b = false;&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;2&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;System.out.println(this.isCharsInString(r,EXCLUDED_CHARS));&#xA;&#x9;&#x9;&#x9;System.out.println(this.isSubstringsInString(0,2,r,EXCLUDED_STRINGS));&#xA;&#x9;&#x9;&#x9;if ((f == 'D' || f == 'G') &amp;&amp; (this.isSubstringsInString(0,2,r,EXCLUDED_STRINGS) || this.isCharsInString(r,EXCLUDED_CHARS))) { // Diesel og Bensin&#xA;&#x9;&#x9;&#x9;&#x9;b = false;&#xA;&#x9;&#x9;&#x9;&#x9;System.out.println(&quot;3&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if (v == 'M') { // Motorsykkelsjekk&#xA;&#x9;&#x9;&#x9;&#x9;if (r.length() != 2+4) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;b = false;&#xA;&#x9;&#x9;&#x9;&#x9;} else if (!this.isNumeric(r.substring(2,2+4)) || this.isNumeric(r.substring(0,1)) || this.isNumeric(r.substring(1,2))) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;b = false;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if (v == 'C') { // Bilsjekk&#xA;&#x9;&#x9;&#x9;&#x9;if (r.length() != 2+5) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;b = false;&#xA;&#x9;&#x9;&#x9;&#x9;} else if (!this.isNumeric(r.substring(2,2+5)) || this.isNumeric(r.substring(0,1)) || this.isNumeric(r.substring(1,2))) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;b = false;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;return b;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;private Boolean validVehicle(char v, char f, String r) {&#xA;&#x9;&#x9;if (r.length() > 2+5) return false;&#xA;&#x9;&#x9;else if (this.validCharInChars(v,VEHICLE_TYPES_ARRAY) &amp;&amp; this.validCharInChars(f,FUEL_TYPES_ARRAY)) {&#xA;&#x9;&#x9;&#x9;if (this.validRegistrationNumber(v,f,r)) return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#xA;&#x9;// PUBLIC METHODS&#xA;&#x9;public char getFuelType() {&#xA;&#x9;&#x9;return this.fuelType;&#xA;&#x9;}&#xA;&#x9;public String getRegistrationNumber() {&#xA;&#x9;&#x9;return this.registrationNumber;&#xA;&#x9;}&#xA;&#x9;public void setRegistrationNumber(String r) throws IllegalArgumentException {&#xA;&#x9;&#x9;if (!validRegistrationNumber(this.vehicleType,this.fuelType,r)) throw new IllegalArgumentException(&quot;Invalid registration number!&quot;);&#xA;&#x9;&#x9;this.registrationNumber = r;&#xA;&#x9;}&#xA;&#x9;public char getVehicleType() {&#xA;&#x9;&#x9;return this.vehicleType;&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Vehicle v = new Vehicle('C', 'G', &quot;AÆ21234&quot;);&#xA;&#x9;&#x9;//v.setRegistrationNumber(&quot;HY5433&quot;);&#xA;&#x9;&#x9;System.out.println(v.getFuelType());&#xA;&#x9;&#x9;System.out.println(v.getVehicleType());&#xA;&#x9;&#x9;System.out.println(v.getRegistrationNumber());" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="56" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="43" charStart="1382" charEnd="1383" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579176241309" mode="run" className="encapsulation.Vehicle">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Vehicle</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	Syntax error, insert &quot;;&quot; to complete Statement

	at ovinger/encapsulation.Vehicle.main(Vehicle.java:31)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579176283583" mode="run" className="encapsulation.Vehicle">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Vehicle</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>E
EK
M
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1579437287425" mode="run" className="encapsulation.Vehicle">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Vehicle</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>true
false
3
Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Invalid vehicle!
	at ovinger/encapsulation.Vehicle.&lt;init>(Vehicle.java:14)
	at ovinger/encapsulation.Vehicle.main(Vehicle.java:111)
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579437075496" completion="0.14285714285714285" testRunName="encapsulation.VehicleTest" successCount="1" errorCount="6">
          <successTests>testConstructorInvalidVehicleType</successTests>
          <errorTests>testConstructorInvalidFuel</errorTests>
          <errorTests>testConstructorInvalidRegistrationNumber</errorTests>
          <errorTests>testSetRegistrationNumberInvalidUse</errorTests>
          <errorTests>testConstructorCorrectUse</errorTests>
          <errorTests>testSetRegistrationNumberInvalidUseDoesntChangeState</errorTests>
          <errorTests>testSetRegistrationNumberCorrectUse</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579437251097" completion="0.14285714285714285" testRunName="encapsulation.VehicleTest" successCount="1" errorCount="6">
          <successTests>testConstructorInvalidVehicleType</successTests>
          <errorTests>testConstructorInvalidFuel</errorTests>
          <errorTests>testConstructorInvalidRegistrationNumber</errorTests>
          <errorTests>testSetRegistrationNumberInvalidUse</errorTests>
          <errorTests>testConstructorCorrectUse</errorTests>
          <errorTests>testSetRegistrationNumberInvalidUseDoesntChangeState</errorTests>
          <errorTests>testSetRegistrationNumberCorrectUse</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579437297480" completion="1.0" testRunName="encapsulation.VehicleTest" successCount="7">
          <successTests>testConstructorInvalidFuel</successTests>
          <successTests>testConstructorInvalidRegistrationNumber</successTests>
          <successTests>testSetRegistrationNumberInvalidUse</successTests>
          <successTests>testConstructorCorrectUse</successTests>
          <successTests>testConstructorInvalidVehicleType</successTests>
          <successTests>testSetRegistrationNumberInvalidUseDoesntChangeState</successTests>
          <successTests>testSetRegistrationNumberCorrectUse</successTests>
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
