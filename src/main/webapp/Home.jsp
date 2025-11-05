<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Commerce || HOME</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/Home.css">
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/Home.js"></script>
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

    <fieldset class="welcome-page">
        <p class="welcome-quote">Welcome to Eazy Cart-Commerce</p>
        <img src="<%= request.getContextPath() %>/images/background.jpeg" alt="background">
    </fieldset>

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
