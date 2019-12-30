<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- BqInsert -->

<jsp:include page="/WEB-INF/views/pj/bs/bsNavi.jsp"/>
		<div class="con ">
			<!-- 네비바 -->
			<section class="mypage-cont col-md-10" style="margin-top: 30px; float: right;">
				<h1 class="text-info text-center mb-5" >사업자 문의</h1>
				<form role="form" method="post" action="${cp}/pj/bs/bqinsert" >
				<br>
					업체 종류&nbsp;<select name="d_num">
					<c:forEach var="vo5" items="${bqlist2}">
						<option value="${vo5.d_num}" >${vo5.d_sname}</option>
						</c:forEach>
					</select>
					<input type="hidden" class="form-control" name="b_num" value=${num }>
					<div class="form-group">
						<label for="mq_title">제목</label><input type="text" class="form-control" name="bq_title">
					</div>
					<div class="form-group">
						<label for="bq_content">내용</label><br>
						<textarea class="form-control" rows="3"  name="bq_content" style="resize: none;"></textarea>
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn btn-primary">문의하기</button>
						<button type="reset" class="btn btn-danger">취소</button>
					</div>
				</form>
			</section>
			<!-- //contents -->
		</div>
