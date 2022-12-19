<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="allCssJs.jsp"%>
<nav class="navbar navbar-expand-lg navbar-dark purple">
  <a class="navbar-brand" href="#"><b><i class="fa-solid fa-file-circle-check mr-1"></i>KeepNotes</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath }/"><i class="fa-solid fa-house-user mr-1"></i>Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="login"><i class="fa-solid fa-notes-medical mr-1"></i>Add Notes</a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="myNotes"><i class="fa-solid fa-note-sticky mr-1"></i>My Notes</a>
      </li>
    
    <li class="nav-item active mr-0">
      <a href="login"><button class="btn btn my-2 my-sm-0" style="outline-color: #D6E4E5" type="submit"><b>Login</b></button></a>
      <a href="registration"><button class="btn btn my-2 my-sm-0" style="outline-color: #D6E4E5" type="submit"><b>Register</b></button></a>
    </li>
    </ul>
  </div>
</nav>