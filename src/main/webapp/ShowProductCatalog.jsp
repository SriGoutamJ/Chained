
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="Api.*,java.net.*,java.text.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
<style>

	
<!-- Anchor tags css-->
a{
color:white;
tect-decoration:none;
}

.navbar {
  overflow: hidden;
  background-color: #333;
  font-family:Helvetica, sans-serif;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  cursor: pointer;
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn, .dropbtn:focus {
  background-color: black;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #333;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: black;
}

.show {
  display: block;
}

.navbar input[type=submit]{
  float:right;
  background-color: #333;
  border: none;
  color: white;
  padding: 12px 22px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
  font-family: Helvetica, sans-serif;

}

.navbar input[type=submit]:hover{
  background-color:black;
}

<!--Product Card CSS-->
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
 font-family: 'Andika New Basic', sans-serif;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 22px;
}

.card button:hover {
  opacity: 0.7; 
}

.card button a{
 color:white; 
 text-decoration:none;
}

<!-- table css-->
table{
 width:90%;
 
 }

td{
 width:33%;
 padding:50px;
}

<!--wrapper-->
.center{
margin-left:auto;
margin-right:auto;
}

h1  {color: white;
     background-color: #555555;
     text-align: left;
   padding: 2px;}
	
	</style>	
	     
    </head>
    <body bgcolor=#e6e6e6>

	    
<!--Client NavBar-->
<div class="navbar">
 
  <a href="clientHome.jsp">Home</a>
  <a href="AboutUsClient.html">About Us</a>
  <a href="order.jsp">MyOrders</a>
  <a href="Bills.jsp">MyBills</a>
  <a href="ProductCategory.jsp">Products</a>
  <a href="DisplayShoppingCart.jsp"><i class="fa fa-shopping-cart"></i> MyCart</a>
 
    <form  action="logoutClientservlet">
	<input type="submit" value=LOGOUT>
    </form>
</div>


	    
	    <div class="brands">
		<div class="container">


<h1>Available Products</h1>
<table border="0" cellpadding="10px" >
    
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
	
    int count=0;
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
	     if(count==3)
		{
			out.print("</tr><tr>");
			count=0;
		}
		count++;
%>

	<td><div class="card">
 	<div class="grid-item">
  		<h1><%=item.getProduct_name()%></h1>
  		
  		<p><%=item.getDescription()%></p>
                <p class="price"><%=currency.format(item.getShow_price())%></p>
 		 <p><button><a href="<%=addItemURL%>">Add to Cart</a></button></p>
	</div>
</div>
	
<%
    }
    }
    
%>
</table>
                      
                </div>
</div>
    </body>
</html>
