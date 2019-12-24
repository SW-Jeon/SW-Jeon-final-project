<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bsHeader.jsp -->
 <style type="text/css">
      .centered {
        display: block;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
      }
    </style>
	<nav class="navbar navbar-expand navbar-dark  static-top centered"  >
		<a  href="${cp}/" ><img src="${cp }/resources/maincss/images/logo/mini.png" alt="logo images"  style="width: 160px; height: 160px; float: left; "></a>
		<a class="btn btn-block btn-lg btn-info "  href="${cp}/bsLogout" style="width:150px; height: 50px; float: right;">
			<i class ="fas fa-power-off"> 로그아웃</i>
			</a>
	    <a class="navbar-brand " href="${cp }/business/businessMain">
	     	<b style="font-size: 2em; color:white;">사업자</b> 
	     </a>
	</nav>