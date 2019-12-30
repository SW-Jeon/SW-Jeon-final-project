<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- MqMyList -->
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>

<div class="mypage-wrap  mx-auto">
   <!-- mypage area -->
		<div class="mypage-area ">
		<!-- contents -->
		<div class="mypage-con ">
		      <!-- 네비바 -->
		      <jsp:include page="/WEB-INF/views/swMem/mypageNavi.jsp"/>
		  <div class="container-fluid" >
			<div class="row">
				<div class="col-md-12 " style="margin-top:80px; float: right;">
				<h1 class="text-info text-center">나의 문의 목록</h1>
					<button class="btn btn-primary mb-3" onclick="location.href='${cp }/swMem/memQuestion?m_phone=${vo.m_phone}' " style=" float: right;">문의하기</button>
					<table class="table table-hover table-striped  text-center">
						<thead>
							<tr  class="table-success">
								<th class="to">글번호</th>
								<th class="to">제목</th>
								<th class="to">답변상태</th>
								<th class="to">작성일</th>
							</tr>
						</thead>
				    <c:forEach var="vo" items="${listMy}">		
						<tbody>
							<tr class="table-light">
								<td class="con">${ vo.mq_num}</td>
								<td class="con"><a href="${cp }/swMem/mqContent?mq_num=${ vo.mq_num}&m_phone=${vo.m_phone}" data-toggle="tooltip" data-original-title="Detail" >${ vo.mq_title}</a></td>
								<c:choose>
										<c:when test="${vo.mq_state =='1' }">
										<td class="con"><span  style="color:blue;">대기중</span></td>
										</c:when>
										<c:when test="${vo.mq_state =='2' }">
										<td class="con"><span  style="color:red;">답변완료</span></td>
										</c:when>
								</c:choose>
								<td class="con">${ vo.mq_date}</td>
							</tr>
						</tbody>
					</c:forEach>
					</table>
				</div>
			</div>
		</div>
      </div>
   </div>
</div>


    