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
	
<!-- Bootstrap core CSS -->
  	<link href="${cp }/resources/maincss/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${cp }/resources/maincss/css/plugins.css">
	<link rel="stylesheet" href="${cp }/resources/maincss/css/style.css">

<!-- Custom fonts for this template -->
  	<link href="${cp }/resources/maincss/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  	<link href="${cp }/resources/maincss/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

<!-- Atllantis CSS -->
	<link rel="stylesheet" href="${cp }/resources/admin/css/atlantis.css">

  <!-- Custom styles for this template -->
  <link href="${cp }/resources/maincss/css/landing-page.min.css" rel="stylesheet">

   <!-- Modernizer js -->
 <script src="${cp }/resources/maincss/js/vendor/modernizr-3.5.0.min.js"></script>
 
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
  <script src="${cp }/resources/maincss/vendor/jquery/jquery.min.js"></script>
  <script src="${cp }/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${cp }/resources/maincss/js/vendor/jquery-3.2.1.min.js"></script>
  <script src="${cp }/resources/maincss/js/popper.min.js"></script>
  <script src="${cp }/resources/maincss/js/bootstrap.min.js"></script>
  <script src="${cp }/resources/maincss/js/plugins.js"></script>
  <script src="${cp }/resources/maincss/js/active.js"></script>
 
<!--   Core JS Files   -->
	<script src="${cp }/resources/admin/js/core/jquery.3.2.1.min.js"></script>
	<script src="${cp }/resources/admin/js/core/popper.min.js"></script>
	<script src="${cp }/resources/admin/js/core/bootstrap.min.js"></script>

<!-- jQuery UI -->
	<script src="${cp }/resources/admin/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="${cp }/resources/admin/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

<!-- Chart JS -->
	<script src="${cp }/resources/admin/js/plugin/chart.js/chart.min.js"></script>

<!-- jQuery Sparkline -->
	<script src="${cp }/resources/admin/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

<!-- Chart Circle -->
	<script src="${cp }/resources/admin/js/plugin/chart-circle/circles.min.js"></script>

<!-- Datatables -->
	<script src="${cp }/resources/admin/js/plugin/datatables/datatables.min.js"></script>

<!-- Bootstrap Notify -->
	<script src="${cp }/resources/admin/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

<!-- jQuery Vector Maps -->
	<script src="${cp }/resources/admin/js/plugin/jqvmap/jquery.vmap.min.js"></script>
	<script src="${cp }/resources/admin/js/plugin/jqvmap/maps/jquery.vmap.world.js"></script>

<!-- Sweet Alert -->
	<script src="${cp }/resources/admin/js/plugin/sweetalert/sweetalert.min.js"></script>
	
<!-- Atlantis JS -->
	<script src="${cp }/resources/admin/js/atlantis.min.js"></script>

	<script src="${cp }/resources/admin/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {"families":["Lato:300,400,700,900"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['${cp }/resources/admin/css/fonts.min.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
</script>
</body>
</html>