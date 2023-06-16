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
<title>GamingVerse | Edit Review</title>
<!-- BOOTSTRAP -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<!-- LOCAL CSS -->
<link rel="stylesheet" type="text/css" href="/css/styling.css">
</head>

<body class="vh-100">
<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
 		<div class="container-fluid">
   		<a class="navbar-brand" href="">GamingVerse</a>
   		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
     			<span class="navbar-toggler-icon"></span>
   		</button>
   		<div class="collapse navbar-collapse" id="navbarNav">
     			<ul class="navbar-nav">
       			<li class="nav-item">
         				<a class="nav-link" href="/">Home</a>
       			</li>
       			<li class="nav-item">
       				<a class="nav-link" href="/logout">Logout</a>
       			</li>
     			</ul>
   		</div>
   		<h1>| Welcome <c:out value="${user.firstName}"></c:out>!</h1>
 		</div>
	</nav>

<!-- VIEW & EDIT REVIEW -->
	<section>
		<div class="container mt-5 text-white">
			<h2 class="mb-5">Edit Review</h2>
			<form:form action="/view/review/${game.id}/${editReview.id}/edit" method="POST" modelAttribute="editReview">
				<input type="hidden" name="_method" value="PUT"/>
				<!-- USER & GAME HIDDEN INPUTS -->
					<form:hidden value="${game.id}" path="game"/>
					<form:hidden value="${user.id}" path="user"/>
					<form:hidden value="${review.id}" path="id"/>
				<div>
					<p>Game: <c:out value="${game.name}"></c:out></p>
				</div>
				<div>
					<form:label path="reviewInput" class="form-label">Your Review:</form:label>
					<form:textarea path="reviewInput" class="form-control" value="${review.reviewInput}"/>
					<form:errors path="reviewInput"/>
				</div>
				<button class="btn btn-primary mt-5">Submit</button>
			</form:form>
			<a class="btn btn-primary mt-3" href="/viewgame/${game.id}">Nevermind</a>
		</div>
	</section>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>