<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%@include file="allCssJs.jsp" %>
    <%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <title>Note Taker: HomePage</title>
  </head>
  <body>
    <div class="container-fluid p-0 m-0">
    	<%@include file="navbar.jsp" %>
    </div>
    
    <h1 class="text-center mt-3" style="color: #393E46;">Welcome To Note Taker App</h1>
    
    
    	<div class="container-fluid text-center">
    		<img alt="noteimage" src='<c:url value="/resources/img/note2.jpg" />' width="700px" height="400px">
    	</div>
    
    <br>
    
    <div class="container text-center">
    	<a href="registration"><button class="btn btn" style="background-color: #EB6440; color: white;"><b>Start Here</b></button></a>
    </div>
    
    <br>
    
   
    <%@include file="footer.jsp" %>
    
  </body>
</html>
