<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
body, h1, h2, h3, p, ul, li, button, input {
	margin: 0;
	padding: 0;
}

body {
	font-family: Arial, sans-serif;
	background-image: url('<%= request.getContextPath() %>/images/background.jpeg');
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}
.container {
	max-width: 400px;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
.logo{
    width: 100px;
    height: 100px;
    margin-right: 100px;
    background-size: 100px;
    background-color: red;
    padding: 5%;
}


.container {
    max-width: 400px;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
	display: block;
	margin-bottom: 20px;
}

h2 {
	font-size: 1.8rem;
	margin-bottom: 15px;
	text-align: center;
	color: #333;
}

label {
	display: block;
	margin-bottom: 8px;
}

input[type="text"], input[type="password"] {
	width: calc(100% - 20px);
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ddd;
	border-radius: 3px;
	font-size: 1rem;
}

button {
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 3px;
	font-size: 1rem;
	cursor: pointer;
}
</style>
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
<div class="header">
    <a href="<%= request.getContextPath() %>/Home.jsp">
    <img src="<%= request.getContextPath() %>/images/e-logo.jpeg" alt="logoimage.jpeg" class="logo"></a>
    </div>
	<div class="container">
		<form id="login-form" class="login-form"
			onsubmit="return validateForm()" method="post" action="LoginServlet">
			<h2>Login</h2>
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required><br>
				<input type="checkbox" onclick="myFunction()">Show Password<br>
				<br>
			<button type="submit">Login</button>
			<br>
			<br>
			<div class="form-footer">
				<span>Don't have an account? <a href="Register.jsp" id="signup-link">Register</a></span>
			</div>
		</form>
	</div>
</body>
</html>