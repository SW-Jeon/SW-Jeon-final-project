<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- InfoDatail -->
<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-info text-center mb-5 mt-3">공 지 사 항</h1>
							<span style="float: right;"><i class="fas fa-eye mr-4" data-toggle="tooltip" data-original-title="조회수">${ vo.i_hit}</i></span>
						<div class="form-group">
							<label for="i_title">제목</label><input type="text" class="form-control" value="${ vo.i_title}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="i_content">내용</label><input type="text" class="form-control" value="${ vo.i_content}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="i_date">작성일</label><input type="text" class="form-control" value="${vo.i_date}" readonly="readonly">
						</div>
					</div>
				</div>
	</div>
			