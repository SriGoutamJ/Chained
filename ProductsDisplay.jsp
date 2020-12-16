<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link rel="stylesheet" href="productsDisplaycss.css">
</head>
<body bgcolor=#e6e6e6>

  <%/*
		response.setHeader("cache-control","no-cache,no-store,must-revalidate");
	
		if(session.getAttribute("email")==null)
		{
			response.sendRedirect("loginClient.jsp");
		}
	*/%>
 
<%

	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "dealer";
	String userid = "root";
	String password = "mysql";
	
	String category=request.getParameter("category");
	
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;ResultSet rs1=null;
	String categories = null;
%>


<h1>PRODUCTS</h1>
<table align="center" cellpadding="10px" cellspacing="3px">
<tr>	
	
	<%
	try{
		connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		statement=connection.createStatement();
		String sql ="select * from electronics";//+category;
		rs = statement.executeQuery(sql);
		int count=0;
		while(rs.next())
		{
			String i,n,desc;double price;
			i=rs.getString(1).trim();
			n=rs.getString(2).trim();
			desc=rs.getString(3).trim();
			price=rs.getDouble(4);
			if(count==3)
			{
				out.print("</tr><tr>");
				count=0;
			}
			count++;
		
	%>

<td><a href="Product.jsp?productid=<%=i%>&productname=<%=n%>&desc=<%=desc%>&productprice=<%=price%>">
<%=n%>
</a></td>

	
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
