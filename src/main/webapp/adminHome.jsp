<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>-->
<!DOCTYPE html>

<html>
	
<head>

<meta charset="ISO-8859-1">

<title>Home</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>

/*
body,h1,h2,h3,h4,h5,h6 {
  font-family: 'Andika New Basic', sans-serif;
}
*/

body, html {
  height: 100%;
  background-color:#e6e6e6;
  border-color: black;
  color: black;
  background-size: 50px;
  line-height: 2;  
}

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
  background-attachment: fixed;
  background-position: absolute;
  background-repeat: no-repeat;
  background-size: cover;
}


.w3-wide{
  letter-spacing: 10px;
}
	
.w3-hover-opacity {
  cursor: pointer;
}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1600px) {
  .bgimg-1, .bgimg-2, .bgimg-3 {
    background-attachment: scroll;
    min-height: 100px;
  }
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
  padding: 11px 16px;
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
  padding: 11px 16px;
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
  padding: 11px 22px;
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
<%
		response.setHeader("cache-control","no-cache,no-store,must-revalidate");
	
		if(session.getAttribute("admin")==null)
		{
			response.sendRedirect("loginAdmin.html");
		}
%>

	
<!--Admin NavBar-->
<div class="navbar">
  <a href="adminHome.jsp">Home</a>
  <a href="AboutUsAdmin.html">About Us</a>
  <a href="DealerDetails.jsp">Dealers</a>
  <a href="ActiveClients.jsp">Active Clients</a>
  <div class="dropdown">
  <button class="dropbtn" onclick="myFunction()">Fulfillment
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown">
    <a href="Account.jsp">Accounts</a>
    <a href="LogisticsDisplay.jsp">Logistics</a>
  </div>
  </div> 

  
   <form  action="logoutAdminservlet">
	<input type="submit" value=LOGOUT>
   </form>
</div>

<br>




<!-- First Parallax Image with Logo Text -->


<br>


<div class="container-lg my-3">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for carousel items -->
        <br>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="template6.jpg" alt="First Slide" style="width:1100px;height:700px;">
            </div>
            <div class="carousel-item">
                <img src="template3.jpg" alt="Second Slide"style="width:1100px;height:700px;">
            </div>
            <div class="carousel-item">
                <img src="template7.png" alt="Third Slide"style="width:1100px;height:700px;">
            </div>
        </div>
        <!-- Carousel controls -->
        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</div>



<!-- Container (Active Clients Section) -->
<div class="w3-content w3-container w3-padding-64" id="activeclients">

<!-- CLIENTS -->
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"> <span class="w3-hide-small">ACTIVE CLIENTS</span></span>
  </div>
</div>
<br><br>
<!-- Responsive Grid.-->
  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src="customericon.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">

      <a href="ActiveClients.jsp" class="w3-bar-item w3-button">CLIENT 1</a>
    </div>

   <div class="w3-col m3">
      <img src="customericon.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" >

      <a href="ActiveClients.jsp"" class="w3-bar-item w3-button">CLIENT 2</a>
    </div>

   <div class="w3-col m3">
      <img src="customericon.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">

      <a href="ActiveClients.jsp"" class="w3-bar-item w3-button">CLIENT 3</a>
    </div>

   <div class="w3-col m3">
      <img src="customericon.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">

      <a href="ActiveClients.jsp"" class="w3-bar-item w3-button">CLIENT 4</a>
    </div>

<!-- Load More -->
<div class="w3-col m3">
<button class="w3-button w3-padding-large w3-dark-grey" style="margin-top:64px">
    <a href="ActiveClients.jsp"">LOAD MORE</a>
</button>
  </div>

    </div>
  

<!-- --------------------------------------------------------------------------------------------------------------------------------------------- -->


<!-- Container (Dealers Section) -->
<div class="w3-content w3-container w3-padding-64" id="dealers">
  

<!-- DEALERS -->
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"> <span class="w3-hide-small">DEALERS</span></span> 
  </div>
</div>
<br><br>
<!-- Responsive Grid -->
  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src="dealerimage.png" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">

      <a href="DealerDetails.jsp" class="w3-bar-item w3-button">DEALER A</a>
    </div>

   <div class="w3-col m3">
      <img src="dealerimage.png"" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">

      <a href="DealerDetails.jsp" class="w3-bar-item w3-button">DEALER B</a>
    </div>

   <div class="w3-col m3">
      <img src="dealerimage.png"" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">

      <a href="DealerDetails.jsp" class="w3-bar-item w3-button">DEALER C</a>
    </div>

   <div class="w3-col m3">
      <img src="dealerimage.png"" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">

      <a href="DealerDetails.jsp" class="w3-bar-item w3-button">DEALER D</a>
    </div>
    </div>

<!-- Load More -->
    <div class="w3-col m3">
        <button class="w3-button w3-padding-large w3-dark-grey" style="margin-top:64px">
            <a href="DealerDetails.jsp">LOAD MORE</a>
        </button>
  </div>
</div>

<!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
  
<br><br><br>

    
 
<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-large w3-black w3-display-topright" title="Close Modal Image"><i class="fa fa-remove"></i></span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>

<!-- Third Parallax Image with Portfolio Text -->
<div class="bgimg-3 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
     
  </div>
</div>

<!-- Container (Contact Section) -->
<div class="w3-content w3-container w3-padding-64" id="contact">
 
  <div class="w3-row w3-padding-32 w3-section">
    <div class="w3-col m4 w3-container">
     
    </div>
    <div class="w3-col m8 w3-panel">
      <div class="w3-large w3-margin-bottom">
        <i class="fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Bengaluru Karntaka <br>
        <i class="fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Phone: +91 XXXXXXXXX<br>
        <i class="fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Email: dealermail@mail.com<br>
      </div>
     
      
   
  </div>
</div>



<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
 
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  
</footer>





 
<script>
// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

// Change style of navbar on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    var navbar = document.getElementById("myNavbar");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
    } else {
        navbar.className = navbar.className.replace(" w3-card w3-animate-top w3-white", "");
    }
}


<!--NavBar DropDown script-->
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("myDropdown");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}

</script>

</body>
</html>
