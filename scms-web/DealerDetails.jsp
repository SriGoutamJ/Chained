<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Api.*" %>

<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<title>Dealers</title>

<style>
body{
background:#e6e6e6;

}

table{

width:"80%";
}

td{
text-align:center;
}


</style>

</head>
<body>

<!-- NavBar -->
<div class="w3-top">
  <div class="w3-bar" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <a href="#home" class="w3-bar-item w3-button">HOME</a>
  	<a href="#Aboutus" class="w3-bar-item w3-button w3-hide-small">ABOUT US</a>
    <a href="#portfolio" class="w3-bar-item w3-button w3-hide-small">ORDER </a>
    <a href="#History" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i>HISTORY</a>
    <a href="ProductCategory.jsp" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> PRODUCTS</a>
    <a href="DisplayShoppingCart.jsp" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-shopping-cart"></i> MyCart</a>
    <form class="w3-bar-item w3-button w3-hide-small" action="logoutClientservlet">
	<input type="submit" value=LOGOUT></form>
  </div>
</div>
<br><br><br>
<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "scms_db";
String userId = "root";
String password = "mysql";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Dealers</strong></font></h2>

<table align="center" cellpadding="15" cellspacing="0" border="1">

<tr>

</tr>
<tr>
<td><b>Dealer id</b></td>
<td><b>Category</b></td>
<td><b>Name</b></td>
<td><b>Address</b></td>
<td><b>Contact No</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM dealerdetails";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("dealerid") %></td>
<td><%=resultSet.getString("category") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("contactno") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>