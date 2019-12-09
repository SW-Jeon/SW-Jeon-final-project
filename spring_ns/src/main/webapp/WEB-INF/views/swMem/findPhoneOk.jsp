<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- findPhoneOk.jsp -->
<div>
	<c:choose>
		<c:when test="${code=='find' }">
			<h1> 회원님의 전화번호는 <strong>${phone} </strong>입니다.</h1>
		</c:when>
		<c:when test="${code=='fail' }">
			<h1> 입력하신 회원이 존재하지 않습니다.</h1>
		</c:when>
		<c:otherwise>
			<h1> 오류로 인해 실패하였습니다.</h1>
		</c:otherwise>
	</c:choose>
	<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
</div>