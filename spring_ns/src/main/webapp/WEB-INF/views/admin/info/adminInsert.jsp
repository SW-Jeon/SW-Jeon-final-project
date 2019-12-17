<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- adminInsert.jsp -->

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

		<section class="mypage-cont col-md-10" style="margin-top: 80px; float: right;">
				<h1 class="text-info text-center mb-5">회원 문의</h1>
				<img src="${cp }/resources/maincss/images/logo/secret.png" style="float: left; width: 30%;">
				<form role="form" method="post" action="${cp}/admin/InfoInsert"  style="width: 70%; float: right;">
					<input type="hidden" class="form-control" name="m_phone" value=${m_phone }>
					<div class="form-group">
						<label for="i_date">제목</label><input type="text" class="form-control" name="i_title">
					</div>
					<div class="form-group">
						<label for="i_content">내용</label><br>
						<textarea rows="5" cols="100" name="i_content" style="resize: none;"></textarea>
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn btn-primary">공지사항</button>
						<button type="reset" class="btn btn-danger">취소</button>
					</div>
				</form>
			</section>