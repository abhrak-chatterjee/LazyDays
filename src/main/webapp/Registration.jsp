<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Sign Up Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">  
  <link href="css/flexslider.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
<style type="text/css">
  #message {
    display:none;
    
    color: white;
    position: relative;
    padding: 20px;
    margin-top: 10px;
}
.invalid {
    color: red;
}

.invalid:before {
    position: relative;
    left: -35px;
    content: #10006;
}

</style>
  
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
              <li><a href="login.jsp">Sign In</a></li>
              <li><a href="registration.jsp" class="active">Sign Up</a></li>
            </ul>
          </nav>    
          </div>        
        </div>
      </div>      
    </div>

  <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
      </ul>
      
      <div class="tab-content">
          
                    
          <form action="register" method="post">
          
         
            <div class="field-wrap">
              <label>
                Name<span class="req">*</span>
              </label>
              <input type="text" name="userName" required autocomplete="off" />
            </div>
 
          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="userMail" required autocomplete="on"/>
          </div>
          
		  <div class="field-wrap">
            <label>
              Phone Number<span class="req">*</span>
            </label>
            <input type="text" name="phone" pattern="[0-9]{10}" required autocomplete="off"/>
          </div>
		  
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" id="psw" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required autocomplete="off"/>
          </div>
		  
		  <div class="field-wrap">
            <label>
              Confirm Password<span class="req">*</span>
            </label>
            <input type="password" name="confirmPassword" required autocomplete="off"/>
            <form:errors path="confirmPassword" cssClass="msg"/></td>
          </div>
          
          <button type="submit" class="button button-block"/>Register</button>
          
          <div style="color: red">${msg}</div>
         <div style="color: red">${msg1}</div>
          </form>
          <div id="message">
  <h3 style="color: #ffe4c4">Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
  </form>
  <script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) { 
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
}

  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) { 
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) { 
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }

  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>
        
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
<footer class="tm-black-bg">
    <div class="container">
      <nav class="tm-nav">
            <ul>
              <li><a href="#">FAQs</a></li>
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
