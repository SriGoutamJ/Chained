
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
    <body>
    <table border=1>
    <tr><th><h3>Product</h3></th><th><h3>Description</h3></th><th><h3>Quantity</h3></th><th><h3>Price</h3></th><th><h3>Order Price</h3></th><th><h3>Action</h3></th></tr>

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
             out.print("<h3>Total price:");
             out.print(currency.format(total));
                }
%>
        </h3>
    <br>
    <br>
        <h2>Details:</h2>
               <br><br>
        <h3>Name:</h3><%=details.getName()%>
                <br>
        <h3>Address:</h3><%=details.getAddress()%>
           
               <br> 
       <h3>City:</h3><h4><%=details.getCity()%><h4>
               <br>
        <h3>Email:</h3><h4><%=details.getEmail()%><h4>
               <br>
    <h3>Contact no.:</h3><h4><%=details.getContact_no()%></h4>
                
                <br>
               <form action="checkout" method="get">
               
               
               <a href="DisplayShoppingCart.jsp"> Cancel </a>
               <input type="submit" name="confirm" value="Confirm">
                </form>
               

         
    </body>
</html>
