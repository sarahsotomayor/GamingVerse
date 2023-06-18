<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GamingVerse | ADMIN - Add Game</title>
<!-- BOOTSTRAP -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<!-- LOCAL CSS -->
<link rel="stylesheet" type="text/css" href="/css/styling.css">
</head>

<body class="vh-100">
	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
 		<div class="container-fluid">
   		<a class="navbar-brand" href="">GamingVerse | ADMIN</a>
   		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
     			<span class="navbar-toggler-icon"></span>
   		</button>
   		<div class="collapse navbar-collapse" id="navbarNav">
     			<ul class="navbar-nav">
       			<li class="nav-item">
       				<a class="nav-link" href="/logout">Logout</a>
       			</li>
     			</ul>
   		</div>
 		</div>
	</nav>

<!-- FORM ADD VIDEO GAME TO DATABASE -->
	<section>
		<div class="container text-white mt-5">
			<form:form action="/admin/addgame/create" method="POST" modelAttribute="newGame">
				<h2>Add Game:</h2>
				<div>
					<form:label path="name" class="form-label">Name:</form:label>
					<form:input path="name" class="form-control"/>
					<form:errors path="name"/>
				</div>
				<div>
					<form:label path="description" class="form-label">Description:</form:label>
					<form:textarea path="description" class="form-control"/>
					<form:errors path="description"/>
				</div>
				<div>
					<form:label path="esbrRating" class="form-label">ESBR Rating:</form:label>
					<form:input path="esbrRating" class="form-control"/>
					<form:errors path="esbrRating"/>				
				</div>
				<div>
					<form:label path="console" class="form-label">Console Compatibility:</form:label>
					<form:input path="console" class="form-control"/>
					<form:errors path="console"/>
				</div>
				<div>
					<form:label path="genre" class="form-label">Genre:</form:label>
					<form:input path="genre" class="form-control"/>
					<form:errors path="genre"/>				
				</div>
				<div>
					<form:label path="size" class="form-label">Download Size:</form:label>
					<form:input path="size" class="form-control"/>
					<form:errors path="size"/>				
				</div>

				<button class="btn btn-primary mt-3">Submit</button>
			</form:form>
		</div>
	</section>
	
	       <!--Footer-->
    <footer class="footer fixed-bottom text-white mt-3">
        <p class="lead text-center fs-6 mt-5 pt-5">
            Copyright &copy; 2023 Sarah Sotomayor
        </p>
    </footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>