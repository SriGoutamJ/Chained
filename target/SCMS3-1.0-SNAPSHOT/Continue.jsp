
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="Api.Item"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Vector"%>
<%@page import="Api.ShoppingCartException"%>
<%@page import="Api.ShoppingCart"%>
<%@page import="Api.Shipping"%>

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
        
</style>    
 
    </head>
    <body>

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


        
        
        
        <h1>Order Summary</h1>
    <table border=1>
    <tr><th><h3>Product</h3></th><th><h3>Description</h3></th><th><h3>Quantity</h3></th><th><h3>Price</h3></th><th><h3>Order Price</h3></th></tr>

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
               <h3>Name:</h3><h4><%=details.getName()%></h4>
                <br>
                <h3>Address:</h3><h4><%=details.getAddress()%></h4>
           
               <br> 
       <h3>City:</h3><h4><%=details.getCity()%><h4>
               <br>
        <h3>Email:</h3><h4><%=details.getEmail()%><h4>
               <br>
    <h3>Contact no.:</h3><h4><%=details.getContact_no()%></h4>
                
                <br>
                <h2>Payment Option: Cash on Delivery </h2>
               <form action="checkout" method="get">
               <a href="DisplayShoppingCart.jsp"> Cancel </a>
               <input type="submit" name="confirm" value="Confirm">
                </form>
               

         
    </body>
</html>
