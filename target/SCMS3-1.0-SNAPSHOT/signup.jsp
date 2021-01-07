
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language = "java" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>

    <%
        String first_name = request.getParameter("fname");
        String last_name = request.getParameter("lname");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
//        int contact_no = Integer.parseInt(request.getParameter("contactno"));
        String contact_no = request.getParameter("contactno");
        String password = request.getParameter("password");
        
        
        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String database = "scms_db";
        String userid = "root";
        String pass = "Ad&min56";
        try {
            Class.forName(driver);
            } catch (ClassNotFoundException e) {
            }
        
        String query1 ="insert into clientdetails(email, password, fname, lname, address, city, contactNo) values(?,?,?,?,?,?,?)";
        
        try{
            Connection connection = null;
            PreparedStatement statement = null;
        
            connection = DriverManager.getConnection(connectionUrl+database, userid, pass);
            statement = connection.prepareStatement(query1);
       
            statement.setString(1, email);
            statement.setString(2, password);
            statement.setString(3, first_name);
            statement.setString(4, last_name);
            statement.setString(5, address);
            statement.setString(6, city);
            statement.setString(7, contact_no);
            statement.executeUpdate();
          
           
            statement.close();
            connection.close();
            response.sendRedirect("loginClient.jsp");
            
            
        } 
        catch (SQLException e) {
        }
        
    %>
    </body>
</html>
