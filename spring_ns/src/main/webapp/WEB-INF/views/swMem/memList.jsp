<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- memList -->
<style>
	.to{font-size: 3em; font-weight: bold;}
	.con{font-size: 1.2em;}
</style>

  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center">회원목록</h1>
			<table class="table table-hover table-striped">
				<thead>
					<tr>
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
					<tr class="table-danger">
						<td class="con">${ vo.m_phone}</td>
						<td class="con">${ vo.m_name}</td>
						<td class="con">${ vo.m_mail}</td>
						<td class="con">${ vo.m_pwd}</td>
						<td class="con" style="color:red;">${vo.m_status }</td>
						<td class="con"><a href="${cp}/memUpdate1?m_phone=${vo.m_phone}" data-toggle="tooltip" data-original-title="Update" >수정</a></td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
				<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
		</div>
	</div>
</div>
