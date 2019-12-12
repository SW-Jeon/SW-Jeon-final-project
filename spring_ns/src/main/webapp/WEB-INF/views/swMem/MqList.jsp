<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- MqList -->

<style>
	.to{font-size: 3em; font-weight: bold;}
	.con{font-size: 1.2em;}
	td:HOVER {color: blue; font-weight: bolder; font-size: 1.2em;}
</style>

<link href="${cp }resources/list/css/bootstrap.min.css" rel="stylesheet">
<link href="${cp }resources/list/css/style.css" rel="stylesheet">


  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center">회원 문의 목록</h1>
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th class="to">글번호</th>
						<th class="to">전화번호</th>
						<th class="to">제목</th>
						<th class="to">내용</th>
						<th class="to">답변</th>
						<th class="to">답변상태</th>
						<th class="to">작성일</th>
						<th class="to">삭제</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${listAll }">		
				<tbody>
					<tr class="table-danger">
						<td class="con">${ vo.mq_num}</td>
						<td class="con">${ vo.m_phone}</td>
						<td class="con">${ vo.mq_title}</td>
						<td class="con">${ vo.mq_content}</td>
						<td class="con" style="color:gray">${vo.mq_reply }</td>
						<td class="con" style="color:red;"><a href="${cp}/memUpdate1?m_phone=${vo.m_phone}">${vo.mq_state }</a></td>
						<td class="con">${ vo.mq_date}</td>
						<td class="con"><a href="${cp}/memUpdate1?m_phone=${vo.m_phone}">삭제</a></td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
				<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
		</div>
	</div>
</div>

    <script src="${cp }resources/list/js/jquery.min.js"></script>
    <script src="${cp }resources/list/js/bootstrap.min.js"></script>
    <script src="${cp }resources/list/js/scripts.js"></script>