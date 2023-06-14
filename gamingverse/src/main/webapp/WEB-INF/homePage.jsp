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
<title>GamingVerse</title>
<!-- BOOTSTRAP -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body>
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
<!-- HEADER -->
	<header>
		<h1>Welcome <c:out value="${user.firstName}"/>!</h1>
	</header>
<!-- SECTION ONE: FEATURED BUTTON MENUS (SPOTLIGHT, SEARCH, SIGN UP/LOGIN, DEALS, SUBSCRIPTIONS)-->
	<section>
		<div class="container text-center">
			<div class="row">
				<div class="col-6">Early Access Spotlight</div>
				<div class="col-2"><a href="/search">Search</a></div>
				<div class="col-4">
					<div><a href="/login">Sign Up / Login</a></div>
					<div>Deals</div>
					<div>Subscriptions</div>
				</div>
			</div>
		</div>
	</section>
	
<!-- SECTION TWO: CARD OVERLAYS FOR SEARCH OPTIONS -->
	<section>
		<div class="row row-cols-1 row-cols-md-5 g-4">
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">New Games</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Free Games</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Coming Soon</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Top Paid Games</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Browse by Genre</h5>
  					</div>
    			</div>
  			</div>
		</div>
	</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>