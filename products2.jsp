<%-- 
    Document   : products2
    Created on : 4 Dec, 2020, 6:11:20 PM
    Author     : vidya
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
//String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "dealerDemo";
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
String categories = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product dummy page</title>
    </head>
    <body> 

<h1>Categories</h1>
<table>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from info";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
    <td><%=resultSet.getString("categories") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    </body>
</html>
