 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
</head>
</head>
<body style="margin-top: 100px">
	<c:url var="addAction" value="addproduct"></c:url>
	<div>
		<div class="w3-row">
			<div class="w3-container w3-third"></div>
			<div class="w3-container w3-third">
				<form:form action="${addAction}" commandName="product" enctype="multipart/form-data" method="post">
					<table class="w3-table w3-bordered w3-striped w3-card-4">
						<tr class="w3-black"><hr>
							<th colspan="2">Add Product</th>
						</tr>
						<tr>
							<td><form:label path="id">
									<spring:message text="Id" />
								</form:label></td>
							<c:choose>
								<c:when test="${!empty product.id}">
									<td><form:input path="id" readonly="true" />
									</td>
								</c:when>

								<c:otherwise>
									<td><form:input path="id" /></td>
								</c:otherwise>
							</c:choose>
						<tr>
							<td><form:label path="name">
									<spring:message text="Name" />
								</form:label></td>
							<td><form:input path="name" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="description">
									<spring:message text="Description" />
								</form:label></td>
							<td><form:input path="description" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="price">
									<spring:message text="Price" />
								</form:label></td>
							<td><form:input path="price" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="supplier">
									<spring:message text="Supplier" />
								</form:label></td>
							<td><form:select path="supplier" required="true">
						 	<c:forEach items="${supplierList}" var="supplier">
								<form:option value="${supplier.name}">${supplier.name}</form:option>
							</c:forEach>
								</form:select></td>
						</tr>
					
						<tr>
							<td><form:label path="image">
									<spring:message text="Image" />
								</form:label></td>
							<td><form:input type="file" path="image" required="true" /></td>
						</tr>
						<tr>
							<td colspan="2"><c:if test="${!empty product.name}">
									<input type="submit" class="w3-btn w3-black"
										value="<spring:message text="Edit product"/>" />
								</c:if> <c:if test="${empty product.name}">
									<input type="submit" class="w3-btn w3-black"
										value="<spring:message text="Add product"/>" />
								</c:if></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
		<div class="w3-container w3-third"></div>
		<br>
		<div class="w3-row">
			<div class="w3-container w3-quarter"></div>
			<div class="w3-container w3-half">

				<c:if test="${!empty productList}">
					<table class="w3-table w3-bordered w3-striped w3-card-4">
						<tr class="w3-black">
							<th>Product ID</th>
							<th>Product Name</th>
							<th>Product Description</th>
							<th>Product Price</th>
							<th>Product Supplier</th>
							<th>Image</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
						<c:forEach items="${productList}" var="product">
							<tr>
								<td>${product.id}</td>
								<td>${product.name}</td>
								<td>${product.description}</td>
								<td>${product.price}</td>
								<td>${product.supplier}</td>
								<td>${product.image}</td>
								
								<td>
									<form action="editproduct/${product.id}" method="post">
										<input type="submit" value="Edit" class="w3-btn w3-black">
									</form>
								</td>
								<td><form action="removeproduct/${product.id}">
										<input type="submit" value="Delete" class="w3-btn w3-black">
									</form></td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
			</div>
			<div class="w3-container w3-quarter"></div>
		</div>
	</div>
</body>
</html>




<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/background.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet">
<script>
	var app = angular.module('myApp', []);
	function MyController($scope, $http) {
		$scope.sortType = 'name'; // set the default sort type
		$scope.sortReverse = false; // set the default sort order
		$scope.search ='';
		$scope.getDataFromServer = function() {
			$http({
				method : 'GET',
				url : 'productgson'
			}).success(function(data, status, headers, config) {
				$scope.products = data;// alert(data); 
			}).error(function(data, status, headers, config) {
			});
		};
	};
