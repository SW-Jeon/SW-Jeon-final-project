<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- storyList -->
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

	 
  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center mb-5">낭만 매거진</h1>
			<button class="btn btn-primary mb-3" onclick="location.href='${cp }/admin/Story' "><i class="fas fa-marker"> 글쓰기</i></button>
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
						<td class="con">${ vo.s_num}</td>
						<td class="con"><a href="${cp }/admin/storyDetail?s_num=${vo.s_num}" data-toggle="tooltip" data-original-title="Detail" >${ vo.s_title}</a></td>
						<td class="con">${ vo.s_date}</td>
						<td class="con"><button type="button" data-toggle="tooltip"  class="btn btn-link " data-original-title="Update"
							onclick="location.href='${cp}/admin/storyUpdate?s_num=${vo.s_num}' "><i class="fas fa-pencil-alt" style="font-size: 20px;"></i></button></td>
						<td class="con"><button type="button" data-toggle="tooltip"  class="btn btn-link " data-original-title="Remove"
							onclick="location.href='${cp}/admin/storyDelete?s_num=${vo.s_num}' "><i class="fa fa-times" style="font-size: 20px;"></i></button></td>	
					</tr>
				</tbody>
			</c:forEach>
			</table>
		</div>
	</div>
</div>