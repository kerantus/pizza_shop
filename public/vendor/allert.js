function add_to_cart(id) {
    var x = window.localStorage.getItem('product_' + id);
    x = x * 1 + 1;
    window.localStorage.setItem('product_' + id, x);
    location.reload();
}

function remove_from_cart(id) {
    var x = window.localStorage.getItem('product_' + id);
    if (x>0) {x = x * 1 - 1;}
    window.localStorage.setItem('product_' + id, x);
    location.reload();
}

function amount_cart(id) {
    var x = window.localStorage.getItem('product_' + id);
    var list = document;
    list.innerHTML="<p>"+ x +"</p>";
}