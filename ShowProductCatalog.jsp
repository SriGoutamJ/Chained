
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="Api.*,java.net.*,java.text.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
    </head>
    <body>


<div class="brands">
		<div class="container">

<a href="DisplayShoppingCart.jsp">View Shopping Cart</a>


<h1>Available Products</h1>
<table border="1" cellpadding="10px" >
    <tr><th>Name</th><th>Description<th>Price<th>Action</th></tr>
<%

// Get the shared product catalog.
    ProductCatalog catalog = (ProductCatalog) application.getAttribute("ProductCatalog");
     
        String category = request.getParameter("category");
   
// If the shared product catalog hasn't been created yet, create it.
    if (catalog == null)
    {
        synchronized (application)
        {
            catalog = new ProductCatalog();
            application.setAttribute("ProductCatalog", catalog);
        }
    }
//Get all products
    Products[] items = catalog.getItems();

// Get a currency formatter for showing the price.
    NumberFormat currency = NumberFormat.getCurrencyInstance();

    for (int i=0; i < items.length; i++)
    {
        Products item = items[i];
        if(item.getProduct_category().equals(category)) {
// Create the URL for adding the item to the shopping cart.
        String addItemURL =
            "AddToShoppingCartServlet?"+
            "productCode="+URLEncoder.encode(item.getProduct_id())+
            "&productname="+URLEncoder.encode(item.getProduct_name())+
            "&description="+URLEncoder.encode(item.getDescription())+
            "&quantity=1"+
            "&price="+URLEncoder.encode(""+item.getShow_price());
%>
    <tr><td><%= item.getProduct_name() %></td>
        <td><%=item.getDescription()%></td>
    
    <td><%=currency.format(item.getShow_price())%></td>
<td><a href="<%=addItemURL%>">Add to Shopping Cart</a></td></tr>
<%
    }
    }
    
%>
</table>
                      
                </div>
</div>
    </body>
</html>
