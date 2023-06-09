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
<title>GamingVerse | Games</title>
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
	
<!-- SECTION ONE: SPOTLIGHT -->
	
	<section>
		<div class="container text-center text-white mt-5 mb-5">
			<div class="row">
				<div class="col-9">80% OFF!</div>
				<div class="col-3">
					<div>Early Access</div>
					<div><a href="/search">Search</a></div>
				</div>
			</div>
		</div>
	</section>
	
<!-- SECTION TWO: SEARCH BY GENRE CARD OVERLAYS-->
	
	<section class="container">
		<div class="row row-cols-1 row-cols-md-6 g-4">
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Action/Adventure</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Family/Kids</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Platformer</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Racing/Flying</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">RPG</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Shooter</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Simulation</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Strategy</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Fighting</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Puzzle/Trivia</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Card/Board</h5>
  					</div>
    			</div>
  			</div>
  			<div class="col">
   				 <div class="card">
      				<img src="..." class="card-img" alt="...">
  					<div class="card-img-overlay">
    					<h5 class="card-title text-center">Sports</h5>
  					</div>
    			</div>
  			</div>
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