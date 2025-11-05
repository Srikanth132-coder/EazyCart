<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABOUT || E-Cart Commerce</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/About.css">
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

    <main class="about-section">
        <div class="container">
            <h1>About Eazy-Cart</h1>
            <p>Eazy-Cart is your ultimate destination for hassle-free online shopping, offering a wide range of products across various categories.</p>
            
            <h2>Our Mission</h2>
            <p>Our mission is to provide customers with the best online shopping experience by offering high-quality products, fast delivery, and exceptional customer service.</p>
            
            <h2>Why Choose Us?</h2>
            <ul>
                <li>Extensive Product Range</li>
                <li>Competitive Prices</li>
                <li>Secure Payment Options</li>
                <li>Fast and Reliable Delivery</li>
                <li>24/7 Customer Support</li>
            </ul>
            
            <h2>Location</h2>
            <p>1-1-203/5/64, Moulali, Industrial Area, Hyderabad. 500012</p>
            
            <h2>Contact Us</h2>
            <ul>
                <li>Email: Eazy-Cart@email.com</li>
                <li>Phone: 1800 6404 766</li>
            </ul>
            
            <h2>Follow Us</h2>
            <ul class="social-media">
                <li><a href="https://www.facebook.com/login/">Facebook</a></li>
                <li><a href="https://x.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJteCI6IjIifQ%3D%3D%22%7D">Twitter</a></li>
                <li><a href="https://www.instagram.com/accounts/login/?hl=en">Instagram</a></li>
            </ul>
        </div>
    </main>

    <hr>
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