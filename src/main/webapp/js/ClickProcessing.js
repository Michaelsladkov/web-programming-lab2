const centerX = 291;
const centerY = 235;
const rX = 400;
const rY = 343;
function processClick (eventObj) {
    let r = getRNumberValue();
    if (!checkR()) return;
    let rawX = eventObj.pageX - centerX;
    let rawY = centerY - eventObj.pageY;
    let xNormalized = rawX / (rX - centerX);
    let yNormalized = rawY / (rY - centerY);
    let x = xNormalized * r;
    let y = yNormalized * r;
    x = x.toFixed(2);
    y = y.toFixed(2);
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