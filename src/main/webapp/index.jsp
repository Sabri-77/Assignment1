<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">

<style>
/* Style the header */
header {
  background-color: #777;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}
</style>

</head>
</head>

<body>


<h1 class="text-center">Welcome to Casual Outlet</h1>
<h1 class="text-center">A place where fashion builds personality</h1>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container">
    <a class="navbar-brand" href="#">Casual Outlet</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Blog</a>
        </li>  
      </ul>
    </div>
  </div>
  
    <div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="index.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="true">
    Sales Item
  </a>

  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Top</a></li>
    <li><a class="dropdown-item" href="#">Bottom</a></li>
    <li><a class="dropdown-item" href="#">Kiddies</a></li>
  </ul>
</div>
        
        <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="true">
    Occasion
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Men</a></li>
    <li><a class="dropdown-item" href="#">Women</a></li>
    <li><a class="dropdown-item" href="#">Accesories</a></li>
  </ul>
</div>

      <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="true">
    Apparel Type
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Mens Wear</a></li>
    <li><a class="dropdown-item" href="#">Womens Wear</a></li>
    <li><a class="dropdown-item" href="#">kids Wear</a></li>
  </ul>
</div>
  
</nav>

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