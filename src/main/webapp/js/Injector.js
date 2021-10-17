window.onload = function () {
    let form = document.forms.MainForm;
    let xBoxes = form.elements.X;
    let rBoxes = form.elements.R;
    setXBoxes(xBoxes);
    setRBoxes(rBoxes);
    for (let rBox of rBoxes) {
        rBox.onclick = switchRAction;
    }
    for (let xBox of xBoxes) {
        xBox.onclick = switchXAction;
    }
    let errorDisplay = document.getElementById("errorDisplay");
    setDisplay(errorDisplay);
    setFormAndBoxesForValidator(form, xBoxes, rBoxes);
    form.elements.Y.onclick = clearErrors;
    $("#graph").on("click", processClick);
    restoreForm();
}

function restoreForm() {
    if ($("#0x").text()){
        $("#y-field").attr("value", $("#0y").text());
        let r_id = 'r' + $("#0r").text();
        document.getElementById(r_id).checked = true;
        let x_id = $("#0x").text() + 'X';
        if (document.getElementById(x_id)) {
            document.getElementById(x_id).checked = true;
        }
    }
}
