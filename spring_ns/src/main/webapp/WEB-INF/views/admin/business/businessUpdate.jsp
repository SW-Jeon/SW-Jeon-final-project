<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- infoUpdate -->

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

<section class="mypage-cont col-md-10" style="margin-top: 80px; float: right;">
	<h1 class="text-info text-center mb-5">업체 상태 변경</h1>
	<form role="form" method="post" action="${cp}/admin/bnUpdate" >
		<input type="hidden"  name="b_num" value="${vo.b_num }">
			<div class="form-group">
				<label for="b_bnum">사업자등록번호</label>
				<input type="text" class="form-control" name="b_bnum" value="${vo.b_bnum }" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="b_name">이름</label>
				<input type="text" class="form-control" name="b_name" value="${vo.b_name }" readonly="readonly">
			</div>
		<c:choose>
			<c:when test="${vo.b_state =='1'}">
				<input type="radio"  name="b_state"  checked="checked">등록 대기중
				<input type="radio"  name="b_state"  >승인 하기
				<input type="radio"  name="b_state"  >업체 정지
			</c:when>
			<c:when test="${vo.b_state =='2'}">
				<input type="radio"  name="b_state" >등록 대기중
				<input type="radio"  name="b_state"  checked="checked">승인 하기
				<input type="radio"  name="b_state"  >업체 정지
			</c:when>
			<c:when test="${vo.b_state =='4'}">
				<input type="radio"  name="b_state"  >등록 대기중
				<input type="radio"  name="b_state"  >승인 하기
				<input type="radio"  name="b_state"  checked="checked">업체 정지
			</c:when>
		</c:choose>	
			<div class="form-group text-center">
				<button type="submit" class="btn btn-primary">상태변경</button>
				<button type="reset" class="btn btn-danger">취소</button>
			</div>
	</form>
</section>