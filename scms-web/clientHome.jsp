<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Homepage</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>










<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: 'Andika New Basic', sans-serif;}
body, html {
  height: 100%;
  background-color:#e8e8e8;
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


.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1600px) {
  .bgimg-1, .bgimg-2, .bgimg-3 {
    background-attachment: scroll;
    min-height: 100px;
  }
}
</style>
</head>
<body bgcolor = black >
	



	<!--Logout cache clearance-->
	<%
		response.setHeader("cache-control","no-cache,no-store,must-revalidate");
	
		if(session.getAttribute("email")==null)
		{
			response.sendRedirect("loginClient.jsp");
		}
	%>





<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <a href="#home" class="w3-bar-item w3-button"> </i>HOME</a>
  	<a href="#Aboutus" class="w3-bar-item w3-button w3-hide-small">ABOUT US</a>
    <a href="#portfolio" class="w3-bar-item w3-button w3-hide-small"></i>ORDER </a>
    <a href="#History" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i>HISTORY</a>
    <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> PRODUCTS</a>
    <form class="w3-bar-item w3-button w3-hide-small" action="logoutClientservlet">
	<input type="submit" value=LOGOUT></form>
 </div>

<br>
<br>
<br>


<!-- First Parallax Image with Logo Text -->

	
	
	
<!--Carousel-->	
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
                <img src="template6.jpg" alt="First Slide" style="width:1100px;height:700px;"><!--Image 1-->
            </div>
            <div class="carousel-item">
                <img src="template3.jpg" alt="Second Slide"style="width:1100px;height:700px;"><!--Image 2-->
            </div>
            <div class="carousel-item">
                <img src="template7.png" alt="Third Slide"style="width:1100px;height:700px;"><!--Image 3-->
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









<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64" id="about">

  <div class="w3-row">
    
   

<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-64" id="portfolio">

  


<!-- ELECTRONICS -->
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"> <span class="w3-hide-small">ELECTRONICS</span></span>
  </div>
</div>




  <!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src="iphones.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Intel 9th Gen Core i3/4GB RAM/ 1TB HDD/DOS/Black">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Lenovo V530s Tower Desktop</i></a>
    </div>




    

    <div class="w3-col m3">
      <img src="Honor 9A" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Phantom Blue, 3GB RAM, 64GB Storage">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Honor 9A</i></a>
    </div>



    <div class="w3-col m3">
      <img src="TP-Link Deco E4 Whole Home Mesh Wi-Fi System.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Seamless Roaming(AC1200), Work with Amazon Echo/Alexa and Parent Control Router">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">TP-Link Wi-Fi System</i></a>
    </div>





    <div class="w3-col m3">
      <img src="echodot.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="All-new Amazon Echo Dot (4th Gen)">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Echo Dot</i></a>
    </div>



    <div class="w3-col m3">
<button class="w3-button w3-padding-large w3-dark-grey" style="margin-top:64px">LOAD MORE</button>
  </div>

    </div>
  

    


  




<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-64" id="portfolio">
  

	
	
	
	
	
<!-- CLOTHING -->
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"> <span class="w3-hide-small">CLOTHING</span></span> 
  </div>
</div>



  <!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src="pant.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Fit Type: Slim,Fabric: Cotton,Lycra Styling">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Fashion Men's Jeans</i></a>
    </div>




    

    <div class="w3-col m3">
      <img src="toys.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Care Instructions: Machine Wash,Fit Type: Skinny Zip fly with button closure">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Inkast Denim Co.Jeans</a>
    </div>



    <div class="w3-col m3">
      <img src="bed.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Fit Type: Regular Fit Fabric: 100% Cotton Style: Hooded Neck Style: Hood">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Fenoix Men's T-Shirt</a>
    </div>





    <div class="w3-col m3">
      <img src="handbag.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Closure: Lace-Up Shoe Width: Medium Material - Patent Leather">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Shozie Formal Shoes</a>
    </div>




    </div>
  



    <div class="w3-col m3">
<button class="w3-button w3-padding-large w3-dark-grey" style="margin-top:64px">          LOAD MORE</button>
  </div>
</div>



  
<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-64" id="portfolio">
  




	
<!-- Furniture  -->
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"> <span class="w3-hide-small">FURNITURE</span></span>
  </div>
</div>


  <!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src="clock.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Product Dimensions: Length (209 cm) ,Width (159.6 cm) ,Height (90.3 cm). Bed size: Queen">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Riva Queen Bed</i></a>
    </div>


    <div class="w3-col m3">
      <img src="tupperware.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Product Dimensions: Length (212.8 cm) ,Width (165 cm) ,Height (93 cm)">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Spacewood Queen Size Bed</i></a>
    </div>



    <div class="w3-col m3">
      <img src="vase.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Product dimension in cm Package 1 = Length (180) Breadth (81.28)height (71.12) sitting height (40.64)">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">Adorn Sofa Gery)</i></a>
    </div>





    <div class="w3-col m3">
      <img src="plant.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Primary Material: Wood, secondary material :Foam Upholstery Material: Fabric : color : Blue & Black;Easy to use.">

      <a href="ShowProductCatalog.jsp" class="w3-bar-item w3-button">adorn three seater </i></a>
    </div>



    <div class="w3-col m3">
<button class="w3-button w3-padding-large w3-dark-grey" style="margin-top:64px">          LOAD MORE</button>
  </div>

    </div>
  

    





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







<!--Contact Section) -->
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
 

	
	
	
	
	
<!--Script-->	
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
</script>

</body>
</html>
