<!DOCTYPE html>
<html lang="en">
  <head>
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<title>UAlbany Cake Shop | Home</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" /><!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /--><!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /--><!--script src="js/less-1.3.3.min.js"></script--><!--append â€˜#!watchâ€™ to the browser URL, then refresh the page. -->
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/style.css" rel="stylesheet" /><!-- HTML5 shim, for IE6-8 support of HTML5 elements --><!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]--><!-- Fav and touch icons -->
	<link href="img/apple-touch-icon-144-precomposed.png" rel="apple-touch-icon-precomposed" sizes="144x144" />
	<link href="img/apple-touch-icon-114-precomposed.png" rel="apple-touch-icon-precomposed" sizes="114x114" />
	<link href="img/apple-touch-icon-72-precomposed.png" rel="apple-touch-icon-precomposed" sizes="72x72" />
	<link rel="stylesheet" type="text/css" href="style.css" />
	<link href="img/apple-touch-icon-57-precomposed.png" rel="apple-touch-icon-precomposed" />
	<link href="img/favicon.png" rel="shortcut icon" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script><script src="http://cdnjs.cloudflare.com/ajax/libs/script.js/2.5.7/script.min.js"></script>
	<link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css" rel="stylesheet" />
	<style type="text/css">
	</style>
</head>
  <body>
  <div class ="container">
    <div id="container">
  
<% 
if(session.getAttribute("currentSessionType").toString().equals("buyer") )
		{
	String user = session.getAttribute("currentSessionUser").toString();
	String type = session.getAttribute("currentSessionType").toString();
	%>	
 
       <!-- Static navbar for buyer -->
      <nav class="navbar navbar-custom">
        <div class="container-fluid">
          <div class="navbar-header">
            
            <a class="navbar-brand" style="color:Orange;">UAlbany Cake Shop</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li ><a href="welcome1.jsp">Home</a></li>
              <li class="active" ><a href="SearchCakesbyName.jsp"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> SearchCakes &#8482;</a></li>
       
          <li><a href="#"> | </a></li>
    
    <li><form align="right" name="submitForm1" method="GET" action="ViewCart">
    <button type="hidden" class="btn btn-default navbar-btn" style="background-color:yellow; color:blue;"name="param1" value="param1Vavlue">
    <a style="color:#00008B;" href="javascript:document.submitForm1.submit()"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> View Cart</a></button>
</form></li>
         
         
         <li><a href="#"> | </a></li>
       
    
    <li><form align="right" name="submitForm2" method="GET" action="ViewReviews">
    <button type="hidden" class="btn btn-default navbar-btn" name="param2" value="param2Vavlue">
    <a style="color:#00008B;" href="javascript:document.submitForm2.submit()"><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span> View Reviews</a></button>
</form></li>  


         <li><a href="#">    </a></li>
         <li><a href="#">    </a></li>
         <li><a href="#">    </a></li>
   
            <ul class="nav navbar-nav navbar-right">
               <li>           <form align="right" name="submitForm3" method="GET" action="OrderHistory">
    <button type="button" class="btn btn-default navbar-btn" name="param2" value="param3Value">
    <a style="color:#00008B;" href="javascript:document.submitForm3.submit()"><span class="glyphicon glyphicon-cloud" aria-hidden="true"></span> Your Orders</a></button></form></li>
<li><a href="#">|</a></li>
              <li class="active"><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <%= user%></a></li>
              
              <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
          
            <!-- buyer nav bar completion -->
            
            
            
	   <div class="panel panel-success">
                <div class="panel-heading">
                  <h4 class="panel-title">Welcome <b><%= user%></b> You are successfully logged in</h4>
                </div>
     </div>
      <!-- Main component for a primary marketing message or call to action -->

 	
 	<div class="jumbotron">
        <h1 align="center">Welcome to UAlbany Cake Shop</h1>
        <p align="center">UAlbany Cake Shop is a great place to buy cakes. We make sure you have the best cake shopping experience ever! 
         We provide you convenient searching options, easy payment methods and importantly, a wide variety of cakes!</p>
        <p align="center"> <a  class="btn btn-lg btn-primary" href="SearchCakesbyName.jsp" role="button">Start Searching!</a>
        </p>
      </div>
    </div> <!-- /container -->
    <!--  row content starts -->
    <br><br>
    <div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="	
https://s3-us-west-2.amazonaws.com/ananth89/chocolate1" alt="...">
      <div class="caption">
        <h3>Chocolate1</h3>
        <p>We sell the best Chocolate cake in the Capital Region! Just search for Strawberry when you use our "Search Cakes" &#8482; feature</p>
       
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="	
https://s3-us-west-2.amazonaws.com/ananth89/strawberry4" alt="...">
      <div class="caption">
        <h3>Strawberry4</h3>
        <p>We think you should try our Strawberry Cakes too! Just search for Strawberry when you use our "Search Cakes" &#8482; feature</p>
        
      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="	
https://s3-us-west-2.amazonaws.com/ananth89/infosec.jpg" alt="...">
      <div class="caption">
        <h3>Secure!</h3>
        <p>We value your security and will never store any of our payment information in our databases. Feel free to read our <a href="Privacy.jsp" >Privacy Policy</a></p>
      </div>
    </div>
  </div>
  </div>
  <!-- Row ends here -->
  
  <footer>
    <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div align="center" class="col-lg-12">
                         &copy; Lab 3 Team 4
                    </div>
                </div>
            </div>
        </div>
</footer>   

           
	<%
	}
