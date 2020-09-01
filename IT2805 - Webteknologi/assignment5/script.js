/* Part 2 */
console.log('PART 2')
// Using a for-loop to loop through variable i from 1 to 20, then logging it in the console.
for (let i = 1; i <= 20; i++) {
  console.log(i);
}
/* Part 3 */
console.log('PART 3')
// The constant numbers declared
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];

for (let i = 0; i < numbers.length; i++) {
  console.log((numbers[i]%3 != 0 && numbers[i]%5 != 0) ? (numbers[i]) : ((numbers[i]%3 == 0 && numbers[i]%5 == 0) ? ('eplekake') : ((numbers[i]%3 == 0) ? ('eple') : ('kake')));)
}
/* Part 4 */
// Setting the text of the HTML-element with id 'title' to 'Hello, JavaScript'
document.getElementById('title').innerText = 'Hello, JavaScript';
/* Part 5 */
// Declares the constant magic equals to the HTML-element with id 'magic'
const magic = document.getElementById('magic');
// Declares the function changeDisplay() which changes the style display of magic to 'none' (hides the element)
function changeDisplay() {
  magic.style.display = 'none';
}
// Declares the function changeVisibility() which changes the style display of magic to 'block' and visibility to 'hidden' (hides the element)
function changeVisibility() {
  magic.style.visibility = 'hidden';
  magic.style.display = 'block';
}
// Declares the function reset() which resets the style display of magic to it's default value. 'display: block; visibility: visible;'
function reset() {
  magic.style.display = 'block';
  magic.style.visibility = 'visible';
}

/* Part 6 */
// Declares the constant technologies
const technologies = [
    'HTML5',
    'CSS3',
    'JavaScript',
    'Python',
    'Java',
    'AJAX',
    'JSON',
    'React',
    'Angular',
    'Bootstrap',
    'Node.js'
];
// Declares the constant list as the HTML-element with id 'tech'
const list = document.getElementById('tech');
// Loops through tecnhologies using a forof loop: creates a new element as constant newElement, sets it's innerText/text to the string of n-iteration of technologies
// finally we append the constant newElement as the child element of list declared over on line 59.
for (const l of technologies) {
  const newElement = document.createElement('li');
  newElement.innerText = l;
  list.appendChild(newElement);
}
