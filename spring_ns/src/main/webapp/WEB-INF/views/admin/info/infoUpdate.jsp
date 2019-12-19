<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- infoUpdate -->

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

<section class="mypage-cont col-md-10" style="margin-top: 80px; float: right;">
	<h1 class="text-info text-center mb-5">공지사항 수정</h1>
	<form role="form" method="post" action="${cp}/admin/infoUpdate" >
		<input type="hidden" class="form-control" name="a_id" value=${a_id }>
			<div class="form-group">
				<label for="i_title">제목</label>
				<input type="text" class="form-control" name="i_title" value="${vo.i_title }">
			</div>
			<div class="form-group">
				<label for="i_content">내용</label>
				<input type="text" class="form-control" name="i_content" value="${vo.i_content }">
			</div>
			<div class="form-group text-center">
				<button type="submit" class="btn btn-primary">수정</button>
				<button type="reset" class="btn btn-danger">취소</button>
			</div>
	</form>
</section>