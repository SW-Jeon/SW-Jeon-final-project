<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- adheader.jsp -->
  <style type="text/css">
      .centered {
        display: block;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
      }
    </style>
	
	  

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top centered"  >
		<a class="btn btn-block btn-lg btn-info mb-3"  href="${cp}/" style="width:150px; height: 50px;"><i class ="fas fa-warehouse"> HOME</i></a>
		<a class="btn btn-block btn-lg btn-info "  href="${cp}/adminLogout" style="width:150px; height: 50px; float: right;"><i class ="fas fa-power-off"> 로그아웃</i></a>
	    <a class="navbar-brand " href="${cp }/admin/adminMain">
	    	<img src="${cp }/resources/maincss/images/logo/logo.png" alt="logo images"  style="width: 150px; height: 150px;">
	    	<b style="font-size: 2em;">Admin page</b>
	    </a>
	      
	</nav>

 

			