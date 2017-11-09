
var app = app || {};

app.logic = {

    toggleOpen: function() {
    var panels = document.querySelectorAll('.panel');
    $(panels).each(app.logic.setClassToOrigin);
    this.classList.toggle('open');
    },

    toggleActive: function (e) {
    if (e.propertyName.includes('flex')) {
        this.classList.toggle('open-active');
    }
    },

    setClassToOrigin: function (){
    var currentClassList = this.classList;
    if(this.className.includes('open')){
        currentClassList.toggle('open');
    }
    },


    testFunction: function () {
        // Function implementation
    }

};