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
<title>A P P L E</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/footer-distributed-with-address-and-phones.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

<link href="<c:url value="/resources/css/HomePage.css" />"
	rel="stylesheet">
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
	
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>


	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="Welcome">A P P L E</a>
			<i class="fa fa-apple fa-3x" aria-hidden="true"></i>
			
					
		</div>
     	</div>
	</nav>

	<div class="container">
 <style>
p {
	color: Black;
}
</style>

			<c:choose>
					<c:when test="${LoggedIn}">

						<br><li style="float: right"><a href="perform_logout"
							class="w3-hover-none">Logout<i class="fa fa-sign-out"></i></a></li>
						<c:choose>	
						<c:when test="${!Administrator}">	
						<br><li style="float: right"><a href="viewcart"
							class="w3-hover-none">ViewCart<i class="fa fa-shopping-cart"></i></a></li>
						</c:when>
						</c:choose>

						<br><li style="float: right"><a href="#" class="w3-hover-none">Hi,${name}
						<i	class="fa fa-user"></i> </a></li>
					</c:when>

		 <c:otherwise>
						<br><li style="float: right"><a href="Register"
							class="w3-hover-none">SignUp<i class="fa fa-user-plus"></i></a></li>
						<br><li style="float: right"><a href="login"
							class="w3-hover-none">Login<i class="fa fa-sign-in"></i></a></li>
					</c:otherwise>
				</c:choose>
			
			
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
	
	</div>
	
	<!-- Category List End -->
	
	<c:choose>
	<c:when test="${IfViewCartClicked}">
		<c:import url="/WEB-INF/jsp/cart.jsp">
		</c:import>
	</c:when>
	<c:when test="${IfPaymentClicked}">
			<c:import url="/WEB-INF/jsp/Payment.jsp">
			</c:import>
	</c:when>
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
<br>	<c:choose>	
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
				<div class="item active"><br>
					<img
						src="<c:url value="/resources/images/corousel/apple.jpg"></c:url>"
						alt="LCDMAC">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item ">
					<img
						src="<c:url value="/resources/images/corousel/mac.jpg"></c:url>"
						alt="Macbook">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/mac3.jpg"></c:url>"
						alt="macbook">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/7.jpg"></c:url>"
						alt="Iphone7">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/watch.jpg"></c:url>"
						alt="Iphone6">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/5.jpg"></c:url>"
						alt="Iphone5">
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
	<c:if test="${empty HideOthers}">
		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList}">
					<div>
						<!-- <ul> -->
						<div class="row w3-card-8 w3-white" style="margin-bottom: 0px">
							<br>
							<c:forEach items="${productList}" var="product">
								<div class="col-xs-2 ">
									<div class="thumbnail">
										<img height="600px" width="600px" alt="${product.id}"
											src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>">
										<div class="caption">
											<p>
												${product.name}<br> <i class =" fa fa-inr" aria-hidden="true"></i>  ${product.price}
												<c:choose>
													<c:when test="${LoggedIn}">
														<form action="addtoCart/${userId}/${product.id}">
														
													     <input type="number" value="1" name="quantity"
																class="btn-xs col-1 btn-black "> <input
																type="submit" value="AddtoCart"
																class="btn-xs col-1 btn-black">
														</form>
														</form>
													</c:when>
												</c:choose>
											</p>

										</div>
									</div>
								</div>

								
							</c:forEach>
						</div>
						<!-- </ul> -->
					</div>
				</c:if>
			</c:when>
		</c:choose>
	</c:if>
	 
	<!-- Product List End -->
	
	
	
		<!-- Product List-->
	<%-- 	<c:if test="${empty HideOthers}">
	<c:choose>	
	<c:when test="${!Administrator}">	
	<c:if test="${!empty productList}">
		<div>
			<ul>
			<br>
				<c:forEach items="${productList}" var="product">
				<div class="col-xs-2 ">
				<div class="thumbnail">
					<li><a href=" ${product.name}" class="w3-hover-none"></a></li><hr><li><img height=100px; width=100px alt="${product.id}" src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>"></li>
				<div class="caption">
											<p>
												${product.name}
				<c:choose>
					<c:when test="${LoggedIn}">	
					<form action="addtoCart/${userId}/${product.id}">
															<input type="number" value="1" name="quantity">
															<input type="submit" value="AddtoCart" class="btn-xs col-1 btn-black">
					
					
					</form>
				</c:when>
				</c:choose>
				</p>
				</div>
				</div>
				</div>
				
				</c:forEach>
			</ul>
			
		</div>
	</c:if>
	</c:when>
	</c:choose>
	</c:if> --%>
	
	<!-- Product List End -->
	

	<footer class="footer-distributed w3-card-4 w3-white w3-margin-0"
		style="opacity: 0.9">
		<div class="footer-left">
			<p>Payment Options</p>
			<a href="#"><i class="fa fa-paypal" aria-hidden="true"></i> </a> . <a
				href="#"><i class="fa fa-cc-amex" aria-hidden="true"></i> </a> . <a
				href="#"><i class="fa fa-cc-mastercard" aria-hidden="true"></i>
			</a> . <a href="#"><i class="fa fa-cc-visa" aria-hidden="true"></i> </a>
			. <a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i>
			</a>
			
			<p></p>
			<p></p>
			<p>
				A P P L E <i class="fa fa-copyright" aria-hidden="true"> 2016</i>
			</p>
			<p></p>
			<div class="footer-icons">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-github"></i></a>
			</div>
		</div>
		<div class="footer-center">
			<div>
				<i class=" fa fa-map-marker"></i>
				<p>
				<a href="GACHIBOWLI ROAD_NO-3 HYDERABAD, INDIA">Gachibowli Road_No-3</a>
				</p>
			</div>
			<div>
				<i class="fa fa-phone"></i>
				<p><a href="callto:+91 9012345678">+91 9012345678</a></p>
			</div>
			<div>
				<i class="fa fa-envelope"></i>
				<p>
					<a href="mailto:products@company.com">products@apple.com</a>
				</p>
			</div>
		</div>
		<div class="footer-right">
			<p class="footer-company-about">
				<p>About the company</p> <a href="http://www.apple.com/in"
					title="Apple Inc, website template creation">Apple Inc.</a>  is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. Its hardware products include the iPhone smartphone, the iPad tablet computer, the Mac personal computer, the iPod portable media player, Its online services include the iTunes Store, the iOS App Store and Mac App Store, and iCloud.
			
		</div>
	</footer>


	
	
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
	
</body>
</html>
