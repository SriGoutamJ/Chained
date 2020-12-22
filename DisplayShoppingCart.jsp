

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="Api.*,java.util.*,java.text.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
    </head>
    <body>
       <%-- Show the header with the shopping cart image --%>
<table border="0">
<tr><td><td><h1>Shopping Cart</h1>
</table>

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
<table border=4>
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
