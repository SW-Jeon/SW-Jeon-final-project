<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bsCareUpdate -->

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

<section class="mypage-cont col-md-10" style="margin-top: 80px; float: right;">
	<h1 class="text-info text-center mb-5">업체 신고 상태 변경</h1>
	<form role="form" method="post" action="${cp}/admin/bsCUpdate" >
		<input type="hidden"  name="re_num" value="${vo.re_num }">
			<div class="form-group">
				<label for="re_title">제목</label>
				<input type="text" class="form-control" value="${ vo.re_title}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="re_category">신고유형</label><input type="text" class="form-control" value="${ vo.re_category}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="re_content">신고내용</label><input type="text" class="form-control" value="${vo.re_content}" readonly="readonly">
			</div>
			<label  for="re_state">신고 상태</label><br>
		<c:choose>
			<c:when test="${vo.re_state =='1'}">
			<div class="custom-control custom-radio mr-3 custom-control-inline " >
				<input type="radio"  class="custom-control-input radio-danger" name="re_state"  value="1" checked="checked"  id="c1"><label class="custom-control-label" for="c1">신고 접수중</label>
			</div>	
			<div class="custom-control custom-radio mr-3 custom-control-inline" >
				<input type="radio"  class="custom-control-input" name="re_state"  value="2" id="c2"><label class="custom-control-label" for="c2">신고 확인중</label>
			</div>	
			<div class="custom-control custom-radio mr-3 custom-control-inline" >
				<input type="radio"  class="custom-control-input" name="re_state"  value="3" id="c3"><label class="custom-control-label" for="c3">처리 완료</label>
			</div>	
	
			</c:when>
			<c:when test="${vo.re_state =='2'}">
			<div class="custom-control custom-radio mr-3 custom-control-inline " >
				<input type="radio"  class="custom-control-input radio-danger" name="re_state"  value="1"   id="c1"><label class="custom-control-label" for="c1">신고 접수중</label>
			</div>	
			<div class="custom-control custom-radio mr-3 custom-control-inline" >
				<input type="radio"  class="custom-control-input" name="re_state"  value="2"  checked="checked"  id="c2"><label class="custom-control-label" for="c2">신고 확인중</label>
			</div>	
			<div class="custom-control custom-radio mr-3 custom-control-inline" >
				<input type="radio"  class="custom-control-input" name="re_state"  value="3" id="c3"><label class="custom-control-label" for="c3">처리 완료</label>
			</div>	
			</c:when>
			<c:when test="${vo.re_state =='3'}">
			<div class="custom-control custom-radio mr-3 custom-control-inline " >
				<input type="radio"  class="custom-control-input " name="re_state"  value="1"  id="c1"><label class="custom-control-label" for="c1">신고 접수중</label>
			</div>	
			<div class="custom-control custom-radio mr-3 custom-control-inline" >
				<input type="radio"  class="custom-control-input" name="re_state"  value="2" id="c2"><label class="custom-control-label" for="c2">신고 확인중</label>
			</div>	
			<div class="custom-control custom-radio mr-3 custom-control-inline" >
				<input type="radio"  class="custom-control-input" name="re_state"  value="3" checked="checked"  id="c3"><label class="custom-control-label" for="c3">처리 완료</label>
			</div>		
			</c:when>
		</c:choose>
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