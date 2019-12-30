<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>

<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1 class="text-info text-center">등록된 광고 목록</h1>
		<table class="table table-hover table-striped">
			<thead>
					<tr  class="table-success">
						<th class="to">광고번호</th>
						<th class="to">광고주</th>
						<th class="to">노출위치</th>
						<th class="to">이미지</th>
						<th class="to">단가(원)</th>
							</tr>
				</thead>
		<c:forEach var="vo" items="${list }">
			<tbody>
				<tr class="table-light">
					<td class="con">${vo.ad_num }</td>
					<td class="con">${vo.ad_name }</td>
					<td class="con">${vo.ad_site }</td>
					<td class="con">${vo.ad_pic }</td>
					<td class="con">${vo.ad_pay }</td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
	<ul class="pagination justify-content-center mt-3">
		<c:if test="${vo.prev }">
				<li class="page-item">
					<a class="page-link"  href=""><i class="fa fa-chevron-left"></i>&laquo;</a>
				</li>
		</c:if>
		<c:forEach begin="${vo.startPage }" end="${vo.endPage }" var="pageNum">
				<a class="page-link"  href="">${pageNum }</a>
		
		</c:forEach>
		<c:if test="${vo.next && vo.endPage >0 }">
				<li class="page-item">
				<a class="page-link" href=""><i class="fa fa-chevron-right"></i>&raquo;</a>
			</li>
		</c:if>
	</ul>
</div>
</div>
</div>
