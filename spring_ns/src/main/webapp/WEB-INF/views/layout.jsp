<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="UTF-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>NangMan</title>
	
  <!-- Bootstrap core CSS -->
  <link href="${cp }/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="${cp }/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="${cp }/resources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

	<link rel="stylesheet" href="${cp }/resources/css/plugins.css">
	<link rel="stylesheet" href="${cp }/resources/css/style.css">

  <!-- Custom styles for this template -->
  <link href="${cp }/resources/css/landing-page.min.css" rel="stylesheet">

   <!-- Modernizer js -->
 <script src="${cp }/resources/js/vendor/modernizr-3.5.0.min.js"></script>
<style type="text/css">
	#content{min-height: 1200px;}
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
		<div id="footer">
			<tiles:insertAttribute name="footer"/>
		</div>
	</div>
	
<!-- Bootstrap core JavaScript -->
  <script src="${cp }/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${cp }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${cp }/resources/js/vendor/jquery-3.2.1.min.js"></script>
  <script src="${cp }/resources/js/popper.min.js"></script>
  <script src="${cp }/resources/js/bootstrap.min.js"></script>
  <script src="${cp }/resources/js/plugins.js"></script>
  <script src="${cp }/resources/js/active.js"></script>
</body>
</html>