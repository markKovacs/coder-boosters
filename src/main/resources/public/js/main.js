
var app = app || {};

app.init = function() {
    const panels = document.querySelectorAll('.panel');
    panels.forEach(panel => panel.addEventListener('click', app.logic.toggleOpen));
    app.logic.testFunction();

};

$(document).ready(app.init());
