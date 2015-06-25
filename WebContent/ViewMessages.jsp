<%@ page language="java" import="java.util.*" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Management</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/style.css" rel="stylesheet" />
    <script src="js/html5shiv.js"></script>
  
	<link href="img/apple-touch-icon-144-precomposed.png" rel="apple-touch-icon-precomposed" sizes="144x144" />
	<link href="img/apple-touch-icon-114-precomposed.png" rel="apple-touch-icon-precomposed" sizes="114x114" />
	<link href="img/apple-touch-icon-72-precomposed.png" rel="apple-touch-icon-precomposed" sizes="72x72" />
	<link href="img/apple-touch-icon-57-precomposed.png" rel="apple-touch-icon-precomposed" />
	<link href="img/favicon.png" rel="shortcut icon" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script><script src="http://cdnjs.cloudflare.com/ajax/libs/script.js/2.5.7/script.min.js"></script>
	<link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css" rel="stylesheet" />
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
<% 
if(session.getAttribute("currentSessionType").toString().equals("buyer") )
		{
	String user = session.getAttribute("currentSessionUser").toString();
	String type = session.getAttribute("currentSessionType").toString();
	%>
       <div id="wrap">
  <div id="main" class="container clear-top">  
    

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
          
            <!-- buyer nav bar completion -->
	
      <!-- Main component for a primary marketing message or call to action -->
   
 	 
 	<!--  	<div class="jumbotron"> --> 
 	 	
       
           
	<%}
else
{
	String user1 = session.getAttribute("currentSessionUser").toString();
	String type2 = session.getAttribute("currentSessionType").toString();
		%>
		
		    
    <div class="container">

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
     

       

 <br/> <br/>
 
 <!-- /container -->    
          <%} %>
          
   <div align="center" class="panel panel-default" style="width:1150px;">
    <h2 align="center">UAlbany Cake Shop User List</h2>
  <table align="center" class="table">



<%Iterator itr;%>
<% List data= (List)request.getAttribute("data1");

if(data.size()==0){
	%>
		<h2 align="center">There are no users at this moment</h2>
	<% } else
	{ %>
	<tr>



<td align="center" style="background-color:#004c93; color:#fff;"><b>Name</b></td>
<td align="center" style="background-color:#004c93; color:#fff;"><b>Phone</b></td>
<td align="center" style="background-color:#004c93; color:#fff;"><b>Message</b></td>
<td align="center" style="background-color:#004c93; color:#fff;"><b>Category</b></td>


</tr>
<% 

for (itr=data.iterator(); itr.hasNext(); )
{
%>
<tr>

<td align="center" ><% String username= (String)itr.next();%><%=username%></td>
<td align="center" ><% String userType= (String)itr.next();%><%=userType%></td>
<td align="center" ><% String message= (String)itr.next();%><%=message%></td>
<td align="center" ><% String reason= (String)itr.next();%><%=reason%></td>


</tr>
<%}
}%>

</table>
<br>
<br>
<br>

</h5>

 </div></div>
 	
 	
    </div> <!--  </div>  /container -->
          
          
          
    
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
