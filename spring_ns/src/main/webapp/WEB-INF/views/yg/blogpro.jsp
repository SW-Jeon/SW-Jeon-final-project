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
<body >

<h1 class="text-info text-center mt-5 mb-5">블로그 만들기</h1>
<form method="post" action="${cp }/blogproinsert" name="writefrm" id="writefrm" enctype="multipart/form-data">
	<div class="form-group">
		<label for="blogname">블로그 이름</label><input type="text" class="form-control" name="blogname">
	</div>
	<div class="form-group">
		<label for="file1">대표이미지 등록</label><br>
		<input type="file" name="file1">
	</div>
	<div class="form-group text-center">
		<button type="submit" class="btn btn-primary">문의하기</button>
		<button type="reset" class="btn btn-danger" id="writebtn2" >취소</button>
	</div>
</form>
</body>
</html>