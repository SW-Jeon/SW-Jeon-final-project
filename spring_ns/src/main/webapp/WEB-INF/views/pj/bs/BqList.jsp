<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bsMain -->
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>

<div>
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/pj/bs/bsNavi.jsp"/> 

	<div id="con">
        <!-- Page Content -->
    <div class="container-fluid" >
	<div class="row">
		<div class="col-md-12 " >
		<h1 class="text-info text-center mt-5">나의 문의 목록</h1>
			<button class="btn btn-primary mb-3" onclick="location.href='${cp }/pj/bs/bqinsert'" style=" float: right;">문의하기</button>
			<table class="table table-hover table-striped  text-center">
				<thead>
					<tr  class="table-success">
						<th class="to">글번호</th>
						<th class="to">제목</th>
						<th class="to">답변상태</th>
						<th class="to">작성일</th>
					</tr>
				</thead>
		    <c:forEach var="vo" items="${alllist}">		
				<tbody>
						<tr class="table-light">
							<td class="con">${ vo.bq_num}</td>
							<td class="con"><a href="${cp }/pj/bs/bqcontent?bq_num=${ vo.bq_num}" data-toggle="tooltip" data-original-title="Detail" >${ vo.bq_title}</a></td>
						<c:choose>
								<c:when test="${vo.bq_state =='1' }">
									<td class="con"><span  style="color:blue;">대기중</span></td>
								</c:when>
								<c:when test="${vo.bq_state =='2' }">
									<td class="con"><span  style="color:red;">답변완료</span></td>
								</c:when>
						</c:choose>
							<td class="con">${ vo.bq_date}</td>
					</tr>
				</tbody>
			</c:forEach>
			</table>
		</div>
	</div>
</div>
	
        
	</div >
</div>
 
	