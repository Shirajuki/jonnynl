# Section A: Multiple Choice Questions (30%)
## 1. The elements <div> and <span> have the following characteristics (2%)
A. Element <div> inherits properties defined for <span> in a stylesheet
B. <div> and <span> have no real meanings as html tags unless stylesheet is applied
### C. Elements <span> and <div> define content to be inline or block-level
D. <div> and <span> are used as alternatives for the element <p>
E. <div> is used inside element <p>.

## 2. In regards to the CSS box model, where is the margin property located? (2%)
A. Inside the box
### B. Outside the box
C. inside or outside depending on where you put it in your code
D. None of the above

## 3. Which built-in HTML5 object is used to draw on the canvas? (2%)
### A. getContext
B. getContent
C. getGraphics
D. getCanvas

## 4. While working on a JavaScript project, which function would you use to send messages to users requesting for text input? (2%)
A. Display()
### B. Prompt()
C. Alert()
D. GetInput()
E. Confirm()

## 5. In HTML tables, the number of columns is determined by (2%)
### A. how many <td> elements are inserted within each row
B. the width attribute of the <tr> element
C. the <col> element
D. none of the above

## 6. If you'd like visited links to be green, unvisited links to be blue, and links that the mouse is over to be red, which CSS rules will you use? (2%)
A.
a:visited { color: green }
a:unvisited { color: blue }
a:mouseover { color: red }
### B.
a:link { color: blue }
a:visited { color: green }
a:hover { color: red }
C.
a:hover { color: red }
a:visited { color: green }
a:link { color: blue }
D.
a:active { color: green }
a:link { color: blue }
a:hover { color: red }

## 7. Which HTML attribute specifies an alternate text for an image, if the image cannot be displayed? (2%)
A. src
B. title
### C. alt
D. longdesc

8. State an image file format best suited to presenting photographic images on the Web (2%)
### - .JPEG

9. State an image file format best suited to presenting non-photographic images on the Web (2%).
### - .PNG

10. Indicate whether each of the following statements is True or False (2% each -12%)
### A. This a "well formed" XML document:
<?xml version="1.0" encoding="UTF-8"?>
<book1><isbn>1234567890</isbn><name>XML Master Basic >2006&lt;</name></book1>
B. In a hierarchical structure, each page is linked with the pages that follow and precede it in an ordered chain
### C. In HTML5 <video> element you don’t need to supply values for all attributes, eg. control, loop; these attributes are on when they are there and off in case they don’t.
### D. Pseudo-class selects an element based on a state the element is in
### E. POST requests are never cached
F. GET requests cannot be bookmarked

# Section B: Longer Answer Questions (30%)
## 1. Briefly state TWO advantages of vector images over bitmapped images for displaying images on the Web (2%)
- Responsive/the quality is the same on multiple devices. Scalable.
- Editable

## 2. Name each of the 4 required elements of a CSS rule and very briefly state the purpose of each part (8%)
- Selector, identifies the HTML tag to be styled
- Declaration, encapsulates Properties/values pairs
  - Property, identifies the style attribute to be styled
  - Value, specifies the value to set the Property

## 3. What does the following HTML code? (5%) <area shape="rect" coords="384,66,499,271" href="water.html">
- Specifies a rectangular area inside an image as a hotspot (used with the tag map), when clicked, it links to water.html. The area’s top left corner is (384,66) and the bottom right corner is (499, 271).

## 4. Develop a web-form to collect the following information (4%): name of the student • his/her email address
```html
<label for="name">Name</label>
<input type="text" name="name" id="name"/>
<label for="email">E-mail</label>
<input type="email" name="email" id="email"/>
```

## 5. What is the result of the following code? (3%)
```html
<script type="text/JavaScript">
var x = 7;
var y = 5;
var z = 14;
x = y; //5
z = z % x; // 14%5 = 4
alert(y + z); // 5+4 = 9
</script>
```
- 9

## 6. What is the result of the following code?(3%)
```html
<script type="text/JavaScript">
var a = 1;
a = a + 1; // a = 2
var b = "a is " + a; // "a is 2"
a= 5;
alert(b);
</script>
```
- "a is 2"

## 7. What is specificity in CSS, no need to write more that 4-5 sentences (5%).
- Specificity is the means by which browsers decide which CSS property values are the most relevant to an element and, therefore, will be applied. Specificity is based on the matching rules which are composed of different sorts of CSS selectors. Specificity only applies when the same element is targeted by multiple declarations. As per CSS rules, directly targeted elements will always take precedence over rules which an element inherits from its ancestor.

# Section C: Coding Related Questions (40%)
## 1. Develop a web-form to collect the following information (4%): name of the student his/her email address
```html
<label for="name">Name</label>
<input type="text" name="name" id="name">
<label for="email">E-mail</label>
<input type="email" name="email" id="email">
```

