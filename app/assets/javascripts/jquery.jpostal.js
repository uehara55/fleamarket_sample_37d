$(function () {
    $('#address_postal_code').jpostal({
        postcode : [
            '#address_postal_code'
        ],
        address : {
            '#address_prefecture_code' : '%3',
            '#address_city' : '%4%5'
        }
    });
});
