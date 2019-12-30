<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필등록</title>
<script type="text/javascript">
window.onload=function(){
	var btn2 = document.getElementById("writebtn2");
	btn2.onclick = function(){
		back();
	}
	function back() {
		history.go(-1);
	}
}
</script>
</head>
<body>
<form method="post" action="${cp }/blogproinsert" name="writefrm" id="writefrm" enctype="multipart/form-data">
<span>블로그네임:</span>&nbsp&nbsp&nbsp<input type="text" name="blogname" style="width: 670px;"><br><br>
<span>대표이미지등록:</span><input type="file" name="file1"><br>
<input type="submit" class="btn btn-primary mt-3" value="등록">
<input type="button" class="btn btn-primary mt-3" id="writebtn2" value="취소">
</form>
</body>
</html>