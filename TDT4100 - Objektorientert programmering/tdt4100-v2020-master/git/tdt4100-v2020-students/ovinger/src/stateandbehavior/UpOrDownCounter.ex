<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="UpOrDownCounter">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the UpOrDownCounter class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="stateandbehavior.UpOrDownCounter"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the UpOrDownCounter class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="stateandbehavior.UpOrDownCounter"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the UpOrDownCounter class, by running the UpOrDownCounterTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="stateandbehavior.UpOrDownCounterTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579173489927" resourcePath="/ovinger/src/stateandbehavior/UpOrDownCounter.java" sizeMeasure="39" warningCount="1" className="stateandbehavior.UpOrDownCounter">
          <edit xsi:type="exercise:StringEdit" storedString="package stateandbehavior;&#xA;public class UpOrDownCounter {&#xA;  // CONSTRUCTOR&#xA;  private int counter = 0, end = 0;&#xA;  public UpOrDownCounter(int start, int end) throws IllegalArgumentException {&#xA;    if (start == end) throw new IllegalArgumentException(&quot;start verdi er lik end&quot;);&#xA;    this.counter = start;&#xA;    this.end = end;&#xA;  }&#xA;  // METHODS&#xA;  public void countDown() {&#xA;    if (counter > 0) counter--;&#xA;  }&#xA;  public boolean count() {&#xA;    if (this.counter > this.end) {&#xA;      counter--;&#xA;    } else if (this.counter &lt; this.end)  {&#xA;      counter++;&#xA;    }&#xA;    return !(this.counter == this.end);&#xA;  }&#xA;  public int getCounter() {&#xA;    return this.counter;&#xA;  }&#xA;&#xA;  // MAIN&#xA;  public static void main(String[] args) {&#xA;    UpOrDownCounter udc = new UpOrDownCounter(5,2);&#xA;    UpOrDownCounter udc2 = new UpOrDownCounter(2,2);&#xA;    System.out.printf(&quot;Telleren er %s, &quot;, udc.getCounter());&#xA;    System.out.println(udc.counter == udc.end);&#xA;    while (udc.count()) {&#xA;      System.out.printf(&quot;Telleren er %s, &quot;, udc.getCounter());&#xA;      System.out.println(udc.counter == udc.end);&#xA;    }&#xA;    System.out.printf(&quot;Telleren er %s, &quot;, udc.getCounter());&#xA;    System.out.println(udc.counter == udc.end);&#xA;  }&#xA;}&#xA;"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="29" charStart="772" charEnd="776" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579173503688" completion="1.0" testRunName="stateandbehavior.UpOrDownCounterTest" successCount="3">
          <successTests>testUpOrDownCounter</successTests>
          <successTests>testCountUp</successTests>
          <successTests>testCountDown</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579173511511" completion="1.0" testRunName="stateandbehavior.UpOrDownCounterTest" successCount="3">
          <successTests>testUpOrDownCounter</successTests>
          <successTests>testCountUp</successTests>
          <successTests>testCountDown</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579174920480" completion="1.0" testRunName="stateandbehavior.UpOrDownCounterTest" successCount="3">
          <successTests>testUpOrDownCounter</successTests>
          <successTests>testCountUp</successTests>
          <successTests>testCountDown</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579437137507" completion="1.0" testRunName="stateandbehavior.UpOrDownCounterTest" successCount="3">
          <successTests>testUpOrDownCounter</successTests>
          <successTests>testCountUp</successTests>
          <successTests>testCountDown</successTests>
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
