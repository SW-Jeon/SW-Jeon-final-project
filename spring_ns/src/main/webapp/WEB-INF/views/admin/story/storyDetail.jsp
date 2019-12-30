<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- storyDetail -->

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

	<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-info text-center pt-3 mb-5">낭만매거진</h1>
						<div class="form-group">
							<label for="s_title">제목</label><input type="text" class="form-control" value="${ vo.s_title}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="s_content">내용</label><input type="text" class="form-control" value="${ vo.s_content}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="s_date">작성일</label><input type="text" class="form-control" value="${vo.s_date}" readonly="readonly">
						</div>
					</div>
				</div>
	</div>
			