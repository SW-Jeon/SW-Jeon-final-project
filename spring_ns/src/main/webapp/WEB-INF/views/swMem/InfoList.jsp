<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- infoList -->
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>

 
  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center mb-5 mt-3">공 지 사 항</h1>
			<table class="table table-hover table-striped">
				<thead>
					<tr  class="table-success">
						<th class="to">글번호</th>
						<th class="to" >제목</th>
						<th class="to">작성일</th>
						<th class="to">조회수</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${listAll }">		
				<tbody>
					<tr class="table-light">
						<td class="con">${ vo.i_num}</td>
						<td class="con"><a href="${cp }/swMem/InfoDetail?i_num=${vo.i_num}" data-toggle="tooltip" data-original-title="Detail" >${ vo.i_title}</a></td>
						<td class="con">${ vo.i_date}</td>
						<td class="con">${ vo.i_hit}</td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
		</div>
	</div>
</div>