<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- adminNavi -->
<nav class="nav navbar-nav" style="float: left;">
		 <ul class="sidebar navbar-nav" >
		      <li class="nav-item">
		        	<a class="nav-link  active" href="#"><i class="fas fa-portrait mr-2 ml-2" ></i><span>관리</span></a>
		      </li>
		      <li class="nav-item">
		       		<a class="nav-link" href="${cp }/pj/bs/BqList"><i class="fas fa-bell mr-2 ml-2"></i><span>문의 목록</span></a>
		      </li>      
		     <li class="nav-item">
		       		<a class="nav-link" href="${cp }/pj/bs/bqdetailupload"><i class="fas fa-feather-alt mr-2 ml-2"></i><span>업체 등록</span></a>
		      </li>
		      <!--  
		      <li class="nav-item">
		       		<a class="nav-link" href="#"><i class="fas fa-feather-alt mr-2 ml-2"></i><span>메뉴 등록</span></a>
		      </li>
		      -->
		</ul>
</nav> 