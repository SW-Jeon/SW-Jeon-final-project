<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${cp }/resources/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
window.onload=function(){
var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
 	oAppRef: oEditors,
 	elPlaceHolder: "ir1",
 	sSkinURI: "${cp }/resources/se2/SmartEditor2Skin.html",
 	fCreator: "createSEditor2"
	});
	var btn = document.getElementById("writebtn");
	var btn2 = document.getElementById("writebtn2");
	btn.onclick = function(){
		submitContents(btn);
	}
	btn2.onclick = function(){
		back();
	}
	function submitContents(elClickedObj) {
		 // 에디터의 내용이 textarea에 적용된다.
		 oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);

		 // 에디터의 내용에 대한 값 검증은 이곳에서
		 // document.getElementById("ir1").value를 이용해서 처리한다.

		 try {
		     elClickedObj.form.submit();
		 } catch(e) {}
	}
	function back() {
		history.go(-1);
	}
}
</script>
</head>
<body>
<br>
<h1 class="text-info text-center mt-5 mb-5">블로그 작성</h1>
<form method="post" action="${cp }/bloginsert" name="writefrm" id="writefrm" enctype="multipart/form-data" style="padding-left: 330px;">
	<input type="hidden" name="bl_name" value="${bl_name }">
	<div class="form-group">
		<label for="title">제목</label><input type="text" class="form-control" name="title" style="width: 60%;">
	</div>
	<div class="">
	<textarea name="ir1" id="ir1" rows="10" cols="100" placeholder="500자"></textarea>
	</div>
	<div class="form-group">
		<label for="file1">파일올리기</label><br>
		<input type="file" name="file1">
	</div>
	<div class="form-group mt-3" style="padding-left: 330px;">
		<button type="submit" class="btn btn-primary" id="writebtn">저장</button>
		<button type="reset" class="btn btn-danger" id="writebtn2" >취소</button>
	</div>
</form>
</body>
</html>