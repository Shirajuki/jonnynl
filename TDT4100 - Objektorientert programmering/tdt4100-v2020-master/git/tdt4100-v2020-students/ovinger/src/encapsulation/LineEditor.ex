<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="LineEditor">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the LineEditor class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.LineEditor"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the LineEditor class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.LineEditor"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the LineEditor class, by running the LineEditorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.LineEditorTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1579437241735" resourcePath="/ovinger/src/encapsulation/LineEditor.java" sizeMeasure="75" errorCount="1" className="encapsulation.LineEditor">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;public class LineEditor {&#xA;  // CONSTRUCTOR&#xA;  private String text = &quot;&quot;;&#xA;  private int insertionIndex = 0;&#xA;  &#xA;  // PUBLIC METHODS&#xA;  public void left() {&#xA;    if (this.insertionIndex > 0) this.insertionIndex--;&#xA;  }&#xA;  public void right() {&#xA;    if (this.insertionIndex &lt; text.length()) this.insertionIndex++;&#xA;  }&#xA;  public void insertString(String s) {&#xA;    this.text = this.text.substring(0,this.insertionIndex) + s + this.text.substring(this.insertionIndex,this.text.length());&#xA;    for (int i = 0; i &lt; s.length(); i++) {&#xA;      this.right();&#xA;    }&#xA;  }&#xA;  public void deleteLeft() {&#xA;    if (this.insertionIndex > 0) {&#xA;      this.text = this.text.substring(0,this.insertionIndex-1) + this.text.substring(this.insertionIndex,this.text.length());&#xA;      this.left();&#xA;    }&#xA;  }&#xA;  public void deleteRight() {&#xA;    if (this.insertionIndex &lt; text.length()) this.text = this.text.substring(0,this.insertionIndex) + this.text.substring(this.insertionIndex+1,this.text.length());&#xA;  }&#xA;  public String getText() {&#xA;    return this.text;&#xA;  }&#xA;  public void setText(String s) {&#xA;    this.text = s;&#xA;    this.insertionIndex = 0;&#xA;  }&#xA;  public int getInsertionIndex() {&#xA;    return this.insertionIndex;&#xA;  }&#xA;  public void setInsertionIndex(int i) throws IllegalArgumentException {&#xA;    if (i &lt; 0 || i > this.text.length()) throw new IllegalArgumentException(&quot;Wrong placement!&quot;);&#xA;    this.insertionIndex = i;&#xA;  }&#xA;  public String toString() {&#xA;    return this.text.substring(0,this.insertionIndex) + &quot;|&quot; + this.text.substring(this.insertionIndex,this.text.length());&#xA;  }&#xA;  // MAIN&#xA;  public static void main(String[] args) {&#xA;    LineEditor le = new LineEditor();&#xA;    le.setText(&quot;Java&quot;);&#xA;    System.out.printf(&quot;%s\n&quot;, le.toString());&#xA;    le.right();&#xA;    le.right();&#xA;    le.right();&#xA;    System.out.printf(&quot;%s\n&quot;, le.toString());&#xA;    le.deleteLeft();&#xA;    System.out.printf(&quot;%s\n&quot;, le.toString());&#xA;    le.right();&#xA;    le.right();&#xA;    le.left();&#xA;    le.left();&#xA;    System.out.printf(&quot;%s\n&quot;, le.toString());&#xA;    le.insertString(&quot;123&quot;);&#xA;    System.out.printf(&quot;%s\n&quot;, le.toString());&#xA;    le.deleteRight();&#xA;    System.out.printf(&quot;%s\n&quot;, le.toString());&#xA;    le.deleteRight();&#xA;    le.deleteRight();&#xA;    System.out.printf(&quot;%s\n&quot;, le.getInsertionIndex());&#xA;    System.out.printf(&quot;%s\n&quot;, le.toString());&#xA;    le.setInsertionIndex(1);&#xA;    le.deleteLeft();&#xA;    le.deleteLeft();&#xA;    System.out.printf(&quot;%s\n&quot;, le.toString());&#xA;  }&#xA;}&#xA;"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="2" charStart="36" charEnd="46" severity="2" problemCategory="40" problemType="16777539"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1579437354578" completion="1.0" testRunName="encapsulation.LineEditorTest" successCount="8">
          <successTests>testGetSetText</successTests>
          <successTests>testDeleteRight</successTests>
          <successTests>testLineEditor</successTests>
          <successTests>testRight</successTests>
          <successTests>testLeft</successTests>
          <successTests>testDeleteLeft</successTests>
          <successTests>testGetSetInsertionIndex</successTests>
          <successTests>testInsertString</successTests>
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
