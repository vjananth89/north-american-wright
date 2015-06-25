<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>UAlbany Cake Shop | Privacy palicy</title>


    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css"/>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/css/bootstrapvalidator.css"/>

    <!-- Include the FontAwesome CSS if you want to use feedback icons provided by FontAwesome -->
    <!--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />-->

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
    

</head>
<body>

<nav class="navbar navbar-custom navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" style="color:Orange;" href="welcome1.jsp">UAlbany Cake Shop</a>
        </div><!--
        <div id="navbar" class="navbar-collapse collapse">
        </div>
        --><div id="navbar" class="navbar-collapse collapse">
       
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
    <br/> <br/><br/>

    <div class="container">
    
<style>
#ppBody
{
    font-size:11pt;
    width:100%;
    margin:0 auto;
    text-align:justify;
}

#ppHeader
{
    font-family:verdana;
    font-size:21pt;
    width:100%;
    margin:0 auto;
}

.ppConsistencies
{
    display:none;
}
</style>
<% 
if(session.getAttribute("currentSessionType").toString().equals("buyer")||session.getAttribute("currentSessionType").toString().equals("seller")) 
		{
	String user = session.getAttribute("currentSessionUser").toString();
	String type = session.getAttribute("currentSessionType").toString();
	%>	
<a href="welcome1.jsp" ><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back to Home</a>

<% }else{ %>

<a href="LoginPage.jsp" ><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back to Home</a>

<% } %>

<br><br><br>
<div id='ppHeader'> Privacy Policy</div><div id='ppBody'><div class='ppConsistencies'><div class='col-2'>
            <div class="quick-links text-center">Information Collection</div>
        </div><div class='col-2'>
            <div class="quick-links text-center">Information Usage</div>
        </div><div class='col-2'>
            <div class="quick-links text-center">Information Protection</div>
        </div><div class='col-2'>
            <div class="quick-links text-center">Cookie Usage</div>
        </div><div class='col-2'>
            <div class="quick-links text-center">3rd Party Disclosure</div>
        </div><div class='col-2'>
            <div class="quick-links text-center">3rd Party Links</div>
        </div><div class='col-2'></div></div><div style='clear:both;height:10px;'></div><div class='ppConsistencies'><div class='col-2'>
            <div class="col-12 quick-links2 gen-text-center">Google AdSense</div>
        </div><div class='col-2'>
            <div class="col-12 quick-links2 gen-text-center">
                    Fair Information Practices
                    <div class="col-8 gen-text-left gen-xs-text-center" style="font-size:12px;position:relative;left:20px;">Fair information<br> Practices</div>
                </div>
        </div><div class='col-2'>
            <div class="col-12 quick-links2 gen-text-center coppa-pad">
                    COPPA

                </div>
        </div><div class='col-2'>
            <div class="col-12 quick-links2 quick4 gen-text-center caloppa-pad">
                    CalOPPA

                </div>
        </div><div class='col-2'>
            <div class="quick-links2 gen-text-center">Our Contact Information<br></div>
        </div></div><div style='clear:both;height:10px;'></div>
