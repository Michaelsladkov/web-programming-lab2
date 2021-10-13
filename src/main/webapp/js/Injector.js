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
        xBox.onclick = switchYAction;
    }
    let errorDisplay = document.getElementById("errorDisplay");
    setDisplay(errorDisplay);
    setFormAndBoxesForValidator(form, xBoxes, rBoxes);
    form.elements.Y.onclick = clearErrors;
}
