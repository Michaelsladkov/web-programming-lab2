let xBoxes;
let rBoxes;

function switchRAction(eventObj) {
    clearErrors();
}

function switchXAction(eventObj) {
    $("#hidden-x").attr("value", getXNumberValue())
    clearErrors();
    validation();
}

function setRBoxes(arrayOfBoxes) {
    rBoxes = arrayOfBoxes;
}

function setXBoxes(arrayOfBoxes) {
    xBoxes = arrayOfBoxes;
}

function getXNumberValue() {
    return $('#x_value :checked').val();
}