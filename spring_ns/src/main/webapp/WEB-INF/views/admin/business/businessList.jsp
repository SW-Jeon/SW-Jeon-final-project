<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- businessList -->
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
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
						<th class="to">상태변경</th>
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
								<td class="con"><span  style="color:black;">등록 대기중</span></td>
								</c:when>
								<c:when test="${vo.b_state =='2' }">
								<td class="con"><span  style="color:blue;"><b>승인 완료</b></span></td>
								</c:when>
								<c:when test="${vo.b_state =='3' }">
								<td class="con"><span  style="color:gray;">업체 탈퇴</span></td>
								</c:when>
								<c:when test="${vo.b_state =='4' }">
								<td class="con"><span  style="color:red;"><b>업체 정지</b></span></td>
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