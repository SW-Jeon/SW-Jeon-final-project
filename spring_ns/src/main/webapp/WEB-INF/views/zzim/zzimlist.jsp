<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<table style="border: 1px solid black;">
		<c:forEach var="vo" items="${list }" >
		<tr>
			<th>업체사진</th>
			<td>${vo.p_pic }</td>
			<th>업체이름</th>
			<td>${vo.d_sname }</td>
			<th>전화번호</th>
			<td>${vo.d_phone }</td>
			<th>주소</th>
			<td>${vo.d_addr }</td>
		</tr>
		</c:forEach>
	</table>

</div>