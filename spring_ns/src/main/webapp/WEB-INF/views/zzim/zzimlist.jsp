<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	table th{
		text-align: center;
		background-color: yellow;
	}
	table tr td{
		text-align: center;
	}
</style>
<div>
	<table style="border: 1px solid black; margin-left: 50px; margin-top: 100px;" >
		<th>업체사진</th>
		<th>업체이름</th>
		<th>전화번호</th>
		<th>주소</th>
		<th>상세페이지로가기</th>
		<c:forEach var="vo" items="${list }" >
		
		
		<tr>
			<td><img src="${cp }/resources/maincss/images/test/${vo.p_pic }" style="width: 100px;height: 100px;"></td>
			<td>${vo.d_sname }</td>
			<td>${vo.d_phone }</td>
			<td>${vo.d_addr }</td>
			<td><a href="">이동</a></td>
		</tr>
		</c:forEach>
	</table>
	<ul class="pagination">
		<c:if test="${vo.prev }">
			<li>
				<a href="">이전</a>
			</li>
		</c:if>
		<c:forEach begin="${vo.startPage }" end="${vo.endPage }" var="index">
			<a href="">[${index }]</a>
		
		</c:forEach>
		<c:if test="${vo.next }">
			<li>
				<a href="">[다음]</a>
			</li>
		</c:if>
	</ul>

</div>