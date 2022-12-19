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

<title>Insert title here</title>

<style type="text/css">
.errors {
	color: red;
	position: fixed;
	text-align: left;
	margin-left: 20px;
}
</style>
</head>
<body>

	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<br>

	<form:form action="./loginSuccess" method="post"
		modelAttribute="user">
		<div class="container mt-4">
			<div class="row justify-content-center">
				<div class="col-md-5">
					<div class="card mt-5">
						<h2 class="card-title text-center">Login</h2>

						<div class="card-body py-md-4">

							<div class="form-group">
								<form:input path="emailId" type="email" class="form-control"
									id="emailId" placeholder="Email" />

								<form:errors path="emailId" cssClass="text-danger" />
							</div>

							<div class="form-group">
								<form:input path="passWord" type="password" class="form-control"
									id="passWord" placeholder="Password" />

								<form:errors path="passWord" cssClass="text-danger" />
							</div>


						</div>
						<div class="container text-center mb-1">
							<a href="addNotes"><button
									class="btn btn mb-1"
									style="background-color: #393E46; color: white;">Sign
									In</button></a> <br> <a
								href="${pageContext.request.contextPath }/registration">Create
								Account</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</form:form>
	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid p-0 m-0">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>