# Section A: Multiple Choice Questions (30%)
======

## 1. In CSS, you can override precedence rules by adding the ____ property to a style declaration. (2%)
A. !override
B. !main
### C. !important
D. !priority

## 2. What is the default value of the position property? (2%)
A. relative
B. absolute
C. fixed
### D. static

## 3. What is one advantage that HTML5 APIs offer for modern Web design? (2%)
A. They enable users to view Flash content on mobile devices.
B. They enable developers to create apps without coding skills
C. They enable older browsers to display any multimedia content
### D. They enable users to view multimedia without plug-ins

## 4. What is the result of the following code? (2%)
`var y = Math.floor(3.8);`
A. 3.8
B. 4
C. 3.5
### D. 3

## 5. Graphics defined by SVG is in which format? (2%)
### A. XML
B. HTML
C. CSS
D. Javascript

## 6. What the following code will do if someone types in “18”? (2%)
```javascript
var age = prompt("Enter your age ");
var next = age + 1;
alert("On your next birthday, you'll be "+next);
```
A. It gets an error
B. It displays "18"
C. It displays "19"
### D. It displays "181"

## 7. How do you select all p elements inside a div element? (2%)
A. div.p
### B. div p
C. div + p
D. div * p

## 8. How do you display a border like this: (2%)
```
The top border = 10 pixels
The bottom border = 5 pixels
The left border = 20 pixels
The right border = 1 pixel
```
### A. border-width:10px 1px 5px 20px;
B. border-width:5px 20px 10px 1px;
C. border-width:10px 5px 20px 1px;
D. border-width:10px 20px 5px 1px;

## 9. From outside to inside, a box (block) has: (2%)
A. border, margins, padding
B. margins, padding, border
C. padding, margins, border
### D. margins, border, padding

## 10. Which statement is true? (2%)
### A. An XML document can have one root element
B. An XML document can have one child element
C. XML elements have to be in lower case
D. All of the above

## 11. What is one advantage that HTML5 APIs offer for modern Web design? (2%)
A. They enable users to view Flash content on mobile devices.
B. They enable developers to create apps without coding skills
C. They enable older browsers to display any multimedia content
### D. They enable users to view multimedia without plug-ins

## 11. Which of the following statements is true? (2%)
A. JPG files are limited to 256 colors.
B. GIF files support 8 bit transparency.
C. Use GIF files for photographs.
### D. GIF uses lossless compression algorithm.

## 12. Match each of the TCP/IP layers with the correct protocol. (8% -2% each)
```
A. Application Layer -  1) IP
B. Transport Layer   -  2) WiFi
C. Network Layer     -  3) TCP
D. Physical Layer    - 4) HTTP

[A4, B3, C1, D2]
-   Application Layer -  HTTP
-   Transport Layer   -  TCP
-   Network Layer     -  IP
-   Physical Layer    -  WiFi
```
# Section B: Longer Answer Questions (30%)
======
## 1. You’re creating a web site with the following folder and file structure: Give the relative URL for each of the following connections (1.5% each - 6%):
```
- Joss
  - comics.html
  - Buffy
    - plot.html
    - mythology.html
    - cast
      - buffy.html
      - willow.html
      - angel.html
  - Angel
    - season3.html
    - cast
      - angel.html
      - gunn.html
      - host.html

```
A. From plot.html to mythology.html (1.5%)
`mythology.html`
B. From plot.html to buffy.html (1.5%)
`cast/buffy.html`
C. From buffy.html to plot.html (1.5%)
`../plot.html`
D. From buffy.html to gunn.html (1.5%)
`../../Angel/cast/gunn.html`

## 2. The following web page is loaded into a web server:
```html
<html>
 <head><title>JavaScript question</title></head>
 <body>
  <script type="text/javascript">
    book = new Array(1,2,3,4,5,6,7,8);
    document.write(book[1]); // 2
    book[10]=10;
    document.write(book[10]); // 10
  </script>
 </body>
</html>
```
- Once the above web page is loaded what will be the outcome? (4%)
### `210`

## 3. After you have traced through the code, write the value of each variable below:
Write the value of each variable here: (2% each - 8%)
A. myDogsAge = 28
B. rectArea = 12
C. theTotal = 18
D. myAvatar = "Cat"

## 4. Describe the situations of using External Style Sheets, Embedded (Internal) Style Sheets and Inline Styles. Use both CSS and HTML code to explain how to use each type of the styles. (6%)

> An external style sheet is ideal when the style is applied to many pages. With an external style sheet, you can change the look of an entire Web site by changing just one file.
```html
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css" />
</head>
```

> An Embedded (Internal) style sheet should be used when a single document has a unique style. You define internal styles in the head section of an HTML page, inside the <style> tag.
```html
<style>
body {
font-family: Helvetica, Arial, sans-serif;
color: #665544;
padding: 22px;}
</style>
```

> Inline style is used to provide styling to a given element in a web page. An inline style loses many of the advantages of a style sheet (by mixing content with presentation).
```html
<body>
<h1 style="color:blue;margin-left:30px;">This is a heading.</h1>
</body>
```

