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

	<h1 class="text-center mt-3" style="color: #393E46;">Update Your
		Note Detail Here</h1>

	<!-- This is add notes form -->

	<div class="container">

		<form action="${pageContext.request.contextPath }/SaveUpdate" method="post">
		
		

			<div>
				<label for="title"><b>Note Id</b></label>
				<input type="text" value="${note.id}" name="id" readonly="readonly" />
			</div>
			
			<div>
				<label for="title"><b>Email</b></label>
				<input type="text" value="${emailId}" name="emailID" readonly="readonly" />
			</div>
			
			<div class="form-group">
				<label for="title"><b>Note Title</b></label> <input type="text"
					class="form-control" name="title" id="title" value="${note.title }"
					aria-describedby="emailHelp" placeholder="Enter Title Here"
					required="required" style="background-color: #EFF5F5; color: black;" >
			</div>
			<div class="form-group">
				<label for="text"><b>Note Content</b></label>
				<textarea id="content" name="content"
					placeholder="Enter Content Here" class="form-control"
					style="height: 250px; background-color: #EFF5F5; color: black;">${note.content }</textarea>
			</div>

			<div class="container text-center p-3 mt-2">

				<a href="${pageContext.request.contextPath }/myNotes"
					class="btn btn mr-1" style="background-color: #393E46; color: white;">Back</a> <a href="myNotes" onclick="yesNo()"><button
						type="submit" class="btn btn ml-1" style="background-color: #EB6440; color: white;">Update</button></a>
			</div>
		</form>

	</div>
	
	<script type="text/javascript">

		function yesNo() {
		    return confirm("You want to update record, are you sure?");
		     
		}
		
	</script>

<%@include file="footer.jsp" %>

</body>
</html>