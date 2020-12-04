<%-- 
    Document   : loginClient
    Created on : Nov 27, 2020, 11:54:54 AM
    Author     : SriGoutam J
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid=request.getParameter("email");
session.putValue("email",email);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clients","root","mysql");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("email").equals(enail))
{
//out.println("Welcome " +email);
 response.sendRedirect("clientHome.html");
}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
