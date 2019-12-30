<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="vo" items="${list }">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2">
			${vo.m_phone }<br>
			
			<c:choose>
				<c:when test="${ vo.r_score==1 }">
					<img src="${cp}/resources/score/star1.png" >
				</c:when>
				<c:when test="${ vo.r_score==2 }">
					<img src="${cp}/resources/score/star2.png">
				</c:when>
				<c:when test="${ vo.r_score==3 }">
					<img src="${cp}/resources/score/star3.png">
				</c:when>
				<c:when test="${ vo.r_score==4 }">
					<img src="${cp}/resources/score/star4.png">
				</c:when>
				<c:when test="${ vo.r_score==5 }">
					<img src="${cp}/resources/score/star5.png">
				</c:when>
			</c:choose>
			
		</div>
		<div class="col-md-10">
			${vo.r_content }<br>
			<img src="${cp }/resources/maincss/images/logo/non.png" width="200px" height="200px">
		</div>
	</div>
</div>
</c:forEach>
	
		
		
			
			
			
		

