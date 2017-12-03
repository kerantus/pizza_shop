function add_to_cart(id) {
    var x = window.localStorage.getItem('product_' + id);
    x = x * 1 + 1;
    window.localStorage.setItem('product_' + id, x);
    update_amount_cart_input();
    update_amount_button();
}

function remove_from_cart(id) {
    var x = window.localStorage.getItem('product_' + id);
    if (x > 0) {
        x = x * 1 - 1;
    }
    window.localStorage.setItem('product_' + id, x);
    update_amount_cart_input();
    update_amount_button();
}

function amount_cart() {

    var summ = 0;
    for (var i = 0; i < localStorage.length; i++) {
        var key = window.localStorage.key(i);
        var value = window.localStorage.getItem(key);
        if (key.indexOf('product_') == 0) {
            summ = summ + value * 1;
        }
    }
    return summ;
}

function get_amount_cart() {

    var orders = '';
    for (var i = 0; i < localStorage.length; i++) {
        var key = window.localStorage.key(i);
        var value = window.localStorage.getItem(key);
        if (key.indexOf('product_') == 0) {
            orders = orders + key + "=" + value + ",";
        }
    }
    return orders;
}

function update_amount_cart_input() {
    var orders = get_amount_cart();
    $('#orders_input').val(orders);
}

function update_amount_button() {
    var text = "В корзине товаров:" + amount_cart();
    $('#orders_button').val(text);
}