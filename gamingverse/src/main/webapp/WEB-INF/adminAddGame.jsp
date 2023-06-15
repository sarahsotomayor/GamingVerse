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
</head>

<body>
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
			<form:form action="/admin/addgame/create" method="POST" modelAttribute="newGame">
				<h2>Add Game:</h2>
				<div>
					<form:label path="name">Name:</form:label>
					<form:input path="name"/>
					<form:errors path="name"/>
				</div>
				<div>
					<form:label path="description">Description:</form:label>
					<form:textarea path="description"/>
					<form:errors path="description"/>
				</div>
				<div>
					<form:label path="esbrRating">ESBR Rating:</form:label>
					<form:input path="esbrRating"/>
					<form:errors path="esbrRating"/>				
				</div>
				<div>
					<form:label path="console">Console Compatibility:</form:label>
					<form:input path="console"/>
					<form:errors path="console"/>
				</div>
				<div>
					<form:label path="genre">Genre:</form:label>
					<form:input path="genre"/>
					<form:errors path="genre"/>				
				</div>
				<div>
					<form:label path="size">Download Size:</form:label>
					<form:input path="size"/>
					<form:errors path="size"/>				
				</div>

				<button>Submit</button>
			</form:form>
	</section>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>