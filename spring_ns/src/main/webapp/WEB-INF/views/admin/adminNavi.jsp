<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- adminNavi -->
<nav class="nav navbar-nav" style="float: left;">
		 <ul class="sidebar navbar-nav" >
		      <li class="nav-item">
		        	<a class="nav-link  active" href="${cp}/memList"><i class="fas fa-fw fa-tachometer-alt"></i><span>회원관리</span></a>
		      </li>
		      <li class="nav-item">
		       		<a class="nav-link" href="${cp }/swMem/mqList"> <i class="fas fa-fw fa-folder"></i><span>회원문의</span></a>
		      </li>   
		</ul>
</nav> 