else if(session.getAttribute("currentSessionType").toString().equals("seller"))
{
	String user1 = session.getAttribute("currentSessionUser").toString();
	String type2 = session.getAttribute("currentSessionType").toString();
		%>
 <div class ="container-full">
    <div id="container">
    
    
      <!-- Seller navbar starts here -->
      <nav class="navbar navbar-custom">
        <div class="container-fluid">
          <div class="navbar-header">
            
            <a class="navbar-brand" href="#">UAlbany Cake Shop</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="welcome1.jsp">Home</a></li>
              <li  ><a href="SearchCakesSeller.jsp"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Search Cakes &#8482;</a></li>
              <li><a href="AddNewCakesSeller.jsp"><span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span> Add Cakes &#8482;</a></li>
        
        <li><form align="right" name="submitForm1" method="GET" action="ViewOrdersSeller">
    <button type="hidden" class="btn btn-default navbar-btn" style="background-color:yellow; color:blue;" name="param2" value="param2Vavlue">
    <a style="color:#00008B;" href="javascript:document.submitForm1.submit()"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>View Orders</a></button>
</form></li> 
<li><a href="#">|</a></li>
    <li>           <form align="right" name="submitForm" method="GET" action="ViewReviewsSeller">
    <button type="button" class="btn btn-default navbar-btn" name="param1" value="param1Value">
    <a style="color:#00008B;" href="javascript:document.submitForm.submit()"><span class="glyphicon glyphicon-cloud" aria-hidden="true"></span> View Reviews</a></button></form></li>

            
         <li><a href="#">    </a></li>
         <li><a href="#">    </a></li>
         <li><a href="#">    </a></li>
   
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span><%= user1%></a></li>
              
              <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
          
            <!-- nav bar completion -->
      

      		   <div class="panel panel-success">
                <div class="panel-heading">
                  <h4 class="panel-title"><strong>Welcome <b><%= user1%></b></strong> You are successfully logged in</h4>
                </div>
     </div>
     
<!-- Main component for a primary marketing message or call to action -->
 	<div class="jumbotron">
        <h1 align="center">Welcome <b>seller</b></h1>
        <p align="center">UAlbany Cake Shop is a great place to buy cakes. We make sure you have the best cake shopping experience ever!</p>
        <p align="center"> <a class="btn btn-lg btn-primary" href="Search" role="button">Start Searching!</a>
        </p>
      </div>
      
       <!--  row content starts -->
    <br><br>
    <div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="	
https://s3-us-west-2.amazonaws.com/ananth89/chocolate1" alt="...">
      <div class="caption">
        <h3>Chocolate1</h3>
        <p>We sell the best Chocolate cake in the Capital Region! Just search for Strawberry when you use our "Search Cakes" &#8482; feature</p>
       
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="	
https://s3-us-west-2.amazonaws.com/ananth89/strawberry4" alt="...">
      <div class="caption">
        <h3>Strawberry4</h3>
        <p>We think you should try our Strawberry Cakes too! Just search for Strawberry when you use our "Search Cakes" &#8482; feature</p>
        
      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="	
https://s3-us-west-2.amazonaws.com/ananth89/infosec.jpg" alt="...">
      <div class="caption">
        <h3>Secure!</h3>
        <p>We value your security and will never store any of our payment information in our databases. Feel free to read our <a href="PrivacyPolicy.html" >Privacy Policy</a></p>
      </div>
    </div>
  </div>
  </div>
  <!-- Row ends here -->
       
	<div id="search">
    	<button type="button" class="close">x</button>
    	<form>
        	<input type="search" value="" placeholder="Enter Seller Name" />
        	<button type="submit" class="btn btn-success">Search</button>
    	</form>
    </div>
 <br/> <br/>
    </div> <!-- /container -->    
          <%}
                else {%>
<!-- Admin navbar starts here -->
      <nav class="navbar navbar-custom">
        <div class="container-fluid">
          <div class="navbar-header">
            
            <a class="navbar-brand" href="#">UAlbany Cake Shop</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="welcome1.jsp">Home</a></li>
              <li  ><a href="#"><span class="glyphicon glyphicon-sea" aria-hidden="true"></span>     </a></li>
              <li><a href="#"><span class="glyphicon glyphicon-arrow-" aria-hidden="true"></span>    </a></li>
              <li><a href="#"><span class="glyphicon glyphicon-arrow-" aria-hidden="true"></span>    </a></li>
              <li><a href="#"><span class="glyphicon glyphicon-arrow-" aria-hidden="true"></span>    </a></li>
              <li><a href="#"><span class="glyphicon glyphicon-arrow-" aria-hidden="true"></span>    </a></li>
        
        
        <li><form align="right" name="submitForm11" method="GET" action="AdminServlet">
    <button type="hidden" class="btn btn-default navbar-btn" style="background-color:yellow; color:blue;" name="param11" value="param11Value">
    <a style="color:#00008B;" href="javascript:document.submitForm11.submit()"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span> User Management</a></button>
</form></li> 
<li><a href="#">|</a></li>
    <li>           <form align="right" name="submitForm12" method="GET" action="ViewMessages">
    <button type="button" class="btn btn-default navbar-btn" name="param12" value="param12Value">
    <a style="color:#00008B;" href="javascript:document.submitForm12.submit()"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> View Messages</a></button></form></li>

            
         <li><a href="#">    </a></li>
         <li><a href="#">    </a></li>
         <li><a href="#">    </a></li>
   
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> admin</a></li>
              
              <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
          
            <!-- Admin nav bar completion -->
            
            
            <!-- Main component for a primary marketing message or call to action -->
 	<div class="jumbotron">
        <h2 align="center">User has been deleted</h2>
        <p align="center">It is nice to have you back in this section!</p>
        
        </p>
      </div>

<%} %>
    
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script> $(function () {
    $('a[href="#search"]').on('click', function(event) {
        event.preventDefault();
        $('#search').addClass('open');
        $('#search > form > input[type="search"]').focus();
    });
    
    $('#search, #search button.close').on('click keyup', function(event) {
        if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
            $(this).removeClass('open');
        }
    });
    
    
    //Do not include! This prevents the form from submitting for DEMO purposes only!
    $('form').submit(function(event) {
        event.preventDefault();
        return false;
    })
});</script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    
    
    <!-- stylesheet for pages begins here -->
    	<style>
