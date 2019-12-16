<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- findPhone.jsp -->

<div class="container-fluid mt-5">
	<div class="row">
		<div class="col-md-12">
			<h1 class="text-danger text-center">전화번호 찾기<small class="text-dark"> ( 전화번호를 잊으셨나요? ) </small> </h1>
			<form role="form" method="post" action="${cp}/swMem/findPhone" style="width: 70%; padding-left: 500px;">
				<div class="form-group">
					<label for="m_name">이름</label><input type="text" class="form-control "  name="m_name"  placeholder="이름입력" required autofocus
						oninvalid="this.setCustomValidity('이름을 입력해주세요.')" onchange="this.setCustomValidity('')">
				</div>
				<div class="form-group">
					<label for="m_mail">이메일</label><input type="email" class="form-control" name="m_mail"  placeholder="이메일입력" required
						oninvalid="this.setCustomValidity('이메일을 입력해주세요.')" onchange="this.setCustomValidity('')">
				</div>
				<div class="form-group" style="margin-left: 100px;">
					<button type="submit" class="btn btn-primary m-3">찾기</button>
					<button type="reset" class="btn btn-danger">취소</button>
				</div>
			</form>
		</div>
	</div>
</div>
<div class="result text-center" >
	<span class="">
		<c:choose>
			<c:when test="${code=='find' }">
				<h1> 회원님의 전화번호는 <span class="text-danger">${phone} </span>입니다.</h1>
			</c:when>
			<c:when test="${code=='fail' }">
				<h1> 입력하신 회원이 존재하지 않습니다.</h1>
			</c:when>
		</c:choose>
	</span>
	<button class="btn btn-primary mt-5"  onclick="location.href='${cp }/' ">홈으로</button>
</div>