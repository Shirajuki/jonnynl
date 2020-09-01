const input = document.getElementById('input');
const list = document.getElementById('list');
const output = document.getElementById('output');
const tasks = [];
document.getElementById("btn").addEventListener('click', function(event) {
    event.preventDefault();
    if (input.value !== "") {
        addTask();
        updateTask();
        // input.value = "";
    }
},false);

function addTask() {
    const date = Date.now();
    const text = input.value;
    tasks.push({text: text, timestamp: date});
    const li = document.createElement('li');
    li.innerHTML = `<label><input type="checkbox"/><span>${text}</span></label>`;
    li.firstElementChild.firstElementChild.onclick = updateTask;
    // console.table(tasks);
    list.prepend(li);
}

function updateTask() {
    const count = document.querySelectorAll('input[type="checkbox"]:checked');
    output.innerText = `${count.length}/${list.childElementCount} completed.`
}