.navbar-custom {
	background-color:#004c93;
    color:#ffffff;
  }
  
.navbar-custom .navbar-nav > li > a {
  	color:#fff;
  	
}
.navbar-custom .navbar-nav > .active > a, .navbar-nav > .active > a:hover, .navbar-nav > .active > a:focus {
    color: #fff;
	background-color:#009ee0;
}
      
.navbar-custom .navbar-nav > li > a:hover, .nav > li > a:focus {
    text-decoration:none;
    background-color:#004c93;
}
      
.navbar-custom .navbar-brand {
  	color:#eeeeee;
}
.navbar-custom .navbar-toggle {
  	background-color:#004c93;
}
.navbar-custom .icon-bar {
  	background-color:#004c93;
}

footer h3 {
    margin-bottom: 30px;
}
footer .footer-above {
    padding-top: 5px;
    background-color: #004c93;
}
footer .footer-col {
    margin-bottom: 25px;
}
footer .footer-below {
    padding: 25px 0;
    background-color: #233140;
    color: #fff;
}




.jumbotron {
    margin-bottom: 0px;
   background-image: url(https://s3-us-west-2.amazonaws.com/ananth89/jumbotron_pic);
    background-position: 0% 25%;
    background-size: cover;
    background-repeat: no-repeat;
    background-color:#bbb;
    color: #fff;
   <!-- text-shadow: black 0.1em 0.1em 0.1em; -->
}

#search {
    position: fixed;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    
    -webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;

    -webkit-transform: translate(0px, -100%) scale(0, 0);
	-moz-transform: translate(0px, -100%) scale(0, 0);
	-o-transform: translate(0px, -100%) scale(0, 0);
	-ms-transform: translate(0px, -100%) scale(0, 0);
	transform: translate(0px, -100%) scale(0, 0);
    
    opacity: 0;
}

#search.open {
    -webkit-transform: translate(0px, 0px) scale(1, 1);
    -moz-transform: translate(0px, 0px) scale(1, 1);
	-o-transform: translate(0px, 0px) scale(1, 1);
	-ms-transform: translate(0px, 0px) scale(1, 1);
	transform: translate(0px, 0px) scale(1, 1); 
    opacity: 1;
}

#search input[type="search"] {
    position: absolute;
    top: 50%;
    width: 100%;
    color: rgb(255, 255, 255);
    background: rgba(0, 0, 0, 0);
    font-size: 60px;
    font-weight: 300;
    text-align: center;
    border: 0px;
    margin: 0px auto;
    margin-top: -51px;
    padding-left: 30px;
    padding-right: 30px;
    outline: none;
}
#search .btn {
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: 61px;
    margin-left: -45px;
}
#search .close {
    position: fixed;
    top: 15px;
    right: 15px;
    color: #fff;
	background-color: #428bca;
	border-color: #357ebd;
	opacity: 1;
	padding: 10px 17px;
	font-size: 27px;
}



</style>
<footer class="footer">
    <div class="footer-below navbar-fixed-bottom">
            <div class="container">
                <div class="row">
                    <div align="center" class="col-lg-12">
                         &copy; Lab 3 Team 4
                    </div>
                </div>
            </div>
        </div>
</footer>
   
  
  </body>
</html>

