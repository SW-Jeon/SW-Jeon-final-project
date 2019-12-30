<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bsMenu -->
<div>
	
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/pj/bs/bsNavi.jsp"/>  

	<div id="con">
        <!-- Page Content -->
        <div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-info text-center">메뉴 등록</h1>
						<div class="form-group">
							<label for="me">메뉴 이름</label><input type="text" class="form-control" value="${ vo.bq_title}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="bq_content">가격</label><input type="text" class="form-control" value="${ vo.bq_content}" readonly="readonly">
						</div>
						<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
					</div>
				</div>
			</div>
      </div >
</div>
 
	