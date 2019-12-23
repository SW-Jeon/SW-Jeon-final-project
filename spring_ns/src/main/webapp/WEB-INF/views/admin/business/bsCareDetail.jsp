<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bsCareDetail -->
<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp" />

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h1 class="text-info text-center">신고 상세 내역</h1>
			<div class="form-group">
				<label for="re_title">제목</label><input type="text" class="form-control" value="${ vo.re_title}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="re_category">신고유형</label><input type="text" class="form-control" value="${ vo.re_category}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="re_content">신고내용</label><input type="text" class="form-control" value="${vo.re_content}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="m_phone">회원전화번호</label><input type="text" class="form-control" value="${vo.m_phone}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="re_state">신고 상태</label> <input type="text" class="form-control" value="${vo.re_state}" readonly="readonly">
			</div>
		</div>
	</div>
</div>