<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Username Check</title>
<script
src="https://s3-us-west-2.amazonaws.com/ananth89/jquery-1.9.1.min.js"></script>
<script
src="https://s3-us-west-2.amazonaws.com/ananth89/jquery-migrate-1.2.1.js"></script>
<script
src="https://s3-us-west-2.amazonaws.com/ananth89/jquery-ui-1.10.3-custom.min.js"></script>
</head>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css"/>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/css/bootstrapvalidator.css"/>
<body>

        <div class="container">
        <div class="row">
        <div class="page-header">
            <h1>First...</h1>
			<h3>Let's first find a good username for you!
			 </h3>
        </div>

        <div class="col-lg-8 col-lg-offset-2">
            <form id="signupform" class="form-horizontal" action="Register.jsp" >
                <div class="form-group">
                    <label class="col-lg-3 control-label">Please type a user name below</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" id="username" name="username" />
                    </div>
                    
                    <div id="msg"></div>
                </div>
                
                <div class="form-group">
                    <div class="col-lg-9 col-lg-offset-3">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div></div>
                </form>
                </div>
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
        

<!-- below jquery things triggered on onblur event and checks the username availability in the database -->
<script type="text/javascript">
$(document).ready(function() {
$("#username").live("blur", function(e) {
$('#msg').hide();
if ($('#username').val() == null || $('#username').val() == "") {
$('#msg').show();
$("#msg").html("Username is required field.").css("color", "red");
} else {
$.ajax({
type: "POST",
url: "http://localhost:8080/ualbany-cake-shop/AuthServ",
data: $('#signupform').serialize(),
dataType: "html",
cache: false,
success: function(msg) {
$('#msg').show();
$("#msg").html(msg);
},
error: function(jqXHR, textStatus, errorThrown) {
$('#msg').show();
$("#msg").html(textStatus + " " + errorThrown);
}
});
}
});
});
</script>
</body>
</html>