<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="allCssJs.jsp"%>

<title>Note Taker: Registration</title>

</head>
<body>

	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<br>
	
	<form:form action="./registerSuccess" method="post"
		modelAttribute="user">

		<div class="container mt-4">
			<div class="row justify-content-center">
				<div class="col-md-5">
					<div class="card mt-5">
						<h2 class="card-title text-center">Register</h2>

						<div class="card-body py-md-4">

							<div class="form-group">
								<form:input path="fName" type="text" class="form-control"
									id="fName" placeholder="First name" />
									
								<form:errors path="fName" cssClass="text-danger"/>
							</div>

							<div class="form-group">
								<form:input path="Lname" type="text" class="form-control"
									id="Lname" placeholder="Last name" />
									
								<form:errors path="Lname" cssClass="text-danger"/>
							</div>

							<div class="form-group">
								<form:input path="emailId" type="email" class="form-control"
									id="emailId" placeholder="Email" />
									
								<form:errors path="emailId" cssClass="text-danger"/>
							</div>

							<div class="form-group">
								<form:input path="passWord" type="password" class="form-control"
									id="passWord" placeholder="Password" />
									
								<form:errors path="passWord" cssClass="text-danger"/>
							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" required="required"> <label
									class="form-check-label" for="exampleCheck1">Check me
									out</label>
							</div>
						</div>
						<div class="container text-center justify-content-between mb-1">
							<a href="login"><button class="btn btn mb-1"
									style="background-color: #393E46; color: white;">Create
									Account</button></a> <br> <a href="login">Login</a>
						</div>

					</div>
				</div>
			</div>
		</div>

</form:form>


		
	
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>