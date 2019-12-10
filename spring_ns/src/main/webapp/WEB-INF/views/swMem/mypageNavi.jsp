<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- mypageNavi -->
	<nav class="nav flex-column col-md-2" style="float: left;padding: 30px; border: 2px solid red;">
		  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true" style="font-weight: bolder; font-size: 2em;">${vo.m_name } 님의 Home</a>
		  <a class="nav-link" href=" ${cp }/memUpdate?m_phone=${m_phone}">정보 수정</a>
		  <a class="nav-link" href=" ${cp }/memDelete?m_phone=${m_phone}" >탈퇴</a>
		  <a class="nav-link" href="#">찜 목록</a>
		  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">문의</a> 
	</nav>
