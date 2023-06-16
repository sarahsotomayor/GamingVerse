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
<title>GamingVerse | View Game</title>
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
         				<a class="nav-link" href="/games">Games</a>
       			</li>
       			<li class="nav-item">
       				<a class="nav-link" href="/logout">Logout</a>
       			</li>
     			</ul>
   		</div>
   		<h1>| Welcome <c:out value="${user.firstName}"></c:out>!</h1>
 		</div>
	</nav>
	
<!-- SECTION ONE: GAME DETAILS -->
	<section class="container text-white  ms-5 mt-5">
		<div>
			<h1>Title: <c:out value="${game.name}"></c:out></h1>
			<div>
				<p class="me-3 border border-primary-subtle rounded p-2 w-25">ESRB Rating: <c:out value="${game.esbrRating}"></c:out></p>
			</div>
			<div class="d-flex">
				<p class="me-3 border border-primary-subtle rounded p-2">Console: <c:out value="${game.console}"></c:out></p>
				<p class="me-3 border border-primary-subtle rounded p-2">Genre: <c:out value="${game.genre}"></c:out></p>
				<p class="me-3 border border-primary-subtle rounded p-2">Size: <c:out value="${game.size}"></c:out></p>
			</div>
			<div>
				<p>Description: <c:out value="${game.description}"></c:out></p>
				<p>$0.00</p>
				<button class="btn btn-success">Buy</button>
				<button class="btn btn-primary">Add to Favorites</button>
			</div>
		</div>
	</section>
	
<!-- SECTION TWO: GAME REVIEWS -->
	<section class="container text-white ms-5 mt-5">
		<div class="row">
			<div class="col-3 border border-primary-subtle rounded p-2">
				<h1>Reviews</h1>
				<div>
					<a class="btn btn-primary mt-5 mb-5" href="/add/review/${gameId}">Add Review</a>
				</div>
			</div>
		
		<!-- CAROUSEL COMPONENT WITH REVIEW CARDS-->
			<div class="col-9">
				<div>
					<!-- for each review IN game.reviews, grab review.reviewInput -->
					<c:forEach var="review" items="${game.reviews}">
						<p><c:out value="${review.reviewInput}"></c:out></p>
						<!-- c:if to display the edit ONLY for the user who created the review -->
						<c:if test="${user.id == review.user.id}">
							<a class="btn btn-warning mt-3" href="/view/review/${review.id}">Edit Your Review</a>
						</c:if>
						<!-- can add review poster by this example: review.postedby, in another c:out-->
					</c:forEach>
				</div>
			</div>
		</div>
	</section>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>