## 5. Explain the differences between POST and GET when sending HTML form data. (6%)
> GET
- Send data to the server by appending it to the end of the URL
- Sensitive data will be displayed as part of the URL
- URL has size restrictions – not suitable for large amount of data
- Query can be cached for future use

> POST
- Send data as separate packets
- The data is hidden from user but still in plain text, but possible to work with https.
- Suitable for sending file and large amount of data for storage on the server-side
- Not possible for caching and bookmarking

# Section C: Coding Related Questions (40%)
======

## 1. Write the HTML code that produces the following table. The image is called mainbuilding.jpg and is stored in a folder called images. The images folder is inside the same folder of this HTML file. (5%)
```html
<table>
  <tr>
    <th>Building</th>
    <th>Constructed</th>
    <th>Picture</th>
  </tr>
  <tr>
    <td>Hovedbygget</td>
    <td>1910</td>
    <td><img src="images/mainbuilding.jpg" alt="bilde av hovedbygget"/></td>
  </tr>
  <tr>
    <td>Realfagbygget</td>
    <td>2000</td>
    <td>N/A</td>
  </tr>
</table>
```

## 2. Consider the following HTML file:
```html
<!DOCTYPE html>
<html>
  <head>
    <style>
      h1 {
        position: relative;
        /* A */
        left: -20px;
        top: 30px;
        /* B */
        left: 50px;
        top: 100px;
      }
      li {
        display: inline;
      }
      p.highlight:hover {
        color: lightblue;
      }
      body > p:first-child {
        color: red;
      }
    </style>
  </head>
  <body>
    <h1>This is a Heading </h1>
    <p>This is a paragraph. </p>
    <p>This is another paragraph. </p>
    <p class="highlight">This is a third paragraph. </p>
    <ul>
      <li>Apple</li>
      <li>Orange</li>
      <li>Pear</li>
  </ul>
</body>
</html>
```
### Write the CSS needed to (10% - 2% each):
A. Position the <h1> element 20px left, and 30px down, relative to its normal position.
B. Position the <h1> element 50px from the left, and 100px from the top, relative to the HTML page.
C. Display the list items as inline elements.
D. Change the background color of the p element with the class "highlight" to "lightblue", when a user hovers over that p element.
E. Set text color to red, for the first line of the <p> elements.

## 3. Write a JavaScript function that calculates the number of days left till the Christmas Date (7%).
```javascript
function daysUntilChristmas() {
  const today = new Date();
  const christmas = new Date(2019-12-24);
  return Math.floor((christmas-today)/(1000*3600*24)) // sec - hour - day
}
```

## 4. Write a JavaScript program to calculate multiplication and division of two numbers (input from user). (8%)
The form will look like this: [image here]
The HTML is given:
```html
<form>
  1st Number : <input type="text" id="firstNumber" /><br>
  2nd Number: <input type="text" id="secondNumber" /><br>
  <input type="button" onClick="multiplyBy()" Value="Multiply" />
  <input type="button" onClick="divideBy()" Value="Divide" />
</form>
<p>
  The Result is : <br>
  <span id="result"></span>
</p>
```
```javascript
const firstNumber = document.getElementById('firstNumber');
const secondNumber = document.getElementById('secondNumber');
const result = document.getElementById('result');
function multiplyBy() {
  const multiply = parseInt(firstNumber.value) * parseInt(secondNumber.value);
  result.value = multiply;
}
function divideBy() {
  const divide = parseInt(firstNumber.value) / parseInt(secondNumber.value);
  result.value = divide;
}
```

## 5. Write JavaScript code to draw the following figure inside a <canvas> element. (10%)
• Don’t forget to access the canvas element from your script and use the 2D drawing API.
• We expect you to approximately draw the following figure, eg. line width, not fully centered to the canvas, color of the lines etc. are not problems.
```html
<!DOCTYPE html>
<html>
  <body>
  <canvas id="myCanvas" width="200" height="200" style="border:1px solid #d3d3d3;"> Your browser does not support the HTML5 canvas tag.</canvas>
  <script>
    const canvas = document.getElementById('myCanvas');
    const ctx = canvas.getContext('2d');
    ctx.beginPath();
    ctx.lineWidth = 10;
    ctx.strokeStyle = 'black';
    ctx.fillStyle = 'cyan';
    ctx.moveTo(100,50);
    ctx.lineTo(100,150);
    ctx.stroke();

    ctx.beginPath();
    ctx.lineWidth = 4;
    ctx.moveTo(20,150);
    ctx.lineTo(180,150);
    ctx.lineTo(150,180);
    ctx.lineTo(70,180);
    ctx.lineTo(20,150);
    ctx.stroke();
    ctx.fill();

    ctx.beginPath();
    ctx.fillStyle = "yellow";
    ctx.moveTo(92,50);
    ctx.lineTo(50,145);
    ctx.lineTo(90,120);
    ctx.lineTo(92,50);
    ctx.fill();

    ctx.beginPath();
    ctx.moveTo(108,50);
    ctx.lineTo(150,140);
    ctx.lineTo(110,140);
    ctx.lineTo(108,50);
    ctx.fill();
  </script>
</body>
</html>
```
