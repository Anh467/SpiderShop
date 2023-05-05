function confirmDelete(id) {
    if (confirm('Do you want to delete?')) {
        callServlet(id);
        location.reload();
    }
    else {
        return false;
    }
}
function callServlet(id) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', 'DeleteAniInCart?id=' + id, true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // do something after the servlet has finished processing
        }
    }
    ;
    xhr.send();
}

let idU = document.getElementsByClassName("idU");
let idA = document.getElementsByClassName("idA");

let moneyEle = document.getElementsByClassName("money");
let moneyR = document.getElementsByClassName("numberR");
let moneyR2 = document.getElementsByClassName("numberR2");
let moneyR3 = document.getElementsByClassName("numberR3");
let moneyR4 = document.getElementsByClassName("numberR4");
let number1 = document.getElementsByClassName("number");
let number2 = document.getElementsByClassName("number2");
let number3 = document.getElementsByClassName("number3");
let number4 = document.getElementsByClassName("number4");
function callServletSave() {
    var data = {
        n: [],
        n2: [],
        n3: [],
        n4: [],
        idUser: [],
        idAni: []
    };

    for (var i = 0; i < number1.length; i++) {
        data.n.push(number1[i].value);
        data.n2.push(number2[i].value);
        data.n3.push(number3[i].value);
        data.n4.push(number4[i].value);
        data.idUser.push(idU[i].innerText);
        data.idAni.push(idA[i].innerText);
    }

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "save", true);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.send(JSON.stringify(data));
}
function handleKeyPress(event, numberclass, ele) {
    if (event.keyCode === 13) {
        var numberEle = document.getElementsByClassName(numberclass);
        var number = numberEle[ele].value.replace(/^0+/, '');
        if (number === "") {
            number = 0;
        }
        res(number, ele, numberEle);
    }
}

let ress = () => {
    return number;
}
;
let res = (number, ele, numberEle) => {
    numberEle[ele].value = number;
    moneyEle[ele].innerText = parseInt(number1[ele].value) * parseFloat(moneyR[ele].innerText) + parseInt(number2[ele].value) * parseFloat(moneyR2[ele].innerText) + parseInt(number3[ele].value) * parseFloat(moneyR3[ele].innerText) + parseInt(number4[ele].value) * parseFloat(moneyR4[ele].innerText);
}
;
let plus = (ele, numberclass) => {
    var numberEle = document.getElementsByClassName(numberclass);

    var number = numberEle[ele].value;
    number++;
    res(number, ele, numberEle);
}
;
let minus = (ele, numberclass) => {
    var numberEle = document.getElementsByClassName(numberclass);
    var number = numberEle[ele].value;
    if (number > 0) {
        number--;
        res(number, ele, numberEle);
    }
}
;

const inputs = document.querySelectorAll('input[type="text"]');

inputs.forEach(input => {
    input.addEventListener('keypress', event => {
        if ((event.keyCode < 48 || event.keyCode > 57) && event.keyCode !== 13) {
            event.preventDefault();
            input.value = 0;
        }
    }
    );
}
);


