<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="allCssJs.jsp"%>

<title>Note Taker: MyNotes</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>

	<br>
	<h1 class="text-center" style="color: #393E46;">View your Notes
		Here</h1>


	<c:forEach items="${Notes }" var="n">

		<div class="card mx-auto mt-3" style="width: 50rem; background-color: #EFF5F5;">

			<div class="container text-center mt-2 mb-1" style="background-color: #EFF5F5;">
				<img alt="icon" src='<c:url value="/resources/img/icon1.png" />'
					width="40px" height="40px">
				<h6 class="text-center" style="color: navy;">${n.emailId }</h6>
			</div>
			
			<div class="card-body" style="background-color: #EFF5F5; color: black;">
				
				<h5 class="card-title">${n.title }</h5>
				<p class="card-text">${n.content }</p>

				<div class="container text-center">
					<a href="delete/${n.id }" class="btn btn mr-1" style="background-color: #393E46; color: white;" onclick="yesNo()"><i
						class="fa-solid fa-trash-can mr-2"
						style="font-size: 20px;"></i>Delete</a> <a href="update/${n.id }"
						class="btn btn ml-1" style="background-color: #EB6440; color: white;"><i
						class="fa-solid fa-pen-to-square mr-2" style="font-size: 22px;"></i>Edit</a>
				</div>
				<%-- href="delete/${n.id }" --%>
				<%-- <div class="container text-center">
					<button class="btn btn-danger mr-1" id="delete" onclick="myFunction();"><i
						class="fa-solid fa-trash-can mr-2"
						style="font-size: 20px;"></i>Delete</button> <a href="update/${n.id }"
						class="btn btn-primary ml-1"><i
						class="fa-solid fa-pen-to-square mr-2" style="font-size: 22px;"></i>Edit</a>
				</div> --%>
			</div>
		</div>

	</c:forEach>

<script type="text/javascript">

		function yesNo() {
		    return confirm("You want to delete record, are you sure?");
		     
		}    
		
		/* function countChars(obj) {

			var maxLength = 20;

			var strLength = obj.value.length;

			if (strLength > maxLength) {

				myFunction();

			}

		} */

		/* $(document).ready(function(){
		
			$("#delete").click(function(){
				
					swal({
						  title: "Are you sure?",
						  text: "Once deleted, you will not be able to recover this imaginary file!",
						  icon: "warning",
						  buttons: true,
						  dangerMode: true,
						})
						.then((willDelete) => {
						  if (willDelete) {
						    swal("Poof! Your imaginary file has been deleted!", {
						      icon: "success",
						    });
						  } else {
						    swal("Your imaginary file is safe!");
						  }
						});
				});
		}); */
		
		
			/* 
			function yesNo() {
			
			return confirm("! Confirm You Want Delete Record !");
			
			swal({
				  title: "Are you sure?",
				  text: "Once deleted, you will not be able to recover this imaginary file!",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				  
				})
				.then((willDelete) => {
				  if (willDelete) {
				    swal("Poof! Your imaginary file has been deleted!", {
				      icon: "success",
				    });
				  } else {
				    swal("Your imaginary file is safe!");
				  }
				});

	        }     */
		
	</script>
	































	<%@include file="footer.jsp"%>

</body>
</html>