
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "dealerdemo2";
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
    </head>
    <body> 

<h1>Categories</h1>
<table>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from dealers";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
    <td><a href="ShowProductCatalog.jsp?category=<%=resultSet.getString("category")%>" ><%=resultSet.getString("category") %></a></td>
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
