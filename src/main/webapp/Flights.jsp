<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flights</title>
</head>
<body>
	Hello
<br>
<br>
<table>
<th>Hello</th>
    <c:forEach items="${msg}" var="places">
        <tr>
            
            <td>${places}</td>
            <%-- <td>${users.getTeamB()}</td>
            <br>
            <td>${users.getScoreA()}</td>
            <td>${users.getScoreB()}</td> --%>
            
            <br>
        </tr>
    </c:forEach>
</table>
<br>
	
</body>
</html>