<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<style>
ul {
	list-style: none;
	padding: 0;
	margin: 0;
}
.menu {
	display: flex;
	justify-content: space-around;
}
li {
	hover: none;
}
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 50%;
	margin: 0 auto;
}

</style>
<meta charset="ISO-8859-1">
<title>E K A R T</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="w3-top">
		<nav>
			<ul class="w3-navbar w3-black w3-card-2" style="opacity: 0.9">
				<li><a href="" class="w3-hover-none"><i class="fa fa-home"></i>
						E K A R T </a></li>
				<c:choose>
					<c:when test="${LoggedIn}">

						<li style="float: right"><a href="logout"
							class="w3-hover-none"><i class="fa fa-sign-out"></i></a></li>
						<c:choose>	
						<c:when test="${!Administrator}">	
						<li style="float: right"><a href="${userId}/viewcart"
							class="w3-hover-none"><i class="fa fa-shopping-cart"></i></a></li>
						</c:when>
						</c:choose>

						<li style="float: right"><a href="#" class="w3-hover-none"><i
								class="fa fa-user"></i> Hi, ${name}</a></li>
					</c:when>

					<c:otherwise>
						<li style="float: right"><a href="Register"
							class="w3-hover-none"><i class="fa fa-user-plus"></i></a></li>
						<li style="float: right"><a href="login"
							class="w3-hover-none"><i class="fa fa-sign-in"></i></a></li>
					</c:otherwise>
				</c:choose>
			</ul>
			
	<c:choose>	
		<c:when test="${!Administrator}">	
			<!-- Category List -->
			<c:if test="${!empty categoryList}">
				<div>
					<ul
						class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 "
						Style="width: 70%; margin-left: 15%; margin-top:-2px;">
						<c:forEach items="${categoryList}" var="category">
							<li><a href="${category.name}" class="w3-hover-none"><i class="fa fa-list-alt" aria-hidden="true"></i> ${category.name}</a></li>
						</c:forEach>
						
					</ul>
				</div>
			</c:if>	
		</c:when>	
	
		<c:when test="${Administrator}">
			<ul class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 " 
			Style="width: 70%; margin-left: 15%; margin-top:-2px;">
				<li><a href="product"class="w3-hover-none"><i class="fa fa-list"
					aria-hidden="true"></i> Products</a></li>
				<li><a href="category" class="w3-hover-none"><i class="fa fa-list"
					aria-hidden="true"></i> Category</a></li>
				<li><a href="supplier" class="w3-hover-none"><i class="fa fa-list"
					aria-hidden="true"></i> Supplier</a></li>
			</ul>
		</c:when>
	</c:choose>		
	</nav>
	</div>
	
	
	
	
	
	
	<!-- Category List End -->
	
	
	<c:choose>
	<c:when test="${IfLoginClicked}">
		<c:import url="/WEB-INF/jsp/Login.jsp">
		</c:import>
	</c:when>
	
	<c:when test="${IfRegisterClicked}">
		<c:import url="/WEB-INF/jsp/Register.jsp">
		</c:import>
	</c:when>
	</c:choose>

	<c:choose>
			<c:when test="${ProductPageClicked}">
				<c:import url="/WEB-INF/jsp/AdminProductPage.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${CategoryPageClicked}">
				<c:import url="/WEB-INF/jsp/AdminCategoryPage.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${SupplierPageClicked}">
				<c:import url="/WEB-INF/jsp/AdminSupplierPage.jsp"></c:import>
			</c:when>
		</c:choose>
	
	<!-- carousel -->
	<c:choose>	
		<c:when test="${!Administrator}">	
	<div>
		<div id="carousel-home" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li class=" item1 active"></li>
				<li class="item2"></li>
				<li class="item3"></li>
				<li class="item4"></li>
				<li class="item5"></li>
				<li class="item6"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img
						src="<c:url value="/resources/images/corousel/macbookpro pics.jpg"></c:url>"
						alt="Apple">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item ">
					<img
						src="<c:url value="/resources/images/corousel/smart.jpg"></c:url>"
						alt="Apple">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/nexus.jpg"></c:url>"
						alt="Sony">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/DSLR.jpg"></c:url>"
						alt="HP">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/gamingconsole.jpg"></c:url>"
						alt="Dell">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/canon.jpg"></c:url>"
						alt="Dell">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" role="button" href="#carousel-home"
				style="color: black"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control " href="#carousel-home"
				role="button" style="color: black"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	</c:when>
	</c:choose>
	<!-- Corousel End -->

	<!-- Product List-->
	<c:choose>	
	<c:when test="${!Administrator}">	
	<c:if test="${!empty productList}">
		<div>
			<ul>
				<c:forEach items="${productList}" var="product">
					<li><a href=" ${product.name}" class="w3-hover-none"><img alt="${product.id}" src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>"></a></li>
				<c:choose>
					<c:when test="${LoggedIn}">	
					<li><a href="${userId}/addtoCart/${product.id}"
						class="w3-hover-none">Add to Cart</a></li>
				</c:when>
				</c:choose>
				</c:forEach>
			</ul>
		</div>
	</c:if>
	</c:when>
	</c:choose>
	<!-- Product List End -->



	<!-- Carousel Script -->
	<!--  -->
	<script>
		$(document).ready(function() {
			// Activate Carousel
			$("#carousel-home").carousel();

			// Enable Carousel Indicators
			$(".item1").click(function() {
				$("#carousel-home").carousel(0);
			});
			$(".item2").click(function() {
				$("#carousel-home").carousel(1);
			});
			$(".item3").click(function() {
				$("#carousel-home").carousel(2);
			});
			$(".item4").click(function() {
				$("#carousel-home").carousel(3);
			});
			$(".item5").click(function() {
				$("#carousel-home").carousel(4);
			});
			$(".item6").click(function() {
				$("#carousel-home").carousel(5);
			});

			// Enable Carousel Controls
			$(".left").click(function() {
				$("#carousel-home").carousel("prev");
			});
			$(".right").click(function() {
				$("#carousel-home").carousel("next");
			});
		});
	</script>
	<!-- Carousel Script End  -->
</body>
</html>
