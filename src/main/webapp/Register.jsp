<% 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
 <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/Register.css">
 <script>
 function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
 </script>
</head>
<body>
<img src="<%= request.getContextPath() %>/images/background.jpeg" alt="background" style="display: none;">
<div class="container">
    <h2>Welcome to Eazy-Cart E-commerce</h2>
</div>
	 <div class="form-container">
        <h3>Register With Us</h3>
        <p>Please fill all the details</p>
        <hr>
        <form method="get" action="RegistrationServlet" autocomplete="off">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[!,@,#,$,%,&,*])(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br>
            <p>Note:Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</p>
            <input type="checkbox" onclick="myFunction()">Show Password<br>
            <label for="first">First Name:</label><br>
            <input type="text" id="first" name="first" required><br>
            <label for="last">Last Name:</label><br>
            <input type="text" id="last" name="last" required><br>
            <label for="mobile">Mobile Number:</label><br>
            <input type="tel" id="mobile" name="mobile" required><br>
            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email" placeholder="Your email.." title="Enter '@gmail.com' as the email domain" required><br><br>
            <button type="submit" value="Submit" class="submit">Register</button>
        </form>
         <div class="login-link">
        <p>Already have an account? <a href="Login.jsp">Login here</a></p>
    </div>
    </div>
</body>
</html>