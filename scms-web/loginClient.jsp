<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="loginClientcss.css">
</head>
<body bgcolor="e6e6e6">
	<form class="box" action="loginClientservlet" method="post">	
	<h1>Login</h1>
	<input type="text" name="email" placeholder="E-mail">
	<input type="password" name="password" placeholder="Password">
	<input type="submit" value="login">
	</form>
</body>
</html>
