function loadCartItems() {
    var cartList = document.getElementById('cart-list');
    cartList.innerHTML = ''; 
    var cartItems = JSON.parse(localStorage.getItem('carts')) || [];
    cartItems.forEach(function(item) {
        var row = document.createElement('tr');
        row.innerHTML = `
            <td><img src="${item.image}" alt="${item.name}" class="cart-item-image"></td>
            <td>${item.name}</td>
            <td>Rs. ${item.price}/-</td>
            <td>${item.quantity}</td>
            <td>Rs. ${item.price * item.quantity}/-</td>
            <td><button onclick="removeItem('${item.name}')">Remove</button></td>
        `;
        cartList.appendChild(row);
    });
    updateTotalPrice(cartItems);
    updateCartCount();
}

function updateTotalPrice(cartItems) {
    var totalPrice = cartItems.reduce(function(total, item) {
        return total + (item.price * item.quantity);
    }, 0);
    document.getElementById('total-price').innerText = `Rs. ${totalPrice}/-`;
}

function removeItem(name) {
    var cartItems = JSON.parse(localStorage.getItem('carts')) || [];
    var updatedCartItems = cartItems.filter(function(item) {
        return item.name !== name;
    });
    localStorage.setItem('carts', JSON.stringify(updatedCartItems));
    loadCartItems();
}

function checkout() {
    alert('Checkout functionality is not implemented yet!');
}

document.addEventListener('DOMContentLoaded', function() {
    loadCartItems();
});

function updateCartCount() {
    let cart = JSON.parse(localStorage.getItem('carts')) || [];
    let cartCount = cart.reduce((total,item) => total + item.quantity, 0);
    document.getElementById('cart-count').innerText = cartCount;
}