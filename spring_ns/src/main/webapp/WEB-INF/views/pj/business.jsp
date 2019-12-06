<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>business.jsp 	</title>
</head>
<body>
<form method="post" action="${cp }/pj/business">
	사업자 등록번호<br>
	<input type="text" name="b_bnum"><br>
	사업자 전화번호<br>
	<input type="text" name="b_phone"><br>
	사업자 이름<br>
	<input type="text" name="b_name"><br>
	<input type="submit" value="등록">

</form>
</body>
</html>
