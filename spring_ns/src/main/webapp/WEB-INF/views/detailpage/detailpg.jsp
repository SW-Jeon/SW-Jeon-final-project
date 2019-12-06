<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	#imageinfo ul li img{width: 136px;height: 196px;margin: 2px;}
	#imageinfo ul li{float: left;list-style: none;}
</style>
<div>
	<h1 style="color: red; text-align: center;">${name }</h1>
	<div style="width: 700px;height: 200px; position: relative;left: 200px;top: 30px;">
		<div style="width: 980px;height: 200px;position: absolute; left: 0px;" id="imageinfo">
			<c:forEach var="im" items="${list1 }">
			<ul>
				<li><img src="${cp }/resources/images/test/${im.p_pic }"></li>
			</ul>
			</c:forEach>
		</div>
	</div>
	<div style="margin-top: 400px;margin-bottom: 200px;margin-left: 200px;">
	<table style="color: black;">
	<c:forEach var="vo" items="${list }">
	<tr>
	<th>카테고리</th>
	<td>${vo.d_kind }</td>
	</tr>
	<tr>
	<th>가게번호</th>
	<td>${vo.d_phone }</td>
	</tr>
	<tr>
	<th>가게 주소</th>
	<td>${vo.d_addr }</td>
	</tr>
	<tr>
	<th>주차여부</th>
	<td>${vo.d_park }</td>
	</tr>
	<tr>
	<th>휴업일</th>
	<td>${vo.d_holi }</td>
	</tr>
	<tr>
	<th>영업시간</th>
	<td>${vo.d_time }</td>
	</tr>
	</c:forEach>
	</table>
	</div>
</div>