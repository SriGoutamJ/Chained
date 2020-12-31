
<%@page contentType="text/html" pageEncoding="UTF-8" import="Api.Shipping"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order placed</title>
    </head>
    <body>
        <h1>Order Submitted Successfully!</h1>
<p>

Thank you for your order. Your order confirmation number is:
<br>
<pre>
<%=request.getParameter("confirmationNumber")%>
</pre>
<p>
    Please use this number when calling to check on your order.<br/>
    <%
        session.removeAttribute("userdetails");
        session.setAttribute("ShoppingCart", null);
       
    %>
    <a href="clientHome.jsp">Go To Home - All Products</a>

    </body>
</html>
