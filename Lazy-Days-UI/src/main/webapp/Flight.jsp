<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Flight Booking</title>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"> 
  <link href="css/flexslider.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
  <style>
* {
    box-sizing: border-box;
}
body {
    background: #555;
}

.content {
    max-width: 900px;
    margin: auto;
    background: white;
    padding: 10px;
    font-style: bold;
}
.wrapper {
    text-align: center;
}
table {
    border-collapse: collapse;
    width: 100%;
    padding-top: 10px;
}
.button {
  
   background-color:green;
   color:white;
    font-size: 15px;
    top: 24%;
    left:73%;
}
tr:nth-child(odd)
{background-color: Silver;
color:black;


}

tr
{
font-style: bold;
}
td
{
font-style: bold;
}
th {
    background-color:hsl(0, 100%, 25%);
    color: white;
}

.heading
{
font-size: 20px;
font-style: bold;

}
/* Create two equal columns that floats next to each other */
.column {
    float: left;
    width: 20%;
    padding: 10px;
    height: 50px; /* Should be removed. Only for demonstration */
}
.columns {
    float: left;
    width: 20%;
    padding: 10px;
    height: 60px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
.footer {
    position: relative;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: red;
    color: white;
    text-align: center;
}
</style>
</head>
<body class="tm-gray-bg">
<jsp:include page="header.jsp" />
<div class="single">
<div class="heading">
${src}->${dest}
</div>
<c:if test="${empty msg}">
<div>No Flights Available..</div>

</c:if>


</div>

<c:if test="${not empty msg}">

<table class="table">
<thead>
         

<tr>

<th scope="col">Company</th>
<th scope="col">Departure Time</th><br>
<th scope="col">Arrival Time</th><br>
<th scope="col">Fare</th>
<th scope="col">Book</th>
</tr> 

    <c:forEach items="${msg}" var="flight">
        <tr>
            <td>${flight.getCompany()}</td>
            <td>${flight.getDepartureTime()}</td>
            <td>${flight.getArrivalTime()}</td>
            <td>${flight.getFare()}</td>
             <td><input type="submit" class="button" value="Book"></td></input>          
            <br>
        </tr>
    </c:forEach>
</table>
</c:if>
<c:if test="${not empty ret}">
<div class="heading">${dest}->${src}</div>
<c:if test="${empty msg1}">
<div>No Flights Available</div>
</c:if>
   <c:if test="${not empty msg1}">
   <table class="table">
         <thead>


<tr>

<th scope="col">Company</th>
<th scope="col">Departure Time</th><br>
<th scope="col">Arrival Time</th><br>
<th scope="col">Fare</th>
<th scope="col">Book</th>
</tr> 

    <c:forEach items="${msg1}" var="flight1">
        <tr>
            <td>${flight1.getCompany()}</td>
            <td>${flight1.getDepartureTime()}</td>
            <td>${flight1.getArrivalTime()}</td>
            <td>${flight1.getFare()}</td>
             <td><input type="submit" class="button" value="Book"></td></input>          
            <br>
        </tr>
    </c:forEach>
</table>
</c:if>
   
</c:if>

</div>

<div class="footer">
       <jsp:include page="footer.jsp" />
</div>
</body>
</html>