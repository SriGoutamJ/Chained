

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
color:black;
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
  margin: auto auto;
  max-width: 500px;
}
           
            
.center {
  margin: auto;
  width: 50%;
 
  padding: 10px;
}
    
table{
width:100%;
border-collapse: collapse;
}        

th , td{
padding:15px;
text-align:center;
}            

tr:nth-child(even) {background-color: #f2f2f2;}
        </style>    
    </head>
    <body bgcolor=#e6e6e6>
       <%-- Show the header with the shopping cart image --%>
<div class="center">
  
<div class="wrapper">
  
 <br><br><br><br>
<h1> <center>
   Shopping Cart
   </center>
  </h1>

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
<table border=1>
    <tr><th><h3>Product</h3></th><th><h3>Description</h3></th><th><h3>Quantity</h3></th><th><h3>Price</h3></th><th><h3>Order Price</h3></th><th><h3>Action</h3></th></tr>
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
<br>
<%
             out.print("<h3>Total price: ");
             out.print(currency.format(total));
%>
</h3>
<br>
<form action="Continue" method = "post">
       <input type="submit" value="Place order">
     </form>

<%
      }
%>


    </body>
</html>
