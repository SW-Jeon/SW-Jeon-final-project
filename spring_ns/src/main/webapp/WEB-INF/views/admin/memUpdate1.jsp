<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12 m-5">
			<h1 class="text-info text-center mb-3">회원정보 수정</h1>
			<form role="form" method="post" action="${cp}/memUpdate1" style="width: 80%; padding-left: 250px;">
			
				<div class="form-group">
					<label for="m_phone">전화번호</label><input type="text" class="form-control" name="m_phone"  value="${vo.m_phone}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="m_name">이름</label><input type="text" class="form-control" name="m_name"  value="${vo.m_name}">
				</div>
				<div class="form-group">
					<label for="m_mail">이메일</label><input type="email" class="form-control" name="m_mail"  value="${vo.m_mail}">
				</div>
				<div class="form-group">
					 <label for="m_pwd">비밀번호</label><input type="text" class="form-control" name="m_pwd"    value="${vo.m_pwd}">
				</div>
			
				<div class="form-group text-center mt-3">
				<button type="submit" class="btn btn-primary">정보 수정</button>
				<button type="reset"class="btn btn-danger">다시 작성</button>
				</div>
			</form>
			<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
		</div>
	</div>
</div>