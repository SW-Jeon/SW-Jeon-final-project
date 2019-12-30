<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!-- footer.jsp -->

 <style>
#foo div ul li a{color: #FFFFFF;}
</style>
<div id="foo"> 
<div class="container " >
      <div class="col-lg-10 text-center">
          <ul class="list-inline mb-1">
	            <li class="list-inline-item mt-3">
	 			<c:choose>	
					<c:when test="${empty sessionScope.id}">           
	                    <a href="${cp }/admin/adminLogin">운영자</a>
	             	</c:when>
	             	<c:otherwise>
	             		<a href="${cp }/admin/adminMain">운영자</a>
	             	</c:otherwise>
	             </c:choose>
	            </li>
	            <li class="list-inline-item">&sdot;</li>
	             <li class="list-inline-item">
	            <c:choose>	
					<c:when test="${empty sessionScope.b_phone}">           
	                    <a href="${cp }/business/businessLogin">사업자</a>
	             	</c:when>
	             	<c:otherwise>
	             		<a href="${cp }/business/businessMain">사업자</a>
	             	</c:otherwise>
	             </c:choose>
	             </li>
	            	<li class="list-inline-item">&sdot;</li>
	             	<li class="list-inline-item mt-2">
	              <a  data-toggle="modal" data-target="#bsModal">사업자 등록</a>
	            </li>
	             	<li class="list-inline-item">&sdot;</li>
	            	<li class="list-inline-item" >
	              	<a href="${cp }/yg/test">Contact</a><li>
	            </li>
          </ul><br>
          <p class="text-muted small mb-4 mt-3">&copy; Last_project 2019. All Rights Reserved.</p>
      </div>
 </div>
</div>

<!-- 사업자 등록 Modal창 -->
<div class="modal fade" id="bsModal" tabindex="-1" role="dialog" aria-labelledby="bsModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="bsModalLabel">사업자 등록</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form role="form" method="post" action="${cp}/pj/business"  onsubmit="return validate2();">
					<div class="form-group">
						<label for="b_bnum">사업자 등록번호</label>
						<input type="text" name="b_bnum"  id="b_bnum"class="form-control input-lg" placeholder="Ex)0000000000" autofocus="autofocus"><br>
					</div>	
					<div class="form-group">
						<label for="b_phone">전화번호</label>
						<input type="text" name="b_phone"  id="b_phone" class="form-control input-lg" placeholder="Ex)01012345678"><br>
					</div>
					<div class="form-group">
						<label for="b_name">이름</label>
						<input type="text" name="b_name"  id="b_name"  class="form-control input-lg" placeholder="Ex)홍길동"><br>
					</div>
					<div class="form-group">
						<label for="b_pwd">비밀번호</label>
						<input type="password" name="b_pwd"  id="b_pwd"   class="form-control input-lg" placeholder="Ex)숫자와 영문5자이상으로"><br>
					</div>
					<div class="modal-footer text-center mx-auto">
						<button type="submit" class="btn btn-primary">등록</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>		
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	//비밀번호는 영문+숫자 8자이상

	function validate2() {
		var getBnum = RegExp(/^[0-9]{1,30}$/);
		var getPhone = RegExp(/^[0-9]{10,11}$/);
		var getName = RegExp(/^[가-힣]+$/);
		var getPwd = RegExp(/^[a-zA-Z0-9]{5,10}$/);
		
		//사업자번호 유효성검사
		if($("#b_bnum").val()==""){
			alert("사업자번호는 꼭 ' - '  제외하고 적어주세요.");
			$("#b_bnum").focus();
			return false;
		}
		if (!getBnum.test($("#b_bnum").val())) {
			alert("사업자번호는 숫자만 적어주세요.");
			$("#b_bnum").val("");
			$("#b_bnum").focus();
			return false;
		}
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
			alert("비밀번호는 5자이상 영어와 숫자로 적어주세요.");
			$("#b_pwd").val("");
			$("#b_pwd").focus();
			return false;
		}
		 return true;	
	}
</script>