<div class='innerText'>This privacy policy has been compiled to better serve those who are concerned with how their 'Personally identifiable information' (PII) is being used online. PII, as used in US privacy law and information security, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website.<br></div><span id='infoCo'></span><br><div class='grayText'><strong>What personal information do we collect from the people that visit our blog, website or app?</strong></div><br /><div class='innerText'>When ordering or registering on our site, as appropriate, you may be asked to enter your name, email address, mailing address, phone number, credit card information  or other details to help you with your experience.</div><br><div class='grayText'><strong>When do we collect information?</strong></div><br /><div class='innerText'>We collect information from you when you register on our site, place an order  or enter information on our site.</div><br><span id='infoUs'></span><br><div class='grayText'><strong>How do we use your information? </strong></div><br /><div class='innerText'> We may use the information we collect from you when you register, make a purchase, sign up for our newsletter, respond to a survey or marketing communication, surf the website, or use certain other site features in the following ways:<br><br></div><div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> To personalize user's experience and to allow us to deliver the type of content and product offerings in which you are most interested.</div><div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> To allow us to better service you in responding to your customer service requests.</div><div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> To quickly process your transactions.</div><span id='infoPro'></span><br><div class='grayText'><strong>How do we protect visitor information?</strong></div><br /><div class='innerText'>Our website is scanned on a regular basis for security holes and known vulnerabilities in order to make your visit to our site as safe as possible.<br><br></div><div class='innerText'>We use regular Malware Scanning.<br><br></div><div class='innerText'>Your personal information is contained behind secured networks and is only accessible by a limited number of persons who have special access rights to such systems, and are required to keep the information confidential. In addition, all sensitive/credit information you supply is encrypted via Secure Socket Layer (SSL) technology. </div><br><div class='innerText'>We implement a variety of security measures when a user places an order enters, submits, or accesses their information to maintain the safety of your personal information.</div><br><div class='innerText'>All transactions are processed through a gateway provider and are not stored or processed on our servers.</div><span id='coUs'></span><br><div class='grayText'><strong>Do we use 'cookies'?</strong></div><br /><div class='innerText'>We do not use cookies for tracking purposes </div><div class='innerText'><br>You can choose to have your computer warn you each time a cookie is being sent, or you can choose to turn off all cookies. You do this through your browser (like Internet Explorer) settings. Each browser is a little different, so look at your browser's Help menu to learn the correct way to modify your cookies.<br></div><br><div class='innerText'>If you disable cookies off, some features will be disabled that make your site experience more efficient and some of our services will not function properly.</div><br><div class='innerText'>However, you can still place orders .</div><br><span id='trDi'></span><br><div class='grayText'><strong>Third Party Disclosure</strong></div><br /><div class='innerText'>We do not sell, trade, or otherwise transfer to outside parties your personally identifiable information.</div><span id='trLi'></span><br><div class='grayText'><strong>Third party links</strong></div><br /><div class='innerText'>Occasionally, at our discretion, we may include or offer third party products or services on our website. These third party sites have separate and independent privacy policies. We therefore have no responsibility or liability for the content and activities of these linked sites. Nonetheless, we seek to protect the integrity of our site and welcome any feedback about these sites.</div><span id='gooAd'></span><br><div class='blueText'><strong>Google</strong></div><br /><div class='innerText'>Google's advertising requirements can be summed up by Google's Advertising Principles. They are put in place to provide a positive experience for users. https://support.google.com/adwordspolicy/answer/1316548?hl=en <br><br></div><div class='innerText'>We have not enabled Google AdSense on our site but we may do so in the future.</div><span id='calOppa'></span><br><div class='blueText'><strong>California Online Privacy Protection Act</strong></div><br /><div class='innerText'>CalOPPA is the first state law in the nation to require commercial websites and online services to post a privacy policy.  The law's reach stretches well beyond California to require a person or company in the United States (and conceivably the world) that operates websites collecting personally identifiable information from California consumers to post a conspicuous privacy policy on its website stating exactly the information being collected and those individuals with whom it is being shared, and to comply with this policy. -  See more at: http://consumercal.org/california-online-privacy-protection-act-caloppa/#sthash.0FdRbT51.dpuf<br></div><div class='innerText'><br><strong>According to CalOPPA we agree to the following:</strong></div><div class='innerText'>Users can visit our site anonymously</div><div class='innerText'>Once this privacy policy is created, we will add a link to it on our home page, or as a minimum on the first significant page after entering our website.</div><div class='innerText'>Our Privacy Policy link includes the word 'Privacy', and can be easily be found on the page specified above.</div><div class='innerText'><br>Users will be notified of any privacy policy changes:</div><div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> On our Privacy Policy Page</div><div class='innerText'>Users are able to change their personal information:</div><div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> By emailing us</div><div class='innerText'><br><strong>How does our site handle do not track signals?</strong></div><div class='innerText'>We don't honor do not track signals and do not track, plant cookies, or use advertising when a Do Not Track (DNT) browser mechanism is in place. We don't honor them because:<br></div><div class='innerText'><br><strong>Does our site allow third party behavioral tracking?</strong></div><div class='innerText'>It's also important to note that we do not allow third party behavioral tracking</div><span id='coppAct'></span><br><div class='blueText'><strong>COPPA (Children Online Privacy Protection Act)</strong></div><br /><div class='innerText'>When it comes to the collection of personal information from children under 13, the Children's Online Privacy Protection Act (COPPA) puts parents in control.  The Federal Trade Commission, the nation's consumer protection agency, enforces the COPPA Rule, which spells out what operators of websites and online services must do to protect children's privacy and safety online.<br><br></div><div class='innerText'>We do not specifically market to children under 13.</div><span id='ftcFip'></span><br><div class='blueText'><strong>Fair Information Practices</strong></div><br /><div class='innerText'>The Fair Information Practices Principles form the backbone of privacy law in the United States and the concepts they include have played a significant role in the development of data protection laws around the globe. Understanding the Fair Information Practice Principles and how they should be implemented is critical to comply with the various privacy laws that protect personal information.<br><br></div><div class='innerText'><strong>In order to be in line with Fair Information Practices we will take the following responsive action, should a data breach occur:</strong></div><div class='innerText'>We will notify the users via email</div><div class='innerText'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&bull;</strong> Within 7 business days</div><div class='innerText'><br>We also agree to the individual redress principle, which requires that individuals have a right to pursue legally enforceable rights against data collectors and processors who fail to adhere to the law. This principle requires not only that individuals have enforceable rights against data users, but also that individuals have recourse to courts or a government agency to investigate and/or prosecute non-compliance by data processors.</div><span id='canSpam'></span><br><div class='blueText'><strong>CAN SPAM Act</strong></div><br /><div class='innerText'>The CAN-SPAM Act is a law that sets the rules for commercial email, establishes requirements for commercial messages, gives recipients the right to have emails stopped from being sent to them, and spells out tough penalties for violations.<br><br></div><div class='innerText'><strong>We collect your email address in order to:</strong></div><div class='innerText'><br><strong>To be in accordance with CANSPAM we agree to the following:</strong></div><div class='innerText'><strong><br>If at any time you would like to unsubscribe from receiving future emails, you can email us at</strong></div> and we will promptly remove you from <strong>ALL</strong> correspondence.</div><br><div class='innerText'>If there are any questions regarding this privacy policy you may contact us using the information below.<br><br></div><div class='innerText'><br>Last Edited on 2015-04-23</div></div>
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
            name: {
                message: 'Please enter a valid name',
                validators: {
                    notEmpty: {
                        message: 'Name cannot be empty'
                    },
					stringLength: {
                        min: 4,
                        message: 'Name must at least be 4 characters'
                    },
						 regexp: {
                        regexp:/[a-zA-Z]/,
                        message: 'Name can only be letters'
                    }
                    }
                },
            
            phone: {
                message: 'Invalid phone number',
                validators: {
                    notEmpty: {
                        message: 'Phone cannot be empty'
                    },
                    regexp: {
                        regexp:/^[0-9]+$/,
                        message: 'Only numbers accepted in this field'
                    }
				
				
         
               
                }
            },
              username: {
                message: 'Invalid username',
                validators: {
                    notEmpty: {
                        message: 'The username field is required and cannot be empty'
                    },
					stringLength: {
                        min: 4,
                       
                        message: 'must be at least 4 characters'
                    }
                
                  
                }
            },
			
			password: {
                message: 'The message is not valid',
                validators: {
                    notEmpty: {
                        message: 'The password field cannot be empty'
                    },
					stringLength: {
                        min: 4,
                        
                        message: 'Password must be at least 4 characters'
                    }
				
              
                  
                }
            },
			
			address: {
                message: 'The address is not valid',
                validators: {
                    notEmpty: {
                        message: 'Address is required and can\'t be empty'
                    },
					stringLength: {
                        min: 4,
					
                        message: 'Address too short'
                    }
				
                   
                }
            }
        }
    });
});
</script>
</body>
</html>
