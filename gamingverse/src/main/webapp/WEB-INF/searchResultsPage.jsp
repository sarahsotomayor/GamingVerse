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
<title>GamingVerse | Search Results</title>
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
       			<li class="nav-item dropdown">
         				<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          					 Menu
         				</a>
         				<ul class="dropdown-menu">
           				<li><a class="dropdown-item" href="">Cart</a></li>
           				<li><a class="dropdown-item" href="">Favorites List</a></li>
           				<li><a class="dropdown-item" href="">Profile</a></li>
           				<li><a class="dropdown-item" href="/login">Sign Up / Login</a></li>
         				</ul>
       			</li>
       			<li class="nav-item">
       				<a class="nav-link" href="/logout">Logout</a>
       			</li>
     			</ul>
   		</div>
 		</div>
	</nav>
	
<!-- SEARCH RESULTS SECTION ONE: VIDEO GAME INFORMATION -->
	<section>
		<div class="text-white">
			<h1>Title</h1>
			<div class="d-flex">
				<p>Rating</p>
				<p>Console</p>
				<p>Genre</p>
			</div>
			<div>
				<p>Age Rating</p>
			</div>
			<div>
				<p>Description</p>
				<p>$</p>
			</div>
		</div>
	</section>

<!-- SEARCH RESULTS SECTION TWO: VIDEO GAME RESULTS CARD OVERLAYS-->
	<section>
		<div class="text-white">
			<h1>TESTING API:</h1>
			<h2>${genre.count}</h2>
			
		</div>
	</section>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>