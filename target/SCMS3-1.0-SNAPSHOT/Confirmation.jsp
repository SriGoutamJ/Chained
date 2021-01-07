
<%@page contentType="text/html" pageEncoding="UTF-8" import="Api.Shipping"%>
<!Doctype HTML>
<html>
    <head>


<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #e6e6e6;
}


.h2 {
  font-family: "Lucida Console", "Courier New", monospace;
}



a{
  color:black;
text-decoration:none;}




.demo h1 
{
    padding-right: 10px;
    color: #0e49b5;
    font-size: 1.5em;
}



.demo {
    margin: 1em 0 0.75em;
    padding: 0 0 5px 0;
    color: #6B5344;
    font-weight: normal;
    position: relative;
    text-shadow: 0 2px 0 rgba(255,255,255,0.5);
    font-size: 36px;
    line-height: 40px;
    font-family: 'Carrois Gothic', sans-serif;
}




p {
 font-family: Georgia, "Times New Roman", Times, serif;
 font-size: 30px;
 color: black;
 background-color: #e6e6e6;
}



.centerbutton {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100px;
  
}




.flip-box {
  background-color: transparent;
  width: 300px;
  height: 200px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
}

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: #bbb;
  color: black;
  font-family: "Lucida Console", "Courier New", monospace;
}

.flip-box-back {
  background-color: black;
  color: white;
  transform: rotateY(180deg);
  font-style: italic;
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
    
</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order placed!</title>
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

    
    
    
<div class= "demo">


        <h1><u>Order Submitted Successfully!</u></h1>


        </div>
<p>
 Your order confirmation number is:
<br>


<pre>
<h2><%=request.getParameter("confirmationNumber")%></h2>
</pre>




</p>











<p>
    Please use this number when calling to check on your order.<br/>
  



    <%
        session.removeAttribute("userdetails");
        session.setAttribute("ShoppingCart", null);
       
    %>



  
</p>







<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <h2><br><br>Thank you for your order.</h2>
    </div>
    <div class="flip-box-back">
      <h2><br><br>visit Again!!</h2>
    </div>
  </div>
</div>







<div class="centerbutton">
  <button>
<center><h2>
   
    <a href="clientHome.jsp">Go To Home - All Products</a> </h2> </center></button>
</div>


</div>
</div>







    </body>
</html>
