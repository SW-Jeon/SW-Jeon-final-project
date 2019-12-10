<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
<form action="${cp }/reportOk" method="post">
	<input type="hidden" value="admin" name="a_id">
	<input type="hidden" value="${dnum }" name="d_num">
	<input type="hidden" value="${phone }" name="m_phone">
	제목<input type="text" name="re_title"><br>
	신고유형<br>
	<input type="radio" value="위치다름" name="re_category">위치다름
	<input type="radio" value="위생불량" name="re_category">위생불량
	<input type="radio" value="불친절" name="re_category">불친절<br>
	내용<br>
	<textarea rows="5" cols="50" name="re_content"></textarea><br>
	<input type="submit" value="신고하기" onclick="okok()">
	</form>
</body>
<script type="text/javascript">
	var x=(window.screen.width/2)-(200/2);
	var y=(window.screen.height/2)-(200/2);
	function okok() {
		self.close();
		window.open('${cp}/infoclose','_blank','status=no,height=300,width=200,left='+x+',top='+y);
	}
</script>
</html>