
<%@ page language="java" import="java.util.*" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" %>

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
	<link href="img/apple-touch-icon-57-precomposed.png" rel="apple-touch-icon-precomposed" />
	<link href="img/favicon.png" rel="shortcut icon" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script><script src="http://cdnjs.cloudflare.com/ajax/libs/script.js/2.5.7/script.min.js"></script>
	<link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css" rel="stylesheet" />
	<style type="text/css">
	</style>
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
.jumbotron {
    margin-bottom: 0px;
   <!-- background-image: url(../img/jumbotronbackground.jpg); -->
    background-position: 0% 25%;
    background-size: cover;
    background-repeat: no-repeat;
    background-color:#bbb;
    color: #333;
   <!-- text-shadow: black 0.3em 0.3em 0.3em; -->
}

footer .footer-below {
    padding: 25px 0;
    background-color: #233140;
    color: #fff;
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

html, body {
  height: 100%;
}

#wrap {
  min-height: 100%;
}

#main {
  overflow:auto;
  height: 100%;
  
}

.footer {
  position: relative;
  margin-top: -150px; /* negative value of footer height */
  height: 200px;
  clear:both;
  padding-top:40px;
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
</head>
  <body>

         
       <div id="wrap">
  <div id="main" class="container clear-top">  
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
    <button type="hidden" class="btn btn-default navbar-btn" style="background-color:yellow; color:blue;"name="param2" value="param2Vavlue">
    <a style="color:#00008B;" href="javascript:document.submitForm1.submit()"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> View Cart</a></button>
</form></li>
         
         
         <li><a href="#"> | </a></li>
    
    <li><form align="right" name="submitForm2" method="GET" action="#">
    <button type="hidden" class="btn btn-default navbar-btn" name="param2" value="param2Vavlue">
    <a style="color:#00008B;" href="javascript:document.submitForm1.submit()"><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span> View Reviews</a></button>
</form></li>  


         <li><a href="#">    </a></li>
         <li><a href="#">    </a></li>
         <li><a href="#">    </a></li>
   
            <ul class="nav navbar-nav navbar-right">
               <li>           <form align="right" name="submitForm" method="GET" action="OrderHistory">
    <button type="button" class="btn btn-default navbar-btn" name="param1" value="param1Value">
    <a style="color:#00008B;" href="javascript:document.submitForm.submit()"><span class="glyphicon glyphicon-cloud" aria-hidden="true"></span> Your Orders</a></button></form></li>
<li><a href="#">|</a></li>
              <li class="active"><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <%= user%></a></li>
              
              <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
      
      <%}
else
{
	String user1 = session.getAttribute("currentSessionUser").toString();
	String type2 = session.getAttribute("currentSessionType").toString();
		%>
		
		Oops! You're not supposed to be here!
		
		<% } %>
	
      <!-- Main component for a primary marketing message or call to action -->
 	
 <br/> <br/>
 

             <div class="panel panel-default" >
    <h2 align="center">Confirm You Order</h2>
    </div>
  <table align="center" class="table" syle="width:1300px">
            <thead>
              <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td text-align="right" style="width:700px; background-color:#fff;"></td>
                <td text-align="right" style="width:100px; size:30px; background-color:#fff;"><span class="glyphicon glyphicon-picture" aria-hidden="true"></span></td>
                <td text-align="center" style="width:500px; background-color:#fff;">Image</td>
                <td text-align="center" style="width:600px; background-color:#fff;"> <img src="https://s3-us-west-2.amazonaws.com/ananth89/<%=request.getParameter("image")%>" height="100" width="100"/></td>
                
              </tr>
              <tr>
                <td text-align="right" style="width:700px; background-color:#fff;"></td>
                <td text-align="right" style="width:100px; background-color:#fff;"><span class="glyphicon glyphicon-tag" aria-hidden="true"></span></td>
                <td>Cake Name</td>
                <td> <%=   request.getParameter("cakeName") %></td>
             
              </tr>
              <tr>
                <td text-align="right" style="width:700px; background-color:#fff;"></td>
                <td text-align="right" style="width:100px; background-color:#fff;"><span class="glyphicon glyphicon-barcode" aria-hidden="true"></span></td>
                <td>Cake Id</td>
                 <td> <%=   request.getParameter("cakeId") %></td>
               
              </tr>
               <tr>
                <td text-align="right" style="width:700px; background-color:#fff;"></td>
                <td text-align="right" style="width:100px; background-color:#fff;"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></td>
                <td>Seller</td>
                 <td> <%=   request.getParameter("seller") %></td>
              </tr>
              <tr>
                <td text-align="right" style="width:700px; background-color:#fff;"></td>
                <td text-align="right" style="width:100px; background-color:#fff;"><span class="glyphicon glyphicon-usd" aria-hidden="true"></span></td>
                <td>Cost</td>
                 <td> <%=   request.getParameter("cost") %></td>
              </tr>
              
                <tr>
               <td text-align="right" style="width:700px; background-color:#fff;"></td>
                <td text-align="right" style="width:100px; background-color:#fff;"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span></td>
                <td>Quantity</td>
                 <td> <%=   request.getParameter("quantity") %></td>
              </tr>
              
              <tr>
                <td text-align="right" style="width:700px; background-color:#fff;"></td>
                <td text-align="right" style="width:100px; background-color:#fff;"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></td>
                <td>Your Unique Confirmation ID</td>
                 <td><code style="color:green"> <%=   request.getParameter("stripeToken") %> </code></td>
                 <br>
              </tr>
              
               <tr>
                <td></td>
                <td></td>
                 <td></td>
              </tr>
              
          
              
              
            </tbody>
          </table>
          
           <div class="panel panel-default" >
    <h2 align="center"><form name="submitForm" method="GET" action="ConfirmOrder">
    <input type="hidden" name="image" value="<%=request.getParameter("image")%>" />
    <input type="hidden" name="cakeName" value="<%=request.getParameter("cakeName")%>">
     <input type="hidden" name="cakeId" value="<%=request.getParameter("cakeId")%>">
      <input type="hidden" name="seller" value="<%=request.getParameter("seller")%>">
      <input type="hidden" name="cost" value="<%=request.getParameter("cost")%>">
      <input type="hidden" name="quantity" value="<%=request.getParameter("quantity")%>">
       <input type="hidden" name="conf_id" value="<%=request.getParameter("stripeToken")%>">
       <input type="hidden" name="orderstatus" value="In Process">
    <input type="submit" class="btn btn-success" value="Confirm Your Order" />
</form> <a class="btn btn-danger" href="OrderCanceled.jsp">Cancel Your Order</a></h2>
          
          
        </div>
		
		
          
		

 	
 	
    </div> <!-- /container -->

           
	
   
   
          
    
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
    
    
 
});</script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    

  </body>
</html>

