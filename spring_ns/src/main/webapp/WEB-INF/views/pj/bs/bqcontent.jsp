<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bsMain -->
<div>
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/pj/bs/bsNavi.jsp"/>  
	<div id="con">
        <!-- Page Content -->
        <div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-info text-center mt-5">나의 문의 내역</h1>
						<div class="form-group">
							<label for="bq_title">제목</label><input type="text" class="form-control" value="${ vo.bq_title}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="bq_content">내용</label><input type="text" class="form-control" value="${ vo.bq_content}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="bq_reply">답변</label><input type="text" class="form-control" value="${ vo.bq_reply}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="bq_date">작성일</label><input type="text" class="form-control" value="${vo.bq_date}" readonly="readonly">
						</div>
						<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
					</div>
				</div>
			</div>
        
      </div >
</div>
 
	