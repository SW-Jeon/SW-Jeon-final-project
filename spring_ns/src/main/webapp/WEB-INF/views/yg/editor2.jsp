<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
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
<form method="post" action="${cp }/blogupdateok" name="writefrm" id="writefrm">
<span>제목:</span>&nbsp&nbsp&nbsp<input type="text" name="ed_title" style="width: 670px;" value="${vo.ed_title }"><br><br>
<input type="hidden" name="ed_num" value="${vo.ed_num }">
<textarea name="ir1" id="ir1" rows="10" cols="100" placeholder="500자" >${vo.ed_content}</textarea>
<input type="submit" class="btn btn-primary mt-3" id="writebtn" name="writebtn" value="수정">
<input type="button" class="btn btn-primary mt-3" id="writebtn2" name="writebtn2" value="취소">
</form>
</body>
</html>