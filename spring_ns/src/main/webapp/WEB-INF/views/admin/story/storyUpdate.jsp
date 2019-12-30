<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- storyUpdate -->

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

<section class="mypage-cont col-md-10" style="margin-top: 80px; float: right;">
	<h1 class="text-info text-center pt-3 mb-5">낭만 매거진 수정</h1>
	<form role="form" method="post" action="${cp}/admin/storyUpdate" >
		<input type="hidden"  name="s_num" value="${vo.s_num }">
			<div class="form-group">
				<label for="s_title">제목</label>
				<input type="text" class="form-control" name="s_title" value="${vo.s_title }">
			</div>
			<div class="form-group">
				<label for="s_content">내용</label>
				<input type="text" class="form-control" name="s_content" value="${vo.s_content }">
			</div>
			<div class="form-group text-center">
				<button type="submit" class="btn btn-primary">수정</button>
				<button type="reset" class="btn btn-danger">취소</button>
			</div>
	</form>
</section>