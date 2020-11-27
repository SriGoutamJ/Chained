<%-- 
    Document   : loginAdmin
    Created on : Nov 27, 2020, 11:54:54 AM
    Author     : SriGoutam J
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
//String userid=request.getParameter("userid");
//session.putValue("userid",userid);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from admin where password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)
{
out.println("Welcome " +Admin);
}
else{
out.println("Invalid password.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
