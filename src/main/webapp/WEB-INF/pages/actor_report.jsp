<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Actor Report</title>
</head>

<body>

<h1 style="text-align:center;color:green">
	Actor Report
</h1>

<c:choose>

<c:when test="${!empty actorList}">

<table border="1" align="center">

<tr>

<th>Actor Id</th>
<th>Actor Name</th>
<th>Movie Name</th>
<th>Remuneration</th>
<th>Category</th>
<th>Operations</th>

</tr>

<c:forEach var="actor"
items="${actorList}">

<tr>

<td>${actor.actid}</td>

<td>${actor.actname}</td>

<td>${actor.movieName}</td>

<td>${actor.remueration}</td>

<td>${actor.category}</td>

<td>

<a href="edit?id=${actor.actid}">
	Edit
</a>

|

<a href="delete?id=${actor.actid}"
onclick="return confirm('Do you want to delete this actor?')">

	Delete

</a>

</td>

</tr>

</c:forEach>

<a href="edit?id=${actor.actid}">
	Edit
</a>

|

<a href="delete?id=${actor.actid}"
onclick="return confirm('Do you want to delete this actor?')">

	Delete

</a>

</td>

</tr>


</table>

</c:when>

<c:otherwise>

<h2 style="text-align:center;color:red">
	No Records Found
</h2>

</c:otherwise>

</c:choose>

<br>

<center>

<a href="register">
	Add New Actor
</a>

</center>

</body>
</html>