## 2. Consider the following HTML file:
```html
<html>
<head>
<style>
  p > b:first-child { color: green; }
  h2 + p { color: green; }
</style>
</head>
<body>
  <h1> Heading 1</h1>
  <h2> Heading 2.a</h2>
  <p> First paragraph. </p>
  <p> Second paragraph<b>first bold</b>and a <span>span with a<b>second bold</b></span>. </p>
  <h2> Heading 2.b</h2>
  <p> Third paragraph has a <b>third bold</b> also. </p>
</body>
</html>
```
### A. Build (draw) the Document/HTML tree of the code above(1%)
- html
  - head
    - style
  - body
    - h1
    - h2
    - p
    - p
      - b
      - span
        - b
    - h2
    - p
      - b

### B. Write the CSS rules needed to produce the outcome shown below. The words “first bold” and “third bold” shall be green (may not be visible on your question sheet in case of b/w print)(2%)
###C. Write the CSS rules needed to produce the outcome shown below. The lines “First paragraph” and “Third paragraph has a third bold too” shall be green (may not be visible on your question sheet in case of b/w print)(2%)

## 3. Consider the following HTML:
```html
<p> Lorem ipsum dolor…</p>
```
Write the CSS rules needed to (4%):
1. Change the font for the sentence to fantasy
2. Change its size to 24px.
3. Make the textbold
4. Make the textitalics
```css
p {
  font-family: fantasy;
  font-size: 24px;
  font-weight: bold;
  font-style: italic;
}
```

## 4. Consider the following JavaScript code:
```javascript
var days = [Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday];
var today = new Date.getDay();
for (var i=1;i<7;i++) {
  if (i = today) {
    document.write("Today is "days[today]"<br>");
  }
  else {
    document.write("Today is not "days[today]"<br>");
  }
}
```
### A. Identify FIVE TYPES of errors in the code (don’t write more than a sentence per error). Note that each type of error may occur at more than one point in the code. This counts as a single error. Write the correct code. (5%)
- Forgot "quotes" in array
- Wrong starting index on loop counter
- assigning variables instead of a boolean condition in if-condition
- string concatenation error on document.write
- use loop counter instead of today in else output
```javascript
let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
let today = new Date.getDay();
for (let i = 0; i < 7; i++) {
  if (i == today) {
    document.write("Today is "+days[i]+"<br>");
  } else {
    document.write("Today is not "+days[i]+"<br>");
  }
}
```
### B. Explain the effect that each error would cause when the script is run. (5%)
- Forgot "quotes" in array - Error, seen as variable undefined instead of string
- Wrong starting index on loop counter - Will skip the first day of the array days (sunday)
- assigning variables instead of a boolean condition in if-condition - Error, variable assignment of loop counter. Infinite loop-
- string concatenation error on document.write - Error, wrong syntaxing
- use loop counter instead of today in else output - Write only the day of today instead of all the weekdays.

### C. Show what the corrected code would output. (2%)
- If today is Monday:
Today is not Sunday
Today is Monday
Today is not Tuesday
Today is not Wednesday
Today is not Thursday
Today is not Friday
Today is not Saturday

## 5. Write a JavaScript function to add rows to a table. (5%).
```html
<!DOCTYPE html>
<html>
  <head>
    <title>Insert row in a table - w3resource</title>
  </head>
  <body>
    <table id="sampleTable" border="1">
      <tr>
        <td>Row1 cell1</td>
        <td>Row1 cell2</td>
      </tr>
      <tr>
        <td>Row2 cell1</td>
        <td>Row2 cell2</td>
      </tr>
    </table><br>
    <input type="button" onclick="insert_Row()" value="Insert row">
    <script>
      function insert_Row() {
        const table = document.getElementById('sampleTable');
        const tableLength = (document.querySelectorAll('tr').length) + 1;
        const row = document.createElement('tr');
        for (let i = 1; i<=2; i++) {
          const cell = document.createElement('td');
          cell.innerHTML = `Row${tableLength} cell${i}`;
          row.appendChild(cell);
        }
        table.appendChild(row);
      }
    </script>
  </body>
</html>
```
## 6. Write JavaScript code to draw the figure of the following image in the center of a 300X200 <canvas> element (as shown in the figure below) (7%) and frame it with 6 pixels width portrait (3%) (total 10%): (Hints: Don’t forget to access the canvas element from your script and use the 2D drawing API. We expect you to approximately draw the figure of the following figure in the center of the canvas, e.g., not fully centered to the canvas, color of the lines etc. are not problems. Small syntactical mistakes don’t matter, the important thing is to get the logic.)
```html
<!DOCTYPE html>
<html>
  <body>
    <img id="scream" width="150" height="200" src="pic_the_scream.jpg" alt="The Scream">
    <canvas id="myCanvas" width="300" height="200" style="border:1px solid #d3d3d3;"> Your browser does not support canvas.</canvas>
    <script>
      const canvas = document.getElementById('myCanvas');
      const ctx = document.getContext("2d");
      const image = document.getElementById("scream");
      ctx.beginPath();
      ctx.strokeStyle = "blue";
      ctx.lineWidth = 6;
      ctx.strokeRect(97,38,85,120);
      ctx.drawImage(image, 80, 120, 80, 100, 100, 40, 80, 120);
      // WHAT?
    </script>
</body>
</html>
```
