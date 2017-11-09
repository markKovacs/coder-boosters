
var app = app || {};

app.init = function() {
    const panels = document.querySelectorAll('.panel');
    panels.forEach(panel => panel.addEventListener('click', app.logic.toggleOpen));
    panels.forEach(panel => panel.addEventListener('transitionend', app.logic.toggleActive));

    app.logic.testFunction();

};

$(document).ready(app.init());
