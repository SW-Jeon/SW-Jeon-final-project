<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="mypage-wrap  mx-auto">
	<!-- mypage area -->
<div class="mypage-area ">
<!-- contents -->
<div class="mypage-con ">
		<!-- 네비바 -->
		<jsp:include page="/WEB-INF/views/swMem/mypageNavi.jsp"/> 
		
		<section class="mypage-cont col-md-10 " style="margin-top:80px; float: right;">
			<h1 class="text-info text-center mb-5" style="font-size: 3em;">상 세 정 보</h1>
			<img src="${cp }/resources/maincss/images/logo/secret.png" style="float: left; width: 25%;">
			<form role="form" method="post" action="${cp}/memUpdate" style="width: 75%; float: right;">
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
					 <label for="m_pwd">비밀번호</label><input type="text" class="form-control" name="m_pwd"    value="${vo.m_pwd}" readonly="readonly">
				</div>
			</form>
		</section>
<!-- //contents -->
		</div>
	</div>
</div>