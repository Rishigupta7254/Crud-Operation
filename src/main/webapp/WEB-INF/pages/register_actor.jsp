<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form"
prefix="form"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Register Actor</title>
</head>

<body>

<h1>Register Actor</h1>

<form:form modelAttribute="actor"
method="post"
action="register">

<table>

<tr>
<td>Actor Name</td>

<td>
<form:input path="actname"/>
</td>
</tr>

<tr>
<td>Movie Name</td>

<td>
<form:input path="movieName"/>
</td>
</tr>

<tr>
<td>Remuneration</td>

<td>
<form :input path="Remuneration"/></td>
</tr>

<tr>
<td>category</td>

<td>
<form:input path="category"/></td>
</tr>

<td>
<input type="submit"
value="Save Actor"/>
</td>
</tr>

</table>

</form:form>

</body>
</html>