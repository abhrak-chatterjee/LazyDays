<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body>
<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
  					<a href="index.jsp" class="tm-site-name">LAZY DAYS</a>	
  				</div>
	  			<div class="col-lg-6 col-md-8 col-sm-9">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
		            
	  				<nav class="tm-nav">
	  				<% 
						response.setHeader("Pragma","no-cache"); 
						response.setHeader("Cache-Control","no-store"); 
						response.setHeader("Expires","0"); 
						response.setDateHeader("Expires",-1);
					%> 
	  				<c:if test="${sessionScope.userName == null}">
						<ul>
							<li><a href="index.jsp" class="active">Home</a></li>
							<li><a href="login.jsp">Sign In</a></li>
							<li><a href="register.jsp">Sign Up</a></li>
						</ul>
					</c:if>
					<c:if test="${sessionScope.userName != null}">
					    <ul>
					    <li><a class="active">Welcome ${sessionScope.userName}!</a>
					    <li><a href="logout.jsp">Log out</a>
					    </ul>
				    </c:if>	
					</nav>	
	  			</div>				
  			</div>
  		</div>	  	
  	</div>
</body>
</html>