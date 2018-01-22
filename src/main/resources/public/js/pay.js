$(document).ready(function () {

    function addListeners() {

        if (window.location.pathname === '/customer-paypal') {
            cardDataFormatting();
        }
    }

    function cardDataFormatting() {
        var selectedCardIcon = null;
        new Cleave('#cardNumber', {
            creditCard: true,
            onCreditCardTypeChanged: function (type) {
                if (selectedCardIcon) {
                    selectedCardIcon.removeClass('active');
                }

                selectedCardIcon = $('#icon-' + type);

                if (selectedCardIcon) {
                    selectedCardIcon.addClass('active');
                }
            }
        });
        new Cleave('#cardExpiry', {
            date: true,
            datePattern: ['m', 'y']
        });
    }
    
    addListeners()

});
