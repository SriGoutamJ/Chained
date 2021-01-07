
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.io.*" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Bills(Order History)</title>
    
<style>

body{
  background: #e6e6e6;
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

<br><br>      
        
        <%
            String email = (String) session.getAttribute("email");
            int orders = 0;
            File file = new File("/home/vidya/Downloads/SCMSDem/orders.txt"); //set path of file location
            FileReader fileReader = null;
            try {
                String temp;
                fileReader = new FileReader(file);
                BufferedReader bufferedReader = new BufferedReader(fileReader);
                while ((temp = bufferedReader.readLine()) != null) {
                    if(temp.equals("Email: "+email)){
                       
                        temp = bufferedReader.readLine();
                        if(temp.startsWith("Status: Delivered")){
                            orders = orders + 1;
                            do{ 
                                 out.println(temp);
                                 temp = bufferedReader.readLine();
                                 out.println("<br>");
                            }while(! temp.equals("*****"));
                            out.println("*****");
                        }
                       
                        out.println("<br><br>");
                        
                    }
                 
                }
                bufferedReader.close();
                
                if(orders == 0){
                    out.println("No order delivered yet!!!");
                }
            }
           catch (FileNotFoundException ex) {
           out.println("Data file not found");
        } catch (IOException ex) {
            out.println("Error");
        }
        %>
    </body>
</html>
