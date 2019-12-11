<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- MqInsert -->
<div class="mypage-wrap mt-5 mx-auto">

	<!-- mypage area -->
<div class="mypage-area ">
<!-- contents -->
<div class="mypage-con ">
		<!-- 네비바 -->
		<jsp:include page="/WEB-INF/views/swMem/mypageNavi.jsp"/>

				<section class="mypage-cont col-md-10" style="margin-top:150px; float: right;">
						<h1 class="text-info text-center mb-5">회원 문의</h1>
						<img src="${cp }/resources/maincss/images/logo/secret.png" style=" float: left; width: 400px;">
						<form role="form" method="post" action="${cp}/memUpdate" style="width: 70%; padding-left: 500px;">
							<input type="hidden" class="form-control" name="m_phone"  >
								<div class="form-group">
									<label for="mq_title">제목</label><input type="text" class="form-control" name="mq_title"  >
								</div>
								<div class="form-group">
									<label for="mq_content">내용</label><br>
									<textarea rows="5" cols="80" name="mq_content" style="resize: none;"></textarea>
								</div>
								<div class="form-group">
									<label for="m_mail">이메일</label><input type="email" class="form-control" name="m_mail" >
								</div>
								<div class="form-group">
									 <label for="m_pwd">비밀번호</label><input type="text" class="form-control" name="m_pwd" >
								</div>
								<div class="form-group" style="padding-left: 150px;">
									<button type="submit" class="btn btn-primary">문의하기</button>
									<button type="reset"class="btn btn-danger">취소</button>
								</div>
						</form>
			</section>

		<!-- //contents -->
		</div>
	</div>
</div>