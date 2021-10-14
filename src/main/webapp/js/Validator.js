let form;
function setFormAndBoxesForValidator(newForm, xBoxesArray, rBoxesArray) {
    form = newForm;
    xBoxes = xBoxesArray;
    rBoxes = rBoxesArray;
    form.onsubmit = validation;
    form.elements.Y.oninput = checkX;
}

function validation() {
    return checkX() && checkY() && checkR();
}

function checkY() {
    clearErrors();
    let yValue = form.elements.Y.value;
    let yNumberValue = parseFloat(yValue);
    if (yValue === "" ||
        ((!yValue.match(/^-?[0-9]*$/)) && (!yValue.match(/^-?[0-9]*[\.,][0-9]+$/)))) {
        showMessage("Введите число Y");
        return false;
    }
    if (yNumberValue <= (-5) || yNumberValue >= 5) {
        showMessage("Число Y должно принадлежать отрезку (-5 ... 5)");
        return false;
    }
    return true;
}

function checkX() {
    let xSelected = false;
    if ($("#hidden-x").attr("value")) {
        return true;
    }
    for (let xBox of xBoxes) {
        if (xBox.checked) {
            xSelected = true;
        }
    }
    if (!xSelected) {
        showMessage("Установите параметр X");
        return false;
    }
    return true
}

function checkR() {
    let rSelected = false;
    for (let rBox of rBoxes) {
        if (rBox.checked) {
            rSelected = true;
        }
    }
    if (!rSelected) {
        showMessage("Установите параметр R");
        return false;
    }
    return true;
}