<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="UTF-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>NangMan</title>

  <script src="${cp }/resources/maincss/js/vendor/jquery-3.2.1.min.js"></script>

<!-- Bootstrap core CSS -->
  	<link href="${cp }/resources/maincss/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${cp }/resources/maincss/css/plugins.css">
	<link rel="stylesheet" href="${cp }/resources/maincss/css/style.css">

<!-- Custom fonts for this template -->
  	<link href="${cp }/resources/maincss/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  	<link href="${cp }/resources/maincss/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">


  <!-- Custom styles for this template -->
  <link href="${cp }/resources/maincss/css/landing-page.min.css" rel="stylesheet">

   <!-- Modernizer js -->
 <script src="${cp }/resources/maincss/js/vendor/modernizr-3.5.0.min.js"></script>
 
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 
<style type="text/css">
	#content{min-height: 1200px; width: 75%; float: left;}
	#right{min-height: 1200px; width: 25%; float: left; margin-right: 0px;}
	#footer{clear: both; height: 200px; background-color: #424242;}
</style>
</head>

<body>
	<div id="wrap">
		<div id="header">
			<tiles:insertAttribute name="header"/>
		</div>
		<div id="content">
			<tiles:insertAttribute name="content"/>
		</div>
		<div id="right">
			<tiles:insertAttribute name="right"/>
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer"/>
		</div>
	</div>
	
<!-- Bootstrap core JavaScript -->
  <script src="${cp }/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<<<<<<< HEAD
=======

>>>>>>> branch 'yg' of https://github.com/SW-Jeon/final-project.git
  <script src="${cp }/resources/maincss/js/popper.min.js"></script>
  <script src="${cp }/resources/maincss/js/bootstrap.min.js"></script>
  <script src="${cp }/resources/maincss/js/plugins.js"></script>
  <script src="${cp }/resources/maincss/js/active.js"></script>
 

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script>
		$(function () {
		$('[data-toggle="tooltip"]').tooltip()
		})
</script>
</body>
</html>