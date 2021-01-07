

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "scms_db";
String userid = "root";
String password = "Ad&min56";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Category</title>
        <style>

div {
  background-color: #555555;
  border-radius: 12px;
}


a{
  color:white;
text-decoration:none;}



h1  {color: white;
     background-color: #aaaaaa;
     text-align: left;
   padding: 2px;}

.wrapper {
  margin: 1em;
  max-width: 500px;
}


.navbars {
  overflow: hidden;
  background-color: #333;
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
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

.navbar a:hover{
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


.centerbutton {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 200px;
  
}



.center {
  margin: auto;
  width: 30%;
 
  padding: 10px;
}


</style>

</head>
<body>
<!--Client NavBar-->
<div class="navbar">
 
  <a href="clientHome.jsp">Home</a>
  <a href="AboutUsClient.html">About Us</a>
  <a href="order.jsp">MyOrders</a>
  <a href="Bills.jsp">MyBills</a>
  <a href="ProductCategory.jsp">Products</a>
  <a href="DisplayShoppingCart.jsp"><i class="fa fa-shopping-cart"></i> MyCart</a>
 
    <form  action="logoutClientservlet">
	<input type="submit" value=LOGOUT>
    </form>
</div>

<h1>Categories</h1>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from dealerdetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


    
    
        <div class="center">
  
<div class="wrapper">
  
 <br><br><br><br>
<h1>  <center>
<a href="ShowProductCatalog.jsp?category=<%=resultSet.getString("category")%>" ><%=resultSet.getString("category") %></a>
  </center></h1>

</div>
</div>
<br><br>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

    </body>
</html>







