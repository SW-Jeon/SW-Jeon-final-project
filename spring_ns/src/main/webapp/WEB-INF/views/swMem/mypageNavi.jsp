<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- mypageNavi -->
<style>
	span{color:#2E9AFE; font-weight: bolder; font-size: 2em;}
	a{font-size: 1.5em; margin-left: 30px; font-weight: bold; }
	a:hover{color:red;}
</style>

	<nav class="nav flex-column col-md-2" style="float: left;  height:1200px; background-color: #FBEFEF; ">
		  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true" style="font-weight: bolder; font-size:1.7em; margin: 20px;"><span>${vo.m_name }</span>  님의 Home</a>
		  <a class="nav-link" href=" ${cp }/memUpdate?m_phone=${m_phone}">정보 수정</a>
		  <a class="nav-link" href=" ${cp }/memDelete?m_phone=${m_phone}" >계정 탈퇴</a>
		  <a class="nav-link" href="${cp }/swMem/mqMyList?m_phone=${m_phone}">회원 문의</a>
		  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">찜 목록</a> 
	</nav>
