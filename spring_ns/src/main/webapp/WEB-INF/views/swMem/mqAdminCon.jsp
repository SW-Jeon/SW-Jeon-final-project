<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- MqContent  -->

<link href="${cp }/resources/list/css/bootstrap.min.css" rel="stylesheet">
<link href="${cp }/resources/list/css/style.css" rel="stylesheet">

			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-info text-center">회원님 문의 내역</h1>
						<div class="form-group">
							<label for="mq_title">제목</label><input type="text" class="form-control" value="${ vo1.mq_title}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_content">내용</label><input type="text" class="form-control" value="${ vo1.mq_content}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_date">작성일</label><input type="text" class="form-control" value="${vo1.mq_date}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_reply">답변</label><input type="text" class="form-control" value="${vo1.mq_reply}" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="mq_state">답변</label>
							<input type="text" class="form-control" value="${vo1.mq_state}" readonly="readonly"  >
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">답변달기</button>
						</div>
						<div class="form-group">
							<label for="mq_date">날짜</label><input type="text" class="form-control" value="${vo1.mq_date}" readonly="readonly">
						</div>
						<button class="btn btn-primary" onclick="location.href='${cp }/' ">홈으로</button>
					</div>
				</div>
			</div>
<!-- 운영자 답변달기 -->
		<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">회원 문의 답변</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form role="form" method="post" action="${cp}/swMem/memQuestion" >
					<input type="hidden" class="form-control" name="m_phone"  value=${m_phone }>
					<div class="form-group">
						<label for="mq_reply">운영자 답변</label>
						<textarea rows="5" cols="80" name="mq_content" style="resize: none;"></textarea>
					</div>			
				</form>
			</div>
			<div class="modal-footer">
				<button type="submit" class="btn btn-primary">답변하기</button>
				<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>
