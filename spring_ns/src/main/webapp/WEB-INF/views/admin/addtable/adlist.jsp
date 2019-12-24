<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/>
<style>
	th,td{
		border: 2px solid black;
		text-align: center;
	}
</style>
<div>
	<table style="border: 2px solid black;width: 800px;height: 250px; ">
		<th>광고번호</th>
		<th>광고주</th>
		<th>노출위치</th>
		<th>이미지</th>
		<th>단가</th>
		<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.ad_num }</td>
			<td>${vo.ad_name }</td>
			<td>${vo.ad_site }</td>
			<td>${vo.ad_pic }</td>
			<td>${vo.ad_pay }</td>
			
		</tr>
		</c:forEach>
	</table>
	<ul class="btn-group pagination">
		<c:if test="${vo.prev }">
			<li>
				<a href=""><i class="fa fa-chevron-left"></i></a>
			</li>
		</c:if>
		<c:forEach begin="${vo.startPage }" end="${vo.endPage }" var="pageNum">
			<a href="">[${pageNum }]</a>
		
		</c:forEach>
		<c:if test="${vo.next && vo.endPage >0 }">
			<li>
				<a href=""><i class="fa fa-chevron-right"></i></a>
			</li>
		</c:if>
	</ul>
</div>