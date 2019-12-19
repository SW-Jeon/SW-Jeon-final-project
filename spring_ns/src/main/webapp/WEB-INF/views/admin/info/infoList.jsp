<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- infoList -->
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

	 
  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center">공지사항 목록</h1>
			<button class="btn btn-primary mb-3" onclick="location.href='${cp }/admin/Info' "><i class="fas fa-marker"> 글쓰기</i></button>
			<table class="table table-hover table-striped">
				<thead>
					<tr  class="table-success">
						<th class="to">글번호</th>
						<th class="to">제목</th>
						<th class="to">작성일</th>
						<th class="to">수정</th>
						<th class="to">삭제</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${listAll }">		
				<tbody>
					<tr class="table-light">
						<td class="con">${ vo.i_num}</td>
						<td class="con"><a href="${cp }/admin/infoDetail?i_num=${vo.i_num}" data-toggle="tooltip" data-original-title="Detail" >${ vo.i_title}</a></td>
						<td class="con">${ vo.i_date}</td>
						<td class="con"><button type="button" data-toggle="tooltip"  class="btn btn-link " data-original-title="Update"
							onclick="location.href='${cp}/admin/infoUpdate?i_num=${vo.i_num}' "><i class="fas fa-pencil-alt" style="font-size: 20px;"></i></button></td>
						<td class="con"><button type="button" data-toggle="tooltip"  class="btn btn-link " data-original-title="Remove"
							onclick="location.href='${cp}/admin/infoDelete?i_num=${vo.i_num}' "><i class="fa fa-times" style="font-size: 20px;"></i></button></td>	
					</tr>
				</tbody>
			</c:forEach>
			</table>
		</div>
	</div>
</div>