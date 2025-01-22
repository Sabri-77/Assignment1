<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">

</head>
<body>

<form action="Login2Servlet" method="post">

<div class="form-group">
<label>Name</label>
<input type="text" class="form-control" name="username" placeholder="Enter Your Username" required>
</div>

<div class="form-group">
<label>Password</label>
<input type="password" class="form-control" name="password" placeholder="Enter Your Password" required>
</div>

<div class="text-center">
<button type="submit" class="btn btn-primary">login</button>
</div>
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
<li class="nav-item"><a class="nav-link" href="index.jsp">Register</a></li>
</ul>
</nav>

</body>
</html>