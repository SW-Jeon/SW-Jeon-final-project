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
<form action="${cp }/reportOk" method="post" role="form" >
	<input type="hidden" value="admin" name="a_id">
	<input type="hidden" value="${dnum }" name="d_num">
	<input type="hidden" value="${phone }" name="m_phone">
	<div class="form-group">
		<label for="re_title">제목</label><input type="text" class="form-control" name="re_title"  >
	</div>
	<div class="form-group">
		<label for="re_category">신고유형</label><br>
		<input type="radio"  value="위치다름" name="re_category"   > 위치다름
		<input type="radio"  value="위생불량" name="re_category" class="ml-3"  > 위생불량
		<input type="radio"  value="불친절" name="re_category"  class="ml-3"> 불친절
	</div>
	<div class="form-group">
		<label for="re_content">내용</label><br>
		<textarea rows="5" cols="80" name="re_content" style="resize: none;"></textarea>
	</div>
	<div class="form-group" style="padding-left: 120px;">
		<button type="submit"  class="btn btn-primary" onclick="okok()">신고하기</button>
		<button type="reset"class="btn btn-danger">취소</button>
	</div>
	</form>
</body>
<script type="text/javascript">
	var x=(window.screen.width/2)-(200/2);
	var y=(window.screen.height/2)-(200/2);
	function okok() {
		self.close();
		window.open('${cp}/infoclose','_blank','status=no,height=200,width=500,left='+x+',top='+y);
	}
</script>
</html>