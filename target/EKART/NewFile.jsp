<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EKART Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/bootstrap.min.js"></c:url>"></script>


</head>
<body>

<nav>
		<ul class="w3-navbar w3-large w3-card-4 w3-dark-grey w3-left-align ">
			<li><a  href="#"<i class="fa fa-home"></i>>
					E K A R T </a></li>
			<li class="w3-hide-small" style="float: right"><a href="#"><i
					class="fa fa-sign-out"></i> Sign Out</a></li>	
		</ul>
		<div id="demo" class="w3-hide w3-card-8 w3-hide-large w3-hide-medium">
			<ul class="w3-navbar w3-left-align w3-card-8 w3-light-grey">
				<li><a href="product" style="display: inline-block"><i
						class="fa fa-list" aria-hidden="true"></i> Products</a></li>
				<li><a href="category" style="display: inline-block"><i
						class="fa fa-list" aria-hidden="true"></i> Category</a></li>
				<li><a href="supplier" style="display: inline-block"><i
						class="fa fa-list" aria-hidden="true"></i> Supplier</a></li>
				<li style="float: right"><a href="#"><i
						class="fa fa-sign-out"></i> Sign Out</a></li>
			</ul>
		</div>
	</nav>
	
	<nav class="w3-topnav w3-green">
  <a href="#">Home</a>
  <a href="#">Link 1</a>
  <a href="#">Link 2</a>
  <a href="#">Link 3</a>
  <a href="#">Link 4</a>
</nav>
</body>
</html>