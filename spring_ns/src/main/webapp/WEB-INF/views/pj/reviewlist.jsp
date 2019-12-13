<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="500">
	<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.m_phone }</td>
		</tr>
	</c:forEach>
</table>	