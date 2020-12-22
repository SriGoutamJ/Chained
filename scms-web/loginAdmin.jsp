
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","Ad&min56");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from password where password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password))
{

response.sendRedirect("adminHome.jsp");
}
else{
out.println("Invalid password.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
