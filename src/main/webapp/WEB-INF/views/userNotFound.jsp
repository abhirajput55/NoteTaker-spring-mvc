<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@include file="allCssJs.jsp"%>
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
<br>
<br>

	<h1 class="text-center" style="color: red;">User not found or
		login credentials are Invalid</h1>
		
	<br>
	<br>
	<br>
	<div class="container text-center mb-1">
		<a href="${pageContext.request.contextPath }/login"><button
				class="btn btn mb-1"
				style="background-color: #393E46; color: white;">Login</button></a> 
				<br>
				<br>
		<a href="${pageContext.request.contextPath }/registration"><button
				class="btn btn mb-1"
				style="background-color: #393E46; color: white;">Create Account</button></a>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<div class="container-fluid p-0 m-0">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>