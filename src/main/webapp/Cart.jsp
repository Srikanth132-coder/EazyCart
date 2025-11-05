<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/Cart.css">
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/Cart.js"></script>
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
    <br>
    
    <div class="header">
        <h1>Your Orders</h1>
    </div>

    <div class="cart-items">
        <table>
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Item</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="cart-list">
            </tbody>
        </table>
    </div>

    <div class="checkout">
        <h2>Total Amount : <span id="total-price">Rs. 0/-</span></h2>
        <button onclick="checkout()">Checkout</button>
    </div>
    
    <footer id="footer">
        <div class="container">
            <p>Contact information: </p>
            <p>Email : Eazy-Cart@email.com</p>
            <p>Mobile : 1800 6404 766</p>
            <p>Address : 1-1-203/5/64, Moulali, Industrial Area, Hyderabad. 500012</p>
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