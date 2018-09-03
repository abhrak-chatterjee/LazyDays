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
  	<jsp:include page="header.jsp" />
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
<jsp:include page="footer.jsp" />
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>





