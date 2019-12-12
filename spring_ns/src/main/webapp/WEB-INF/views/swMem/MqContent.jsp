<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- MqContent  -->

<style>
	.to{font-size: 3em; font-weight: bold;}
	.con{font-size: 1.2em;}
</style>

<link href="${cp }/resources/list/css/bootstrap.min.css" rel="stylesheet">
<link href="${cp }/resources/list/css/style.css" rel="stylesheet">
<!-- MqInsert -->
<div class="mypage-wrap mt-5 mx-auto">
	<!-- mypage area -->
	<div class="mypage-area ">
		<!-- contents -->
		<div class="mypage-con ">
			<!-- 네비바 -->
			<jsp:include page="/WEB-INF/views/swMem/mypageNavi.jsp" />

			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-info text-center">나의 문의 내역</h1>
						<div class="form-group">
							<label for="mq_title">제목</label><input type="text" class="form-control" value="${ vo.mq_title}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_content">내용</label><input type="text" class="form-control" value="${ vo.mq_content}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_date">작성일</label><input type="text" class="form-control" value="${vo.mq_date}" readonly="readonly">
						</div>
						<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
					</div>
				</div>
			</div>
			<!-- //contents -->
			
		</div>
	</div>
</div>
<script src="${cp }/resources/list/js/jquery.min.js"></script>
    <script src="${cp }/resources/list/js/bootstrap.min.js"></script>
    <script src="${cp }/resources/list/js/scripts.js"></script>