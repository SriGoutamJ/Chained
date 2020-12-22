

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="Api.*,java.util.*,java.text.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <style>
            
input[type="submit"]{
border:0;
background:none;
display:block;
margin:20px auto;
text-align: center;
border: 2px solid #2ecc71;
padding: 14px 40px;
outline:none;
color:white;
border-radius: 24px;
transition: 0.25s;
cursor: pointer;
}
            
input[type="submit"]:hover{
background:#2ecc71;
}

h1  {color: white;
     background-color: #555555;
     text-align: left;
   padding: 2px;}

.wrapper {
  margin: 1em;
  max-width: 500px;
}
            
<!-- table css-->
table{
 width:90%;
 
 }

td{
 width:33%;
 padding:50px;
}

.center{
margin-left:auto;
margin-right:auto;
}
            
.center {
  margin: auto;
  width: 50%;
 
  padding: 10px;
}
            
        </style>    
    </head>
    <body>
       <%-- Show the header with the shopping cart image --%>
<div class="center">
  
<div class="wrapper">
  
 <br><br><br><br>
<h1>  <center>
   Shopping Cart
  </center></h1>

</div>
</div>

<%
// Get the current shopping cart from the user's session.
    ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");

// If the user doesn't have a shopping cart yet, create one.
    if (cart == null)
    {
        cart = new ShoppingCart();
        session.setAttribute("ShoppingCart", cart);
    }

// Get the items from the cart.
    Vector items = cart.getItems();

// If there are no items, tell the user that the cart is empty.
    if (items.size() == 0)
    {
        out.println("<h3>Your shopping cart is empty.</h3>");
    }
    else
    {
%>
<%-- Display the header for the shopping cart table --%>
<br>
<table border=0>
    <tr><th>Product</th><th>Description</th><th>Quantity</th><th>Price</th><th>Order Price</th><th>Action</th></tr>
<%
        double orderprice = 0.0;
        double total = 0.0;
        int numItems = items.size();

// Formatter to write out currency values.
        NumberFormat currency = NumberFormat.getCurrencyInstance();

        for (int i=0; i < numItems; i++)
        {
            Item item = (Item) items.elementAt(i);

// Print the table row for the item.
            out.print("<tr><td>");
            out.print(item.productname);
            out.print("</td><td>");
            out.print(item.description);
            out.print("</td><td>");
            out.print(item.orderQuantity);
            out.print("</td><td>");
            out.print(currency.format(item.price));
            orderprice = item.price * item.orderQuantity;
            out.print("</td><td>");
            out.print(currency.format(orderprice));
            total = total + orderprice;
//  Link that allows the user to delete an item from the cart.
            out.println("</td><td>"+
                "<a href=\"RemoveItemServlet?item="+
                i+"\">Remove</a></td></tr>");
        }
       
 
%>
</table>
<%
             out.print("Total price:");
             out.print(currency.format(total));
%>
<br>
<form action="Continue" method = "post">
       <input type="submit" value="Place order">
     </form>

<%
      }
%>


    </body>
</html>
