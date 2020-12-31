
<%@page import="Api.Item"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Vector"%>
<%@page import="Api.ShoppingCartException"%>
<%@page import="Api.ShoppingCart"%>
<%@page import="Api.Shipping"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmation</title>
    </head>
    <body>
    <table border="4">
        <tr><th>Product</th><th>Description</th><th>Quantity</th><th>Price</th><th>Order Price</th></tr>
<%  
          
            Shipping details = (Shipping) session.getAttribute("userdetails");
            ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");
            if (cart == null) {
                cart = new ShoppingCart();

                session.setAttribute("ShoppingCart", cart);
            }
          
                Vector items = cart.getItems();
                 if (items.size() == 0)
                {
                    out.println("<h3>Your shopping cart is empty.</h3>");
                }
                else
                {
                    double orderprice = 0.0;
                    double total = 0.0;
                    int numItems = items.size();

            // Get a formatter to write out currency values.
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
                        out.print("</td></tr>");
                        total = total + orderprice;
                     %>
                     <br>
<%
                    }
%>
<br>
    </table>
<%
             out.print("Total price:");
             out.print(currency.format(total));
                }
%>

    <br>
    <br>
               Details:
               <br>
                Name:<%=details.getName()%>
                <br>
                Address:<%=details.getAddress()%>
           
               <br> 
               City:<%=details.getCity()%>
               <br>
                Email:<%=details.getEmail()%>
               <br>
                Contact no.:<%=details.getContact_no()%>
                
                <br>
               <form action="checkout" method="get">
               
               
               <a href="DisplayShoppingCart.jsp"> Cancel </a>
               <input type="submit" name="confirm" value="Confirm">
                </form>
               

         
    </body>
</html>
