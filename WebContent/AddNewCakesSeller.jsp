<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Cakes</title>


    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css"/>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/css/bootstrapvalidator.css"/>
    <link media="screen" rel="stylesheet" href="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers.css"/>
    <link media="screen" rel="stylesheet" href="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers.min.css"/>
    
    
     <!-- Include the FontAwesome CSS if you want to use feedback icons provided by FontAwesome -->
    <!--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />-->

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
    <script src="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers.js"></script>
    <script src="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers.min.js"></script>
    <script src="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers-phone.js"></script>
    
    

</head>
<body>

<% 
if(session.getAttribute("currentSessionType").toString().equals("buyer") )
		{
	String user = session.getAttribute("currentSessionUser").toString();
	String type = session.getAttribute("currentSessionType").toString();
	%>
         
    

           
	<%}
else
{
	String user1 = session.getAttribute("currentSessionUser").toString();
	String type2 = session.getAttribute("currentSessionType").toString();
		%>

<nav class="navbar navbar-custom">
        <div class="container-fluid">
          <div class="navbar-header">
            
            <a class="navbar-brand" href="#">UAlbany Cake Shop</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="welcome1.jsp">Home</a></li>
              <li  ><a href="SearchCakesSeller.jsp"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Search Cakes &#8482;</a></li>
              <li class="active"><a href="AddNewCakesSeller.jsp"><span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span> Add Cakes &#8482;</a></li>
       <li><a href="#">|</a></li> 
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
              <li class="active" style="color:#fff;"><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <%= user1%></a></li>
              
             <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
          
            
            <!-- nav bar completion -->
      
    <br/> <br/><br/>

    <div class="container">
        <div class="row">
        <div class="page-header">
            <h1 align="center">Add New Cakes</h1>
			<h5 align="center">Enter your Cake information below</h5>
        </div>
<!-- 
//<% 

//	String user = session.getAttribute("currentSessionUser").toString();
	//String type = session.getAttribute("currentSessionType").toString();
	//%>	 -->



        <div class="col-lg-8 col-lg-offset-2">
            <form id="defaultForm" class="form-horizontal" action="AddNewCakesSeller"  method ="GET">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Image File Name</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="image" placeholder="Hint: Same as Cake Name" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Cake Name</label>
                    <div class="col-lg-5">
                     <input type="text" class="form-control" name="cakeName"  /> 
                     
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Cake ID</label>
                    <div class="col-lg-5" >
                     <input type="text" class="form-control" name="cakeID" placeholder="eg. CK98762197836"/> 
                       
                    </div>
                </div>
				
				
                <div class="form-group">
                    <label class="col-lg-3 control-label">Seller Name</label>
                    <div class="col-lg-5" style="color:Blue;">
                        <input style="color:Blue" type="text" class="form-control" name="seller" value="<%=user1 %>" />
                    </div>
                </div>
				
				 <div class="form-group">
                    <label class="col-lg-3 control-label">Cost</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="cost" placeholder="Enter cost of this cake" />
                    </div>
                </div>
                
             

                <div class="form-group">
                    <div class="col-lg-9 col-lg-offset-3">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
  <%} %>
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


<script type="text/javascript">
$(document).ready(function() {
    $('#defaultForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	image: {
                validators: {
                    identical: {
                        field: 'cakeName',
                        message: 'Image and Cake Name should be same'
                    }
                ,
                notEmpty: {
                    message: 'The cakeID field is required and cannot be empty'
                },
				stringLength: {
                    min: 4,
                    message: 'must be at least 4 characters'
                }
                }},
                
            cakeName: {
                validators: {
                    identical: {
                        field: 'image',
                        message: 'Image and Cake Name should be same'
                    },notEmpty: {
                        message: 'Selling a cake with no name is not possible :-)'
                    },
					stringLength: {
                        min: 4,
                        message: 'Cake Name is too short!'
                    }
                }
            }
        ,
              cakeID: {
                message: 'Incorrect Cake ID',
                validators: {
                    notEmpty: {
                        message: 'The cakeID field is required and cannot be empty'
                    },
					stringLength: {
                        min: 4,
                        message: 'must be at least 4 characters'
                    },
                    regexp: {
                        regexp:/^(CK[0-9]*)$/,
                        message: 'Format not acceptable! Enter something like --> CK658765987'
                    }
                
                  
                }
            },
            cost: {
                message: 'Incorrect Cost Value',
                validators: {
                    notEmpty: {
                        message: 'This field cannot be empty'
                    },
					stringLength: {
                        min: 1,
                        max: 2,
                        message: 'Cost should be a number between 1 and 99'
                    },
                    regexp: {
                        regexp:/^([0-9]*)$/,
                        message: 'Only numbers accepted in this field'
                    }
                
                  
                }
            }
			
		
    }
});
});
</script>
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
