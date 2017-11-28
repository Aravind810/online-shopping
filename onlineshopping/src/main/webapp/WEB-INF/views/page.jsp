<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description"
	content="Free Bootstrap Themes by 365Bootstrap dot com - Free Responsive Html5 Templates">
<meta name="author" content="http://www.365bootstrap.com">

<title>DD Shop Zone - ${title}</title>

<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="${css}/bootstrap.min.css" type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="${css}/myapp.css">


<!-- Custom Fonts -->
<link rel="stylesheet" href="${css}/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="${css}/font-slider.css" type="text/css">

<!-- jQuery and Modernizr-->
<script src="${js}/jquery-2.1.1.js"></script>

<!-- Core JavaScript Files -->
<script src="${js}/bootstrap.min.js"></script>


<!-- self coded javascript -->
<script src="${js}/myapp.js"></script>


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="${js}/html5shiv.js"></script>
        <script src="${js}/respond.min.js"></script>
    <![endif]-->
</head>

<body>


	<div class="wrapper">

		<!--Navigation-->
		<%@include file="./shared/navbar.jsp"%>



		<!-- page content -->

		<div class="content">

			<!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>
			<!-- Only When User Clicks Contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>

		</div>
		<!--  /.container -->

		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>

	</div>
</body>
</html>

