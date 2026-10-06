<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Actor Management System</title>

<style>

body{
	margin:0;
	padding:0;
	font-family:Arial, Helvetica, sans-serif;
	background:linear-gradient(to right,#141e30,#243b55);
	height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
}

.container{
	width:500px;
	background:white;
	padding:40px;
	border-radius:15px;
	box-shadow:0px 0px 20px rgba(0,0,0,0.4);
	text-align:center;
}

h1{
	color:#243b55;
	margin-bottom:10px;
}

p{
	color:gray;
	font-size:18px;
	margin-bottom:35px;
}

.btn{
	display:block;
	width:80%;
	margin:20px auto;
	padding:15px;
	text-decoration:none;
	font-size:20px;
	font-weight:bold;
	border-radius:10px;
	transition:0.3s;
	color:white;
}

.report-btn{
	background:#28a745;
}

.report-btn:hover{
	background:#1e7e34;
	transform:scale(1.05);
}

.register-btn{
	background:#007bff;
}

.register-btn:hover{
	background:#0056b3;
	transform:scale(1.05);
}

.footer{
	margin-top:30px;
	color:#777;
	font-size:14px;
}

</style>

</head>

<body>

<div class="container">

	<h1>Actor Management System</h1>

	<p>
		Spring Boot MVC CRUD Project
	</p>

	<a href="report" class="btn report-btn">
		Show Actor Report
	</a>

	<a href="register" class="btn register-btn">
	Register New Actor
</a>

	<div class="footer">
		Developed Using Spring Boot + JSP + MySQL
	</div>

</div>

</body>
</html>