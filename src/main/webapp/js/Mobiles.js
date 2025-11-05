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
    var productName = 'Apple iPhone';
    var productPrice = 70000; 
    var productImage = 'mobile.jpg'; 

    var quantity = parseInt(document.getElementById('quantity').value);

    var item = {
        name: productName,
        price: productPrice,
        image: productImage,
        quantity: quantity
    };

    var cartItems = JSON.parse(localStorage.getItem('carts')) || [];
    var existingItem = cartItems.find(function(cartItem) {
        return cartItem.name === item.name;
    });

    if (existingItem) {
        existingItem.quantity += quantity;
    } else {
        cartItems.push(item);
    }

    localStorage.setItem('carts', JSON.stringify(cartItems));
    updateCartCount();
}

document.addEventListener('DOMContentLoaded', function() {
    var reviewForm = document.querySelector('.review-form');
    var reviewsContainer = document.querySelector('.reviews');
    var reviews = JSON.parse(localStorage.getItem('reviews')) || [];

    function initializeReviews() {
        reviews.forEach(function(reviewData) {
            var reviewDiv = createReviewElement(reviewData);
            reviewsContainer.appendChild(reviewDiv);
        });
    }

    initializeReviews();

    reviewForm.addEventListener('submit', function(event) {
        event.preventDefault();

        var name = document.getElementById('name').value;
        var rating = document.getElementById('rating').value;
        var reviewText = document.getElementById('review').value;

        var newReview = {
            name: name,
            rating: rating,
            review: reviewText
        };

        reviews.push(newReview);

        localStorage.setItem('reviews', JSON.stringify(reviews));
        var reviewDiv = createReviewElement(newReview);
        reviewsContainer.appendChild(reviewDiv);
        document.getElementById('name').value = '';
        document.getElementById('rating').value = '5';
        document.getElementById('review').value = '';
    });

    function createReviewElement(reviewData) {
        var reviewDiv = document.createElement('div');
        reviewDiv.classList.add('review');

        var header = document.createElement('h3');
        header.textContent = `${reviewData.name} - ${generateStars(reviewData.rating)}`;
        reviewDiv.appendChild(header);

        var reviewText = document.createElement('p');
        reviewText.textContent = reviewData.review;
        reviewDiv.appendChild(reviewText);

        return reviewDiv;
    }

    function generateStars(rating) {
        var stars = '';
        for (var i = 0; i < rating; i++) {
            stars += '★';
        }
        for (var i = rating; i < 5; i++) {
            stars += '☆';
        }
        return stars;
    }
    updateCartCount();
});

function updateCartCount() {
    let cart = JSON.parse(localStorage.getItem('carts')) || [];
    let cartCount = cart.reduce((total,item) => total + item.quantity, 0);
    document.getElementById('cart-count').innerText = cartCount;
}

function handleSearch() {
    var searchText = document.getElementById("searchInput").value.toLowerCase().trim();
    if (searchText.includes("tshirt")) {
        window.location.href = "fashion.html";
    } else if (searchText.includes("apple iphone")) {
        window.location.href = "mobiles.html";
    } else if (searchText.includes("fridge")) {
        window.location.href = "E-commerce page.html";
    } else {
        alert("No specific results found. You can explore our categories directly.");
    }
}