<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<c:choose>
		<c:when test="${code=='success' }">
			<h1> 요청하신 작업을 성공하였습니다.</h1>
		</c:when>
		<c:otherwise>
			<h1> 오류로 인하여 실패하였습니다.</h1>
		</c:otherwise>
	</c:choose>
	<a href="${cp }/">홈으로</a>
</div>