<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- adminNavi -->
<nav class="nav navbar-nav" style="float: left;">
		 <ul class="sidebar navbar-nav" >
		      <li class="nav-item">
		        	<a class="nav-link  active" href="${cp}/memList"><i class="fas fa-portrait mr-2 ml-2" ></i><span>회원관리</span></a>
		      </li>
		      <li class="nav-item">
		       		<a class="nav-link" href="${cp }/swMem/mqList"><i class="fas fa-bell mr-2 ml-2"></i><span>회원문의</span></a>
		      </li>      
		      <li class="nav-item">
		       		<a class="nav-link" href="${cp }/admin/infoList"><i class="fas fa-feather-alt mr-2 ml-2" ></i><span>공지사항</span></a>
		      </li>
		       <li class="nav-item">
		       		<a class="nav-link" href="${cp }/admin/storyList"><i class="fas fa-feather-alt mr-2 ml-2"></i><span>낭만매거진</span></a>
		      </li>   
		       <li class="nav-item">
		       		<a class="nav-link" href="${cp }/admin/businessList"><i class="fas fa-feather-alt mr-2 ml-2"></i><span>사업체 목록</span></a>
		      </li>  
		       <li class="nav-item">
		       		<a class="nav-link" href="${cp }/admin/bsCare"><i class="fas fa-feather-alt mr-2 ml-2"></i><span>업체신고관리</span></a>
		      </li>  
		       <li class="nav-item">
		       		<a class="nav-link" href="${cp }/admin/bsBlack"><i class="fas fa-feather-alt mr-2 ml-2"></i><span>Blacklist(업체)</span></a>
		      </li>  
		        <li class="nav-item">
		       		<a class="nav-link" href="#"><i class="fas fa-feather-alt mr-2 ml-2"></i><span>광고</span></a>
		      </li>   
		</ul>
</nav> 