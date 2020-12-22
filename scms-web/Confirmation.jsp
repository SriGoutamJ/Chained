
<%@page contentType="text/html" pageEncoding="UTF-8" import="Api.Shipping"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order placed</title>
<style>
.flex-container {
  display: flex;
  background-color: white;
}

.flex-container > div {
  background-color: white;
  margin: 10px;
  padding: 20px;
  font-size: 30px;
}
</style>
    </head>
    <body bgcolor=#e6e6e6>
        <center><h1>Order Submitted Successfully!</h1></center>
<p>
<br>
<div class="flex-container">
<center><h2>Thank you for your order. Your order confirmation number is:
<br>
<pre>
<%=request.getParameter("confirmationNumber")%>
</pre>
<p>
    Please use this number when calling to check on your order.<br/>
    <%
        session.removeAttribute("userdetails");
        session.setAttribute("ShoppingCart", null);
       
    %></h2>
</center>
</div>
<h2>
    <a href="clientHome.jsp">Go To Home - All Products</a>
</h2>
    </body>
</html>
