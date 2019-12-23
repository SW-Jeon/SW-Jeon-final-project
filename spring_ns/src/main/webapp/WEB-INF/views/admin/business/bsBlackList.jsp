<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bsCareList -->
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>
 
<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 
	 
  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center">잦은 신고 업체 현황</h1>
			<table class="table table-hover table-striped">
				<thead>
					<tr  class="table-success">
						<th class="to">업체이름</th>
						<th class="to">신고횟수</th>
						<th class="to">업체상태</th>
						<th class="to">상태변경</th>
						<th class="to">삭제</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${listBlack }">		
				<tbody>
					<tr class="table-light">
						<td class="con">${ vo.d_sname}</td>
						<td class="con">${ vo.black}</td>
						<c:choose>
								<c:when test="${vo.re_state =='1' }">
								<td class="con"><span  style="color:black;"><b>신고 접수중</b></span></td>
								</c:when>
								<c:when test="${vo.re_state =='2' }">
								<td class="con"><span  style="color:blue;"><b>신고 확인중</b></span></td>
								</c:when>
								<c:when test="${vo.re_state =='3' }">
								<td class="con"><span  style="color:orange;"><b>처리 완료</b></span></td>
								</c:when>
								<c:when test="${vo.re_state =='4' }">
								<td class="con"><span  style="color:red;"><b>업체 경고</b></span></td>
								</c:when>
								<c:when test="${vo.re_state =='5' }">
								<td class="con"><span  style="color:hotpink;"><b>업체 정지</b></span></td>
								</c:when>
						</c:choose>
						<td class="con"><a href="${cp}/admin/bsBlackUpdate?d_sname=${vo.d_sname}" data-toggle="tooltip" data-original-title="Update" ><i class="fas fa-edit"></i></a></td>
						<td class="con"><a href="${cp}/admin/bsBlackDelete?d_sname=${vo.d_sname}" data-toggle="tooltip" data-original-title="Remove" ><i class="fa fa-times" style="color: red;"></i></a></td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
		</div>
	</div>
</div>