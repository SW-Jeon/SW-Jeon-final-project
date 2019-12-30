<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bsCareUpdate -->

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

<section class="mypage-cont col-md-10" style="margin-top: 80px; float: right;">
	<h1 class="text-info text-center pt-3 mb-5">업체 신고 상태 변경</h1>
	<form role="form" method="post" action="${cp}/admin/bsBackUp" >
			<div class="form-group">
				<label for="d_sname">업체 이름</label><input type="text" class="form-control" value="${vo.d_sname}" readonly="readonly">
			</div>
			<label  for="re_state">신고 상태</label><br>
				<div class="custom-control custom-radio mr-3 custom-control-inline" >
					<input type="radio"  class="custom-control-input" name="re_state"  value="2" id="c2"><label class="custom-control-label" for="c2">신고 확인중</label>
				</div>	
				<div class="custom-control custom-radio mr-3 custom-control-inline" >
					<input type="radio"  class="custom-control-input" name="re_state"  value="3"  id="c3"><label class="custom-control-label" for="c3">처리 완료</label>
				</div>	
				<div class="custom-control custom-radio mr-3 custom-control-inline" >
					<input type="radio"  class="custom-control-input" name="re_state"  value="4" id="c4"><label class="custom-control-label" for="c4">업체 경고</label>
				</div>	
				<div class="custom-control custom-radio mr-3 custom-control-inline" >
					<input type="radio"  class="custom-control-input" name="re_state"  value="5"  checked="checked"  id="c5"><label class="custom-control-label" for="c5">업체 정지</label>
				</div>	
		<br>
	<div class="form-group text-center">
		<button type="submit" class="btn btn-primary" id="radioButton">상태변경</button>
		<button type="reset" class="btn btn-danger">취소</button>
	</div>		
			
	</form>
</section>
<script type="text/javascript">
$(document).ready(function () {
    $('#radioButton').click(function () {
      // getter
      var radioVal = $('input[name="re_state"]:checked').val();
      alert(radioVal);
    });

  });
</script>