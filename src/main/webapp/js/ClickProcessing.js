const centerX = 148;
const centerY = 143;
const rX = 108;
const rY = 110;
function processClick (eventObj) {
    let r = getRNumberValue();
    if (!checkR()) return;
    let rawX = eventObj.pageX - $("#graph").offset().left - centerX;
    let rawY = centerY + $("#graph").offset().top - eventObj.pageY;
    let xNormalized = rawX / (rX);
    let yNormalized = rawY / (rY);
    let x = xNormalized * r;
    let y = yNormalized * r;
    x = x.toFixed(2);
    y = y.toFixed(2);
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