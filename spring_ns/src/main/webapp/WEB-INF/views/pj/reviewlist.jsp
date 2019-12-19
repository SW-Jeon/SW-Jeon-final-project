<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="vo" items="${list }">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2">
			${vo.m_phone }<br>
			${vo.r_score }
		</div>
		<div class="col-md-10">
			${vo.r_content }<br>
			<img src="${cp }/resources/upload/${vo.r_pic }" width="200px" height="200px">
		</div>
	</div>
</div>
</c:forEach>
	
		
		
			
			
			
		

