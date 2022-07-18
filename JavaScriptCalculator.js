function Validate() {
    let firstNumber = document.getElementById("firstNumber").value;
    let secondNumber = document.getElementById("secondNumber").value;
    let operation = document.getElementById("operation").value

    try {
        if (isNaN(firstNumber)) throw "X is not a number";
        if (isNaN(secondNumber)) throw "Y is not a number";
        if (firstNumber == "") throw " Must Enter the value of X";
        if (secondNumber == "") throw " Must Enter the value of Y";
        if (operation == "") throw " Must Select any given operation";
    }
    catch (err) {
        alert(err);

    }
}