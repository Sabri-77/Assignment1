<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b"%>
<title>User Management Application</title>
 <link rel="stylesheet" 
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
crossorigin="anonymous">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-light">
<div>
<a class="navbar-brand"> User Management Application </a>
</div>
<ul class="navbar-nav">
<li><a
href="<%=request.getContextPath()%>/CustomerServlet/dashboard"
class="nav-link">Back to Dashboard</a></li>
</ul>
</nav>
<div class="container col-md-6">
<div class="card">
<div class="card-body">
<b:if test="${!empty user.name}">
<form action="update" method="post">
</b:if>
<b:if test="${empty user.name}">
<form action="insert" method="post">
</b:if>
<caption>
<h2>
<b:if test="${!empty user.name}">
Edit User
</b:if>
<b:if test="${empty user.name}">
Add New User
</b:if>
</h2>
</caption>
<b:if test="${user != null}">
<input type="hidden" name="oriName"
value="<b:out
value='${user.name}' />" />
</b:if>
<fieldset class="form-group">
<label>User Name</label> <input type="text"
value="<b:out
value='${user.name}' />" class="form-control"
name="userName" required="required">
</fieldset>
<fieldset class="form-group">
<label>Password</label> <input type="text"
value="<b:out
value='${user.password}' />" class="form-control"
name="password">
</fieldset>
<fieldset class="form-group">
<label>User Email</label> <input type="text"
value="<b:out
value='${user.email}' />" class="form-control"
name="email">
</fieldset>
<button type="submit" class="btn btn-success">Save</button>
</form>
</div>
</div>
</div>
</body>
</html>