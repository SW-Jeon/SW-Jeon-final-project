<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- MqList -->

<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>
 

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 
	 
  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center">회원 문의 목록</h1>
			<table class="table table-hover table-striped">
				<thead>
					<tr  class="table-success">
						<th class="to">글번호</th>
						<th class="to">전화번호</th>
						<th class="to">제목</th>
						<th class="to">답변상태</th>
						<th class="to">작성일</th>
						<th class="to">삭제</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${listAll }">		
				<tbody>
					<tr class="table-light">
						<td class="con">${ vo.mq_num}</td>
						<td class="con">${ vo.m_phone}</td>
						<td class="con"><a href="${cp }/swMem/mqAdminCon?mq_num=${vo.mq_num}" data-toggle="tooltip" data-original-title="Detail" >${ vo.mq_title}</a></td>
							<c:choose>
								<c:when test="${vo.mq_state =='1' }">
								<td class="con"><span  style="color:blue;">대기중</span></td>
								</c:when>
								<c:when test="${vo.mq_state =='2' }">
								<td class="con"><span  style="color:red;">답변완료</span></td>
								</c:when>
						</c:choose>
						<td class="con">${ vo.mq_date}</td>
						<td class="con"><button type="button" data-toggle="tooltip"  class="btn btn-link " data-original-title="Remove"
						onclick="location.href='${cp}/swMem/mqDelete?mq_num=${vo.mq_num}' "><i class="fa fa-times"></i></button></td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
		</div>
	</div>
</div>
