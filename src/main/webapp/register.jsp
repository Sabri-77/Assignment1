<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Registration Page</title>

<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">

</head>
<body>

<form action="Register2Servlet" method="Post">
Name : <input type="text" name="userName"><br>
Password : <input type="password" name="password"><br>
Email : <input type="text" name="email"><br>
<input type="submit" value = "Register"/>
</form>

<nav class="navbar navbar-expand-md navbar-light">
<div>
</div>
<ul class="navbar-nav ml-auto">
<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
</ul>
</nav>

<nav class="navbar navbar-expand-md navbar-light">
<div>
</div>
<ul class="navbar-nav ml-auto">
<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
</ul>
</nav>

<nav class="navbar navbar-expand-md navbar-light">
<div>
</div>
<ul class="navbar-nav ml-auto">
<li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a></li>
</ul>
</nav>

<nav class="navbar navbar-expand-md navbar-light">
<div>
</div>
<ul class="navbar-nav ml-auto">
<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
</ul>
</nav>


</body>
</html>