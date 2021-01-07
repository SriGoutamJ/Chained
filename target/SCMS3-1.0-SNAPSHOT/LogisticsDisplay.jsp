<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Api.*" %>

<!DOCTYPE html>
<html>

<head>

<title>Logistics</title>

<style>.navbar {
  overflow: hidden;
  background-color: #333;
  font-family:Helvetica, sans-serif;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  cursor: pointer;
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn, .dropbtn:focus {
  background-color: black;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #333;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: black;
}

.show {
  display: block;
}

.navbar input[type=submit]{
  float:right;
  background-color: #333;
  border: none;
  color: white;
  padding: 12px 22px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
  font-family: Helvetica, sans-serif;

}

.navbar input[type=submit]:hover{
  background-color:black;
}

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

<!--Client NavBar-->
<div class="navbar">
  <a href="adminHome.jsp">Home</a>
  <a href="AboutUsAdmin.html">About Us</a>
  <a href="DealerDetails.jsp">Dealers</a>
  <a href="ActiveClients.jsp">Active Clients</a>

  <div class="dropdown">
  <button class="dropbtn" onclick="myFunction()">Fulfillment
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown">
    <a href="Account.jsp">Accounts</a>
    <a href="LogisticsDisplay.jsp">Logistics</a>

  </div>
  </div> 
  
   <form  action="logoutAdminservlet">
	<input type="submit" value=LOGOUT>
   </form>
</div>


<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "scms_db";
String userId = "root";
String password = "Ad&min56";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<br><br><br>

<h2 align="center"><font><strong>Logistics Service Providers</strong></font></h2>

<table align="center" cellpadding="15" cellspacing="0" border="1">

<tr>

</tr>
<tr>
<td><b>Service provider id</b></td>
<td><b>Name</b></td>
<td><b>Address</b></td>
<td><b>City</b></td>
<td><b>Contact No</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM logistics";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("contact") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<!--NavBar DropDown script-->
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("myDropdown");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
	
</body>
</html>
