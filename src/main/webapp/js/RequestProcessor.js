function makeRequest() {
    if (!validation()) return false;
    $.ajax({
        url: "./controller",
        type: "POST",
        data: `X=${getXNumberValue()}&Y=${getYNumberValue()}&R=${getRNumberValue()}&time-offset=${getTimeOffset()}`,
        success: function (response) {
            console.log(response);
            let data = JSON.parse(response);
            appendLine(data);
        }
    })
    return false;
}
function getYNumberValue() {
    return parseFloat(form.elements.Y.value);
}
function getXNumberValue() {
    return $('#x_value :checked').val();
}
function getRNumberValue() {
    return $('#r_value :checked').val();
}