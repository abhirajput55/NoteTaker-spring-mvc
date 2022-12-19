<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="./allCssJs.jsp"%>

<!-- <title>Note Taker: AddNote</title> -->

</head>
<body>

	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>

	<div class="container text-center mt-3">
		<button>
			<h4>Welcome to add your notes: ${emailId }</h4>
		</button>
	</div>

	<h5 class="text-center mt-3" style="color: #393E46;">Please Fill
		Your Notes Details Here</h5>

	<!-- This is add notes form -->

	<div class="container">

		<form action="./SaveUpdate" method="post">

			<div>
				<label for="title"><b>Email</b></label> <input type="text"
					value="${emailId}" name="emailId" readonly="readonly" />
			</div>

			<div class="form-group">
				<label for="title"><b>Note Title</b></label> <input
					style="background-color: #EFF5F5; color: black;" type="text"
					class="form-control" name="title" id="title"
					aria-describedby="emailHelp" required="required">
			</div>

			<div class="form-group">
				<label for="text"><b>Note Content</b></label>
				<textarea id="content" name="content" onkeyup="countChars(this);"
					class="form-control" required="required"
					style="height: 250px; background-color: #EFF5F5; color: black;"></textarea>
			</div>

			<div class="container text-center p-3 mt-2">

				<a href="${pageContext.request.contextPath }/" class="btn btn mr-1"
					style="background-color: #393E46; color: white;">Back</a> <a
					href="myNotes"><button type="submit" class="btn btn ml-1"
						style="background-color: #EB6440; color: white;">Add</button></a>
			</div>
		</form>

	</div>

	<script>
		function countChars(obj) {

			var maxLength = 1500;

			var strLength = obj.value.length;

			if (strLength > maxLength) {

				myFunction();

			}

		}

		function myFunction() {

			swal({

				title : "Text Limit",

				text : "Text characters should not more than 1500",

				type : 'info',

				showCancelButtonClass : "btn-primary",

				confirmButtonText : 'Ok'

			});

		}
	</script>


	<%@include file="footer.jsp"%>

</body>
</html>