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
<h1>${blogname }</h1>
<c:choose>
<c:when test="${empty r_pic }">
<img src="${cp }/resources/maincss/images/logo/non.png" width="200px" height="200px">
</c:when>
<c:otherwise>
<img src="${cp}/resources/imgpro/${r_pic }" width="200px" height="200px">
</c:otherwise>
</c:choose>
</body>
</html>
