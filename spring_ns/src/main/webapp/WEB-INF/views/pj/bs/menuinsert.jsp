<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/pj/bs/bsNavi.jsp"/>   
<div id="con">
	<section class="mypage-cont col-md-10" style="margin-top: 30px; float: right;">
		<h1 class="text-info text-center mb-5" >메뉴 등록</h1>
		<form method="post" action="${cp }/pj/bs/bqmenuinsertok" enctype="multipart/form-data">
			<div class="form-group">
				<label for="me_name">음식점 이름</label>
				<select name="d_num">
					<c:forEach var="vo4" items="${bqlist}">
						<option value="${vo4.d_num}" >${vo4.d_sname}</option>
						</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<label for="me_name">음식 이름</label><input type="text" class="form-control" name="me_name" placeholder="음식 이름 입력하세요.">
			</div>
			<div class="form-group">
				<label for="me_pay">제목</label><input type="text" class="form-control" name="me_pay"  placeholder="가격을 입력하세요.">
			</div>
			<div class="form-group text-center">
		         	<button type="submit" class="btn btn-primary ">등록</button>
					<button type="reset" class="btn btn-danger">취소</button> 
		        </div>
		  </form>
	</section>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 
	