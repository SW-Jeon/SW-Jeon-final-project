<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- memDelete -->
<div class="mypage-wrap mt-5 mx-auto">

	<!-- mypage area -->
<div class="mypage-area ">
<!-- contents -->
<div class="mypage-con ">
		<!-- 네비바 -->
		<jsp:include page="/WEB-INF/views/swMem/mypageNavi.jsp"/>

				<section class="mypage-cont col-md-10" style="border: 2px solid blue; float: right;">
						<h1 class="text-info text-center">탈퇴를 신중하게 선택바랍니다.</h1>
						<img src="${cp }/resources/maincss/images/logo/secret.png" style=" float: left; width: 400px;">
						<form role="form" method="post" action="${cp}/memDelete" style="width: 70%; padding-left: 500px;">
								<div class="form-group">
									<label for="m_phone">전화번호</label><input type="text" class="form-control" name="m_phone"  value="${vo.m_phone}" readonly="readonly">
								</div>
								<div class="form-group">
									<label for="m_name">이름</label><input type="text" class="form-control" name="m_name"  value="${vo.m_name}" readonly="readonly">
								</div>
								<div class="form-group">
									<label for="m_mail">이메일</label><input type="email" class="form-control" name="m_mail"  value="${vo.m_mail}" readonly="readonly">
								</div>
								<div class="form-group">
									 <label for="m_pwd">비밀번호</label><input type="text" class="form-control" name="m_pwd" >
								</div>
								<div class="form-group" style="padding-left: 130px;">
									<button type="submit" class="btn btn-primary">탈퇴하기</button>
									<button type="reset"class="btn btn-danger">취소</button>
								</div>
						</form>
			</section>


		<!-- //contents -->
		</div>
	</div>
</div>