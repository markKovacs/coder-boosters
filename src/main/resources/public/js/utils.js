
var app = app || {};

app.utils = {

    toastMessage: function (message) {
        $('#toast').text(message);
        $('#toast').addClass('show');
        setTimeout(function(){ $('#toast').removeClass('show'); }, 3000);
    }

};



