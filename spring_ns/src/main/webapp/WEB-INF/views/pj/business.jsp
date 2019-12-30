<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1 class="text-center">사업자 등록</h1>
<form method="post" action="${cp }/pj/business" onsubmit="return validate2();">
		<div class="mt-5 w-300" style="margin-left:500px;">
			<div class="col-md-6">
				<label for="b_bnum">사업자 등록번호</label><br>
				<input type="text" name="b_bnum"  id ="b_num" class="form-control input-lg"placeholder="Ex)0000000000" ><br>
			</div>	
				사업자 전화번호<br>
			<div class="col-xs-6 col-md-6">
				<input type="text" name="b_phone"  id="b_phone"class="form-control input-lg"placeholder="Ex)01012345678"><br>
			</div>	
				사업자 이름<br>
			<div class="col-xs-6 col-md-6">
				<input type="text" name="b_name"  id="b_name" class="form-control input-lg" placeholder="Ex)홍길동"><br>
		</div>
		
			<button type="submit" class="btn btn-primary mt-3" style="margin-left:200px;" > 등록 </button>
     		<button type="reset" class="btn btn-danger mt-3"  >취소</button>

	</div>
</form>

<script type="text/javascript">
	//비밀번호는 영문+숫자 8자이상

	function validate2() {
		var getPhone = RegExp(/^[0-9]{10,11}$/);
		var getName = RegExp(/^[가-힣]+$/);
		var getPwd = RegExp(/^[a-zA-Z0-9]{8,16}$/);

		//전화번호 유효성검사
		if($("#b_phone").val()==""){
			alert("전화번호는 꼭 ' - '  제외하고 적어주세요.");
			$("#b_phone").focus();
			return false;
		}
		if (!getPhone.test($("#b_phone").val())) {
			alert("전화번호는 숫자만 적어주세요.");
			$("#b_phone").val("");
			$("#b_phone").focus();
			return false;
		}

		//이름 유효성검사
		if($("#b_name").val()==""){
			alert("이름을 적어주세요.");
			$("#b_name").focus();
			return false;
		}
		if (!getName.test($("#b_name").val())) {
			alert("이름은 한글로 적어주세요.");
			$("#b_name").val("");
			$("#b_name").focus();
			return false;
		}
	

		//비밀번호 유효성검사
		if($("#b_pwd").val()==""){
			alert("비밀번호를 적어주세요.");
			$("#b_pwd").focus();
			return false;
		}
		if (!getPwd.test($("#b_pwd").val())) {
			alert("비밀번호는 8자이상 영어와 숫자로 적어주세요.");
			$("#b_pwd").val("");
			$("#b_pwd").focus();
			return false;
		}
		 return true;	
	}
</script>
