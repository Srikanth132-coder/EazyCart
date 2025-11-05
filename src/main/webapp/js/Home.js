function incrementQuantity() {
    var quantityInput = document.getElementById('quantity');
    var currentValue = parseInt(quantityInput.value);
    quantityInput.value = currentValue + 1;
}

function decrementQuantity() {
    var quantityInput = document.getElementById('quantity');
    var currentValue = parseInt(quantityInput.value);
    if (currentValue > 1) {
        quantityInput.value = currentValue - 1;
    }
}

function addToCart() {
    var quantity = parseInt(document.getElementById('quantity').value);
    var cartItem = {
        name: "Eazy-Cart Refrigrirator", 
        price: 26900, 
        quantity: quantity
    };

    var cartItems = JSON.parse(localStorage.getItem('cart')) || [];

    var foundItem = cartItems.find(item => item.name === cartItem.name);
    if (foundItem) {
        foundItem.quantity += quantity; 
    } else {
        cartItems.push(cartItem); 
    }

    localStorage.setItem('cart', JSON.stringify(cartItems));

    var cartCountSpan = document.getElementById('cart-count');
    var currentCount = parseInt(cartCountSpan.innerText);
    cartCountSpan.innerText = currentCount + quantity;
}

document.addEventListener('DOMContentLoaded', function() {
    var reviewForm = document.querySelector('.review-form');
    var reviewsContainer = document.getElementById('reviews-container');
    
    reviewForm.addEventListener('submit', function(event) {
        event.preventDefault();
        
        var name = document.getElementById('name').value;
        var rating = document.getElementById('rating').value;
        var review = document.getElementById('review').value;
       
        var reviewDiv = document.createElement('div');
        reviewDiv.classList.add('review');
   
        reviewDiv.innerHTML = `
            <h3>${name} - ${rating}</h3>
            <p>${review}</p>
        `;
        
        reviewsContainer.appendChild(reviewDiv);
   
        document.getElementById('name').value = '';
        document.getElementById('rating').value = '5'; 
        document.getElementById('review').value = '';
    });
    
    updateCartCount();
});

function updateCartCount() {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    let cartCount = cart.reduce((total,item) => total + item.quantity, 0);
    document.getElementById('cart-count').innerText = cartCount;
}

