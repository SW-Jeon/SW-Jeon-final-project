<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-6" style="background-color: red; float: left; text-align: center;">
<c:forEach var="i" items="${list }">
	<img src="${cp}/resources/imgpro/${i.bl_profile }" style="width: 200px; border-radius: 50%">
</c:forEach>
</div>
<div class="col-md-6" style="background-color: blue; float: left;">
</div>
</body>
</html>