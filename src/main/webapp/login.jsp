<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">  
  <link href="css/flexslider.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">
  
      <link rel="stylesheet" href="css/style.css">

  
</head>
<body>
	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
  					<a href="#" class="tm-site-name">LAZY DAYS</a>	
  				</div>
	  			<div class="col-lg-6 col-md-8 col-sm-9">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
	  				<nav class="tm-nav">
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="http://localhost:9080/login" class="active">Sign In</a></li>
							<li><a href="http://localhost:9080/register">Sign Up</a></li>
						</ul>
					</nav>		
	  			</div>				
  			</div>
  		</div>	  	
  	</div>
  <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a>Log In</a></li>
      </ul>
      
      <div class="tab-content">
          
          <h1>Welcome Back!</h1>
          
          <form action="login" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="userMail" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password"required autocomplete="off"/>
          </div>
          
          <p class="forgot" style="color: white">Do not have an account?<a href="Registration.jsp"> Sign Up</a></p>
           <div style="color: red">${mssg}</div>
          <button class="button button-block"/>Log In</button>
          
          </form>

        
        
        

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
<footer class="tm-black-bg">
		<div class="container">
			<nav class="tm-nav">
						<ul>
							<li><a href="faqs.jsp">FAQs</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="contact.jsp">Contact Us</a></li>
							<li><a href="tours.jsp">Our tours</a></li>
						</ul>
			</nav>
		
		<div class="social-follow">
              <nav class="tm-nav">
              <ul>
                <li><a href="https://www.facebook.com/abhrak10"><i class="fa fa-facebook-square" aria-hidden="true"></i> Facebook</a></li>
                <li><a href="https://twitter.com/Abhrak"><i class="fa fa-twitter-square" aria-hidden="true"></i> Twitter</a></li>
                <li><a href="https://www.linkedin.com/in/abhrak-10/"><i class="fa fa-linkedin-square" aria-hidden="true"></i> LinkedIn</a></li>
                <li><a href="https://plus.google.com/u/0/+AbhrakChatterjee"><i class="fa fa-google-plus-square" aria-hidden="true"></i> Google+</a></li>
                <li><a href="https://www.instagram.com/abhrak10/?hl=en"><i class="fa fa-instagram" aria-hidden="true"></i> Instagram</a></li>
              </ul>
          </nav>
            </div>
			<div class="row">
				<p class="tm-copyright-text">Copyright &copy; 2018 Lazy Days 
                
                | Designed by <a rel="nofollow" href="#" target="_parent">Lazy People</a></p>
			</div>
		</div>
				
	</footer>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>





