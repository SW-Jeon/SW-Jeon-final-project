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
	
	<label for="b_bnum">사업자 등록번호</label><br>
	<input type="text" name="b_bnum" placeholder="Ex)0000000000"><br>
	<div class="check-font" id="id_check"></div>
	사업자 전화번호<br>
	<input type="text" name="b_phone" placeholder="Ex)01012345678"><br>
	사업자 이름<br>
	<input type="text" name="b_name" placeholder="Ex)홍길동"><br>
	<input type="submit" value="등록" id="submit">

</form>
</body>
<script type="text/javascript">
	$("#b_bnum").blur(function(){
			var b_bnum=$('#b_bnum').val();
			$.ajax({
				url:'${pageContext.request.contextPath}/pj/business?b_bnum=' + b_bnum,
				type: 'get',
				success: function(data){
					console.log("1 = 중복o / 0 = 중복x : "+ data);
					
				if( data==1){
					//1: 아이디가 중복되는 문구
					$("#b_bnum").text("이미 등록된 번호입니다");
					$("#b_bnum").css("color", "red");
					$("#submit").attr("disabled", true);
				}	
					)
				}, error: function(){
					console.log("실패");
				}
			})
	});
</script>
</html>
