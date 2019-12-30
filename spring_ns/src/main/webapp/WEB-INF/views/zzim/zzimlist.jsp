<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.to{font-size: 1.7em; font-weight: bold; text-align: center;}
	.con{font-size: 1.2em; text-align: center;}
</style>

<div>
	<input type="hidden" name="path" id="path">
	<table class="table table-hover table-striped  text-center">
		<thead>
			<tr  class="table-success">
				<th class="to">업체사진</th>
				<th class="to">업체이름</th>
				<th class="to">전화번호</th>
				<th class="to">주소</th>
				<th class="to">상세페이지로가기</th>
				<th class="to">삭제</th>
			</tr>
		</thead>
		<c:forEach var="vo" items="${list }">
		<tbody>
			<tr class="table-light">
				<td class="con"><img src="${cp }/resources/maincss/images/test/${vo.p_pic }" style="width: 100px;height: 100px;"></td>
				<td class="con">${ vo.d_sname}</td>
				<td class="con">${ vo.d_phone}</td>
				<td class="con">${ vo.d_addr}</td>
				<td class="con"><a href="${cp }/zzimdetail?d_sname=${vo.d_sname}" data-toggle="tooltip" data-original-title="Go" >이동</a></td>
				<td class="con"><a href="${cp }/zzimdel?d_num=${vo.d_num}" data-toggle="tooltip" data-original-title="Remove" ><i class="fa fa-times" style="color: red;"></i></a></td>				
			</tr>
		</tbody>
		</c:forEach>
	</table>
	<ul class="btn-group pagination">
		<c:if test="${vo.prev }">
			<li>
				<a href="${cp }/zzimlists?page=${vo.startPage-1}"><i class="fa fa-chevron-left"></i></a>
			</li>
		</c:if>
		<c:forEach begin="${vo.startPage }" end="${vo.endPage }" var="pageNum">
			<a href="${cp }/zzimlists?page=${pageNum}">[${pageNum }]</a>
		
		</c:forEach>
		<c:if test="${vo.next && vo.endPage >0 }">
			<li>
				<a href="${cp }/zzimlists?page=${vo.endPage+1}"><i class="fa fa-chevron-right"></i></a>
			</li>
		</c:if>
	</ul>

</div>