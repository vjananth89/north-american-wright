
<%@ page language="java" import="java.util.*" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" %>

<html lang="en">
  <head>
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<title>Seller Search Results</title>
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
</head>
  <body>
<% 
if(session.getAttribute("currentSessionType").toString().equals("buyer") )
		{
	String user = session.getAttribute("currentSessionUser").toString();
	String type = session.getAttribute("currentSessionType").toString();
	%>
         
    <div class="container">

     <!-- Static navbar -->
      <nav class="navbar navbar-custom">
        <div class="container-fluid">
          <div class="navbar-header">
            
            <a class="navbar-brand" href="#">UAlbany Cake Shop</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="welcome1.jsp">Home</a></li>
              <li  ><a href="SearchCakesbyName.jsp">Search Cakes By Name</a></li>
              <li><a href="SearchCakesbySeller.jsp">Search Cakes By Seller</a></li>
        
        <li><form align="right" name="submitForm1" method="GET" action="ViewCart">
    <button type="hidden" class="btn btn-default navbar-btn" name="param2" value="param2Vavlue">
    <a href="javascript:document.submitForm1.submit()">View Your Cart</a></button>
</form></li> 
<li><a href="#">|</a></li>
    <li>           <form align="right" name="submitForm" method="GET" action="OrderHistory">
    <button type="button" class="btn btn-default navbar-btn" name="param1" value="param1Value">
    <a href="javascript:document.submitForm.submit()">Order History</a></button></form></li>

                 
   
                 
                 
                </ul>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="#"><%= user%> <span class="sr-only">(current)</span></a></li>
              
              <li><a href="Logout.jsp">Logout</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
            </ul>
            <!-- nav bar completion -->
         
	
      <!-- Main component for a primary marketing message or call to action -->
 	
 <br/> <br/>
 	
 	
    </div> <!-- /container -->

           
	<%}
else
{
	String user1 = session.getAttribute("currentSessionUser").toString();
	String type2 = session.getAttribute("currentSessionType").toString();
		%>
		
		    
    <div class="container">

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
     
<!-- Main component for a primary marketing message or call to action -->



</body>
       
    </div>
 <br/> <br/>
    </div> <!-- /container -->    
          <%} %>
          

 


<div class="panel panel-default" style="width:1150px;margin-left:150px;">
  <table align="center" class="table">

 	<tr>
<td text-align="center" style="background-color:#004c93; color:#fff;"><b>Image</b></td>
<td text-align="center" style="background-color:#004c93; color:#fff;"><b>Cake Name</b></td>
<td text-align="center" style="background-color:#004c93; color:#fff;"><b>Product ID</b></td>
<td text-align="center" style="background-color:#004c93; color:#fff;"><b>Sold By</b></td>
<td text-align="center" style="background-color:#004c93; color:#fff;"><b>Price</b></td>
<td text-align="center" style="background-color:#004c93; color:#fff;"><b></b></td>
</tr>

<%Iterator itr;%>
<%
List data= (List)request.getAttribute("result");
//List data1= (List)request.getAttribute("itemId");
//List data2= (List)request.getAttribute("number");
//List data3= (List)request.getAttribute("seller");
	if(data.size()==0){
	%>
		<h2 align="center">Oops ! The product you are searching for is unavailable</h2>
	<% } else { %>
	

	

<% 


for (itr=data.iterator(); itr.hasNext(); )
{
 %>
	
  <!-- Default panel contents -->
  <!--  <div class="panel-heading">Search Results</div>-->

  <!-- Table -->

	
<tr>
<td text-align="center"><% String image= (String)itr.next();%><img src="https://s3-us-west-2.amazonaws.com/ananth89/<%=image%>" height="130" width="130"/></td>
<td text-align="center"><% String cakeName= (String)itr.next();%><%=cakeName%></td>
<td text-align="center"><% String cakeId= (String)itr.next();%><%=cakeId%></td>
<td text-align="center"><% String seller= (String)itr.next();%><%=seller%></td>
<td text-align="center"><% String cost= (String)itr.next();%><%=cost%></td>
 
<td text-align="center"><form name="submitForm" method="GET" action="ShoppingCart">
<input type="hidden" name="image" value= "<%=image %>">
<input type="hidden" name="cakeName" value="<%=cakeName %>">
<input type="hidden" name="cakeId" value="<%=cakeId %>">
<input type="hidden" name="seller" value="<%=seller %>">
<input type="hidden" name="cost" value="<%=cost %>">
<input type="submit" class="btn btn-success" value="Add to Cart"> </td></form>

</tr>







<%}}
%>

     </table>
 
</div>     
    
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

