<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<title>NangMan</title>

  <!-- Custom fonts for this template-->
  <link href="${cp }/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="${cp }/resources/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${cp }/resources/admin/css/sb-admin.css" rel="stylesheet">
</head>

<body>
	<div id="wrap">
		<div id="head">
			<tiles:insertAttribute name="head"/>
		</div>
		<div id="con">
			<tiles:insertAttribute name="con"/>
		</div>
	</div>
	
	 <!-- Bootstrap core JavaScript-->
  <script src="${cp }/resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="${cp }/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${cp }/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${cp }/resources/admin/js/sb-admin.min.js"></script>
  
   <!-- Page level plugin JavaScript-->
  
  <script src="${cp }/resources/admin/vendor/datatables/jquery.dataTables.js"></script>
  <script src="${cp }/resources/admin/vendor/datatables/dataTables.bootstrap4.js"></script>
  
    <!-- Demo scripts for this page-->
  <script src="${cp }/resources/admin/js/demo/datatables-demo.js"></script>

  </body>
</html>