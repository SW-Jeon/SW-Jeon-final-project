<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1 class="text-center">사업자 등록</h1>
<form method="post" action="${cp }/pj/business">
		<div class="mt-5 w-300" style="margin-left:500px;">
			<div class="col-md-6">
				<label for="b_bnum">사업자 등록번호</label><br>
				<input type="text" name="b_bnum" class="form-control input-lg"placeholder="Ex)0000000000"><br>
			</div>	
			<div class="check-font" id="id_check"></div>
				사업자 전화번호<br>
			<div class="col-xs-6 col-md-6">
				<input type="text" name="b_phone" class="form-control input-lg"placeholder="Ex)01012345678"><br>
			</div>	
				사업자 이름<br>
			<div class="col-xs-6 col-md-6">
				<input type="text" name="b_name" class="form-control input-lg" placeholder="Ex)홍길동"><br>
		</div>
		
			<button type="submit" class="btn btn-primary mt-3" style="margin-left:200px;"> 등록 </button>
     		<button type="reset" class="btn btn-danger mt-3"  >취소</button>

	</div>
</form>

<script type="text/javascript">
	$("#b _bnum").blur(function(){
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

