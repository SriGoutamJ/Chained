<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
</head>
<body>

<%	
String i,n,desc; double price;
i=request.getParameter("productid");
n=request.getParameter("productname");
desc=request.getParameter("desc");
price=Double.parseDouble(request.getParameter("productprice")); 
%>

<p align="center"><%=n%><br><%=desc%><br><%=price%></p>

</body>
</html>
