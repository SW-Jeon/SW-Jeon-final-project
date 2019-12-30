<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<div class="container-fluid mt-5">
	<div class="row">
		<div class="col-md-12">
			<h1 class="text-danger text-center mb-5">비밀번호 찾기<small class="text-dark"> ( 비밀번호를 잊으셨나요? ) </small> </h1>
			<form role="form" method="post" action="${cp}/swMem/findPwd" style="width: 80%; padding-left: 300px;" >
				<div class="form-group">
					<label for="m_phone">전화번호</label><input type="text" class="form-control" name="m_phone"  placeholder="전화번호입력"  required>
				</div>
				<div class="form-group">
					<label for="m_name">이름</label><input type="text" class="form-control"  name="m_name"  placeholder="이름입력" required>
				</div>
				<div class="form-group">
					<label for="m_mail">이메일</label><input type="email" class="form-control" name="m_mail"  placeholder="이메일입력" required>
				</div>
				<div class="form-group text-center" >
					<button type="submit" class="btn btn-primary m-3">찾기</button>
					<button type="reset" class="btn btn-danger">취소</button>
				</div>
			</form>
		</div>
	</div>
</div>