</script>
</head>
<body style="padding-top: 75px">

	<div class="container row">
		<div class="col-sm-3">
		</div>
		<div class="col-sm-6">
			<c:url var="addAction" value="addproduct"></c:url>
			<form:form action="${addAction}" commandName="product" enctype="multipart/form-data" method="post">
				<table>		
				<tr>
						<c:choose>
							<c:when test="${!empty SuccessMessage}">
								<td colspan="2">
									<div class="alert alert-success fade in">
										<a href="#" class="close" data-dismiss="alert"
											aria-label="close">&times;</a>${SuccessMessage}
									</div>
								</td>
							</c:when>
							<c:when test="${!empty DeleteMessage}">
								<td colspan="2">
									<div class="alert alert-danger fade in">
										<a href="#" class="close" data-dismiss="alert"
											aria-label="close">&times;</a>${DeleteMessage}
									</div>
								</td>
							</c:when>
						</c:choose>
					<tr>
						
						<c:choose>
							<c:when test="${product.id gt 0}">
							<td><form:label class="btn btn-default btn-block" path="id">
								<spring:message text="Id" />
							</form:label></td>
								<td><form:input class="form-control" path="id"
										readonly="true" /></td>
							</c:when>
							<c:otherwise>
								<td><form:input class="form-control" path="id"
										pattern=".{2,10}" required="true"
										title="id should contains 2 to 10 characters" /></td>
							</c:otherwise>
						</c:choose>
					<tr>
						<td><form:label class="btn btn-default btn-block" path="name">
								<spring:message text="Name" />
							</form:label></td>
						<td><form:input class="form-control" path="name"
								required="true" /></td>
					</tr>
					<tr>
						<td><form:label class="btn btn-default btn-block" path="description">
								<spring:message text="Description" />
							</form:label></td>
						<td><form:input class="form-control" path="description"
								required="true" /></td>
					</tr>
					<tr>
						<td><form:label class="btn btn-default btn-block" path="price">
								<spring:message text="Price" />
							</form:label></td>
						<td><form:input type="number" class="form-control" min="1" step="1" path="price"
								required="true" /></td>
					</tr>
					<tr>
							<td><form:label class="btn btn-default btn-block" path="supplier">
									<spring:message text="Supplier" />
								</form:label></td>
							<td><form:select path="supplier" class="form-control" required="true">
							<c:forEach items="${supplierList}" var="supplier">
								<form:option class="form-control" value="${supplier.id}">${supplier.name}</form:option>
							</c:forEach>
								</form:select></td>
						</tr>
						<tr>
							<td><form:label class="btn btn-default btn-block" path="categoryid">
									<spring:message text="Category" />
								</form:label></td>
							<td><form:select class="form-control" path="categoryid" required="true">
							<c:forEach items="${categoryList}" var="category">
								<form:option class="form-control" value="${category.id}">${category.name}</form:option>
							</c:forEach>
								</form:select></td>
						</tr>
						<tr>
							<td><form:label class="btn btn-default btn-block" path="image">
									<spring:message text="Image" />
								</form:label></td>
							<td><form:input type="file" class=" btn btn-default btn-block form-control" path="image" required="true" /></td>
						</tr>
						<tr>
				</table>
				<br>
				<c:if test="${!empty category.name}">
					<input class="btn btn-block btn-primary" type="submit"
						value="Edit Product" />
				</c:if>
				<c:if test="${empty category.name}">
					<input class="btn btn-block btn-primary" type="submit"
						value="Add Product" />
				</c:if>
			</form:form>
		</div>
		<div class="col-sm-3"></div>
	</div>
	<!--  -->
	<c:choose>
		<c:when test="${!EditProduct}">
			<div class="container" data-ng-app="myApp"
				data-ng-controller="MyController" data-ng-init="getDataFromServer()">
				<form>
					<input
						class="w3-input w3-animate-input w3-border w3-round w3-small"
						data-ng-model="search" type="text" placeholder=" Search Product"
						style="width: 20%">

				</form>
				<br>
				<table class="table table-bordered table-hover ">
					<thead>
						<tr >
							<th>Product ID</th>
							<th>Product Name</th>
							<th>Product Description</th>
							<th>Product Price</th>
							<th>Supplier</th>
							<th>Image</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<tr
							data-ng-repeat="product in products | orderBy:sortType:sortReverse | filter:search">
							    <td>${product.id}</td>
								<td>${product.name}</td>
								<td>${product.description}</td>
								<td>${product.price}</td>
								<td>${product.supplier}</td>
								<td>${product.image}</td>
							
							<td><a class="btn btn-info btn-xs"
								href="editproduct/{{product.id}}">Edit</a></td>
							<td><a class="btn btn-danger btn-xs"
								href="removeproduct/{{product.id}}">Delete</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</c:when>
		<c:otherwise>
			<div style="margin-bottom: 70px"></div>
		</c:otherwise>
	</c:choose>
</body>
</html>  --%>