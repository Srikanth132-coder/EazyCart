<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electronics || E-Cart Commerce</title>
 <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/Electronics.css">
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/Electronics.js"></script>
</head>
<body class="background">
    <div class="header">
        <img src="<%= request.getContextPath() %>/images/e-logo.jpeg" alt="logoname" class="logo" >
        <ul class="ul">
            <li class="li"><a href="<%= request.getContextPath() %>/Home.jsp">Home</a></li>
            <li class="li"><a href="<%= request.getContextPath() %>/Shop.jsp">Shop</a></li>
            <li class="li"><a href="<%= request.getContextPath() %>/About.jsp">About</a></li>
            <li class="li"><a href="#footer">Contact</a></li>
            <input type="text" placeholder="Search for Products, Brands and More" class="search">
            <button onclick="handleSearch()">Search</button>
            
            <%
    // Check if username is set in session
    String username = (String) session.getAttribute("username");
    if (username != null && !username.isEmpty()) {
%>
    <li class="li logout"><a href="#"><%= username %></a></li>
    <li class="li logout"><a href="Logout.jsp">Logout</a></li>
<% 
    } else {
%>
   <li class="li login"><a href="Login.jsp">Login</a></li>
<%
    }
%>
 
             <a href="<%= request.getContextPath() %>/Cart.jsp">
                <img src="<%= request.getContextPath() %>/images/cartimage.jpg" alt="cartimage" class="carts">
                <span id="cart-count" style="float: right;">0</span>
            </a>
        </ul>
        <hr>
    </div>
    <div>
        <fieldset style="border: 0;background-color: rgb(255, 255, 255);">
           <table>
            <tbody>
                <tr>
                     <td><a href="#"><img src="<%= request.getContextPath() %>/images/grocery.jpg" alt="grocery" class="catimg"></a></td>
                    <td><a href="<%= request.getContextPath() %>/Mobiles.jsp"><img src="<%= request.getContextPath() %>/images/mobiles.jpg" alt="mobiles" class="catimg"></a></td>
                    <td><a href="<%= request.getContextPath() %>/Fashion.jsp"><img src="<%= request.getContextPath() %>/images/fashion.jpg" alt="fashion" class="catimg"></a></td>
                    <td><a href="<%= request.getContextPath() %>/Electronics.jsp"><img src="<%= request.getContextPath() %>/images/electronics.jpg" alt="electronics" class="catimg"></a></td>
                    <td><a href="#"><img src="<%= request.getContextPath() %>/images/furniture.jpg" alt="furniture" class="catimg"></a></td>
                    <td><a href="#"><img src="<%= request.getContextPath() %>/images/toys.jpg" alt="toys" class="catimg"></a></td>
                    <td><a href="#"><img src="<%= request.getContextPath() %>/images/beauty.jpg" alt="beauty" class="catimg"></a></td>
                </tr>
                <tr class="text">
                    <td>Grocery</td>
                    <td>Mobiles</td>
                    <td>Fashion</td>
                    <td>Electronics</td>
                    <td>Furniture</td>
                    <td>Toys</td>
                    <td>Beauty</td>
                </tr>
            </tbody>
           </table>
        </fieldset>
    </div>
    <br>
    <header>
        <div class="header1">
            <h2>Electronics</h2>
        </div>
    </header>

    <main class="container">
        <section class="product-image">
            <img id="main-image" src="<%= request.getContextPath() %>/images/refrigerator.jpg" alt="Main Product Image">
            <div class="thumbnails">
                <img class="thumbnail" src="<%= request.getContextPath() %>/images/refrigerator.jpg" onclick="document.getElementById('main-image').src='<%= request.getContextPath() %>/images/refrigerator.jpg'" alt="Thumbnail 0">
                <img class="thumbnail" src="<%= request.getContextPath() %>/images/refrigerator1.jpg" onclick="document.getElementById('main-image').src='<%= request.getContextPath() %>/images/refrigerator1.jpg'" alt="Thumbnail 1">
                <img class="thumbnail" src="<%= request.getContextPath() %>/images/refrigerator2.jpg" onclick="document.getElementById('main-image').src='<%= request.getContextPath() %>/images/refrigerator2.jpg'" alt="Thumbnail 2">
                <img class="thumbnail" src="<%= request.getContextPath() %>/images/refrigerator3.jpg" onclick="document.getElementById('main-image').src='<%= request.getContextPath() %>/images/refrigerator3.jpg'" alt="Thumbnail 3">
            </div>
        </section>
        <section class="product-details">
            <h3>Eazy-Cart Refrigrirator</h3>
            <h4 class="pr">PRICE : </h4><p class="price"> Rs.26,900/-</p><del class="del"> Rs.45,000/-</del><br>
            <p class="description">Eazy-Cart Refrigrirator || L Frost Free Double Door 3 Star Convertible Refrigerator with Smart Inverter  (Dazzle Steel, GL-S292RDSX)</p>
        <br>
            <label for="quantity">Quantity:</label>
            <div class="quantity-selector">
                <button class="quantity-btn" onclick="decrementQuantity()">-</button>
                <input type="number" id="quantity" value="1" min="1">
                <button class="quantity-btn" onclick="incrementQuantity()">+</button>
              </div>
              <button class="add-to-cart-btn" onclick="addToCart()">Add to Cart</button>
              
            </div>
            <h5>Key Features : </h5>
            <pre class="features">  240 L : Good for families of 3-5 members
    Smart Inverter
    3 Star : For Energy savings up to 35%
    Frost Free : Auto fridge defrost to stop ice-build up
    Convertible: Offers you more space for all the food you need to store</pre>
        </section>

        <section class="reviews">
            <h2>Customer Reviews</h2>
            <div class="review">
                <div class="rating">★★★★☆</div>
                <p class="reviewer">MVR VAMSHI</p>
                <p class="review-text">Amazing Product... with minimal energy consumption and excellent features</p>
            </div>
            
            
            <form class="review-form">
                <h3>Submit a Review</h3>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br>
                <label for="rating">Rating:</label>
                <select id="rating" name="rating" required>
                    <option value="5">★★★★★</option>
                    <option value="4">★★★★☆</option>
                    <option value="3">★★★☆☆</option>
                    <option value="2">★★☆☆☆</option>
                    <option value="1">★☆☆☆☆</option>
                </select><br>
                <label for="review">Review:</label><br>
                <textarea id="review" name="review" rows="4" required></textarea><br>
                <button type="submit">Submit Review</button>
            </form>
        </section>
    </main>

    <footer id="footer">
        <div class="container">
            <p>Contact information: </p>
            <p>Email : Eazy-Cart@email.com</p>
            <p>Mobile : 1800 6404 766</p>
            <p>Adress : 1-1-203/5/64, Moulali, Industrial Area, Hyderabad. 500012</p>
            <br>
            <hr>
            <br>
            <ul class="social-media">
                <p>Follow Us : </p>
                <li><a href="https://www.facebook.com/login/">Facebook</a></li>
                <li><a href="https://x.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJteCI6IjIifQ%3D%3D%22%7D">Twitter</a></li>
                <li><a href="https://www.instagram.com/accounts/login/?hl=en">Instagram</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>