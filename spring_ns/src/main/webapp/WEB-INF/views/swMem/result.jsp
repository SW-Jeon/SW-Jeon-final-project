<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="text-align: center;">
	<c:choose>
		<c:when test="${code=='success' }">
			<img src="${cp }/resources/maincss/images/logo/ready.png" >
			<h1> 요청하신 작업을 성공하였습니다.</h1>
		</c:when>
		<c:otherwise>
			<img src="${cp }/resources/maincss/images/logo/fail.png" >
			<h1> 오류로 인하여 실패하였습니다.</h1>
		</c:otherwise>
	</c:choose>
	<button class="btn btn-danger mt-5" onclick="location.href='${cp }/' ">홈으로</button>
</div>