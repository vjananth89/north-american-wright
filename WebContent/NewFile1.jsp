<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css"/>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/css/bootstrapvalidator.css"/>
    <link href="https://s3-us-west-2.amazonaws.com/ananth89/freelancer.css" rel="stylesheet"> 
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" type="text/css" rel="stylesheet"> 


    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
    <script src="http://ziplookup.googlecode.com/git/zip-lookup/zip-lookup.min.js" type="text/javascript" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
<style>
.navbar-custom {
	background-color:#004c93;
    color:#ffffff;
  }
  
.navbar-custom .navbar-nav > li > a {
  	color:#fff;
  	
}
.navbar-custom .navbar-nav > .active > a, .navbar-nav > .active > a:hover, .navbar-nav > .active > a:focus {
    color: #00008B;
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

    <footer class="footer">
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
</body>
</html>
