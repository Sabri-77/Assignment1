<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
<link rel="stylesheet" 
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-
ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Customer Management</title>
</head>
<body>

<div class="row"> 
<div class="container">
<h3 class="text-center">Customer Management</h3>
<hr>
<div class="container text-left">
<!-- Add new user button redirects to the register.jsp page -->
<a href="<%=request.getContextPath()%>/register.jsp" class="btn btn-success">Add New User</a>
</div>
<br>
<!-- Create a table to list out all current users information -->
<table class="table">
<thead>
<tr>
<th>Name</th>
<th>Password</th>
<th>Email</th>
<th>Remarks</th>
</tr>
</thead>
<!-- Pass in the list of users receive via the Servlet response to a loop -->
<tbody>
<b:forEach var="user" items="${listUsers}">
<!-- For each user in the database, display their information 
accordingly -->
<tr>
<td>
<b:out value="${user.name}" />
</td>
<td>
<b:out value="${user.password}" />
</td>
<td>
<b:out value="${user.email}" />
</td>
<!-- For each user in the database, Edit/Delete buttons 
which invokes the edit/delete functions -->
<td>
<a href="edit?name=<b:out value='${user.name}' 
/>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; 
<a href="delete?name=<b:out value='${user.name}' 
/>">Delete</a>
</td>
</tr>
</b:forEach>
</tbody>
</table>
</div>
</div>

</body>
</html>