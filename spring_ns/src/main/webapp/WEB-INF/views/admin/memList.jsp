<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- memList -->
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>
 
<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 
	 
  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center pt-3 mb-5">회원목록</h1>
			<table class="table table-hover table-striped">
				<thead>
					<tr  class="table-success">
						<th class="to">전화번호</th>
						<th class="to">이름</th>
						<th class="to">이메일</th>
						<th class="to">비밀번호</th>
						<th class="to">가입상태</th>
						<th class="to">수정</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${list }">		
				<tbody>
					<tr class="table-light">
						<td class="con">${ vo.m_phone}</td>
						<td class="con">${ vo.m_name}</td>
						<td class="con">${ vo.m_mail}</td>
						<td class="con">${ vo.m_pwd}</td>
						<c:choose>
								<c:when test="${vo.m_status =='1' }">
								<td class="con"><span  style="color:blue;">가입중</span></td>
								</c:when>
								<c:when test="${vo.m_status =='2' }">
								<td class="con"><span  style="color:red;">회원탈퇴</span></td>
								</c:when>
						</c:choose>
						<td class="con"><a href="${cp}/memUpdate1?m_phone=${vo.m_phone}" data-toggle="tooltip" data-original-title="Update" ><i class="fas fa-edit"></i></a></td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
		</div>
	</div>
</div>
