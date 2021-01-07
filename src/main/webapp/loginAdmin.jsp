
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scms_db","root","Ad&min56");
String sql = "select * from password where password=?";
PreparedStatement st= con.prepareStatement(sql);
st.setString(1, password);
ResultSet rs=st.executeQuery();
try{

    if(rs.next()) {
 
        session.setAttribute("admin","admin");
        response.sendRedirect("adminHome.jsp");
    }
    else{
          response.sendRedirect("invalid.html");                           
    }
}
catch (Exception e) {
e.printStackTrace();
}
%>
