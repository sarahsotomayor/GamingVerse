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
<!-- LOCAL CSS -->
<link rel="stylesheet" type="text/css" href="/css/styling.css">
</head>

<body class="vh-100">
<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
 		<div class="container-fluid">
   		<a class="navbar-brand" href="">GamingVerse</a>
 		</div>
	</nav>

<!-- FORM TO REGISTER OR LOGIN -->
	<main class="container-fluid mt-5 text-white">
		<div class="row">
			<!-- REGISTER -->
			<div class="col">
				<form:form action="/register" method="POST" modelAttribute="user">
					<h2>Register:</h2>
					<div>
						<form:label path="firstName" class="form-label">First Name:</form:label>
						<form:input path="firstName" class="form-control"/>
						<form:errors path="firstName"/>
					</div>
					<div>
						<form:label path="lastName" class="form-label">Last Name:</form:label>
						<form:input path="lastName" class="form-control"/>
						<form:errors path="lastName"/>
					</div>
					<div>
						<form:label path="email" class="form-label">Email:</form:label>
						<form:input path="email" class="form-control"/>
						<form:errors path="email"/>				
					</div>
					<div>
						<form:label path="password" class="form-label">Password:</form:label>
						<form:input path="password" class="form-control"/>
						<form:errors path="password"/>				
					</div>
					<div>
						<form:label path="confirmPassword" class="form-label">Confirm Password:</form:label>
						<form:input path="confirmPassword" class="form-control"/>
						<form:errors path="confirmPassword"/>					
					</div>
					<button class="btn btn-primary mt-3">Register</button>
				</form:form>
			</div>
			
			<!-- LOGIN -->
			<div class="col">
				<form:form action="/login" method="POST" modelAttribute="loginUser">
					<h2>Login:</h2>
					<div>
						<form:label path="email" class="form-label">Email:</form:label>
						<form:input path="email" class="form-control"/>
						<form:errors path="email"/>				
					</div>
					<div>
						<form:label path="password" class="form-label">Password:</form:label>
						<form:input path="password" class="form-control"/>
						<form:errors path="password"/>				
					</div>
					<button class="btn btn-primary mt-3">Login</button>				
				</form:form>
			</div>
		</div>
	</main>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>