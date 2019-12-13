<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- MqMyList -->

<div class="mypage-wrap mt-5 mx-auto">

	<!-- mypage area -->
<div class="mypage-area ">
<!-- contents -->
<div class="mypage-con ">
		<!-- 네비바 -->
		<jsp:include page="/WEB-INF/views/swMem/mypageNavi.jsp"/>

  <div class="container-fluid" >
	<div class="row">
		<div class="col-md-12 " style="margin-top:80px;">
		<h1 class="text-info text-center">나의 문의 목록</h1>
			<button class="btn btn-primary" onclick="location.href='${cp }/swMem/memQuestion' ">문의하기</button>
			<table class="table table-hover table-striped ">
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>답변내용</th>
						<th>답변상태</th>
						<th>작성일</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${listMy}">		
				<tbody>
					<tr class="table-danger">
						<td>${ vo.mq_num}</td>
						<td><a href="${cp }/swMem/mqContent?mq_num=${ vo.mq_num}&m_phone=${vo.m_phone}" data-toggle="tooltip" data-original-title="Detail" >${ vo.mq_title}</a></td>
						<td style="color:red;">${vo.mq_reply }</td>
						<c:choose>
								<c:when test="${vo.mq_state =='1' }">
								<td ><span  style="color:blue;">대기</span></td>
								</c:when>
								<c:when test="${vo.mq_state =='2' }">
								<td ><span  style="color:red;">완료</span></td>
								</c:when>
						</c:choose>
						<td>${ vo.mq_date}</td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
				<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
		</div>
	</div>
</div>

	<!-- //contents -->
		</div>
	</div>
</div>


    