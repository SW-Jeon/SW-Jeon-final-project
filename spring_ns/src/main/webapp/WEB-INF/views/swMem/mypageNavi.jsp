<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- mypageNavi -->
<style>
	.nav span{color:#2E9AFE; font-weight: bolder; font-size: 1.8em;}
	.nav a{font-size: 1.3em; margin-left: 30px; font-weight: bold; }
	a:hover{color:red;}
</style>

	<nav class="nav nav-tabs flex-column col-md-2 bg-light" style="float: left;  height:1500px; width:500px; ">
		  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true" style="font-weight: bold; font-size:1.2em; "><span>${vo.m_name }</span> 님</a>
		  <a class="nav-link" href=" ${cp }/memUpdate?m_phone=${m_phone}">정보 수정</a>
		  <a class="nav-link" href=" ${cp }/memDelete?m_phone=${m_phone}" >계정 탈퇴</a>
		  <a class="nav-link" href="${cp }/swMem/mqMyList?m_phone=${m_phone}">회원 문의</a>
		  <a class="nav-link" href="${cp }/zzimlists?m_phone=${m_phone}">찜 목록</a> 
	</nav>
