<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- businessList -->
<style>
	.to{font-size: 1.7em; font-weight: bold;}
	.con{font-size: 1.2em;}
</style>
 
<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 
	 
  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center">업체 목록</h1>
			<table class="table table-hover table-striped">
				<thead>
					<tr  class="table-success">
						<th class="to">번호</th>
						<th class="to">사업자등록번호</th>
						<th class="to">전화번호</th>
						<th class="to">이름</th>
						<th class="to">업체등록상태</th>
						<th class="to">수정</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${list }">		
				<tbody>
					<tr class="table-light">
						<td class="con">${ vo.b_num}</td>
						<td class="con">${ vo.b_bnum}</td>
						<td class="con">${ vo.b_phone}</td>
						<td class="con">${ vo.b_name}</td>
						<c:choose>
								<c:when test="${vo.b_state =='1' }">
								<td ><span  style="color:blue;">등록 대기중</span></td>
								</c:when>
								<c:when test="${vo.b_state =='2' }">
								<td ><span  style="color:red;">등록 승인 완료</span></td>
								</c:when>
						</c:choose>
						<td class="con"><a href="${cp}/admin/businessUpdate?b_num=${vo.b_num}" data-toggle="tooltip" data-original-title="Update" ><i class="fas fa-edit"></i></a></td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
		</div>
	</div>
</div>