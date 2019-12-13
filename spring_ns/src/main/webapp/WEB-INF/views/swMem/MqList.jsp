<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- MqList -->

  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center">회원 문의 목록</h1>
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th >글번호</th>
						<th >전화번호</th>
						<th >제목</th>
						<th >내용</th>
						<th >답변</th>
						<th>답변상태</th>
						<th >작성일</th>
						<th >삭제</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${listAll }">		
				<tbody>
					<tr class="table-danger">
						<td >${ vo.mq_num}</td>
						<td >${ vo.m_phone}</td>
						<td ><a href="${cp }/swMem/mqAdminCon?mq_num=${vo.mq_num}" data-toggle="tooltip" data-original-title="Detail" >${ vo.mq_title}</a></td>
						<td >${ vo.mq_content}</td>
						<td  style="color:gray">${vo.mq_reply }</td>
						<td  style="color:red;">${vo.mq_state }</td>
						<td >${ vo.mq_date}</td>
						<td ><button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove"
						onclick="location.href='${cp}/swMem/mqDelete?m_phone=${vo.m_phone}' "><i class="fa fa-times"></i></button></td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
				<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
		</div>
	</div>
</div>
