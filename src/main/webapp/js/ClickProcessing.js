const centerX = 291;
const centerY = 235;
const rX = 400;
const rY = 343;
function processClick (eventObj) {
    let r = getRNumberValue();
    if (!checkR()) return;
    let rawX = eventObj.clientX - centerX;
    let rawY = centerY - eventObj.clientY;
    let xNormalized = rawX / (rX - centerX);
    let yNormalized = rawY / (rY - centerY);
    let x = xNormalized * r;
    let y = yNormalized * r;
    console.log(x + "   " + y);
    sendForm(x, y);
}

function sendForm(x, y) {
    $("#hidden-x").attr("value", x);
    $("#y-field").attr("value", y);
    $("#submit-button").trigger("click");
}

function getRNumberValue() {
    return $('#r_value :checked').val();
}