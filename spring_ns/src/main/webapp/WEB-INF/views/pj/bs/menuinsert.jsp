<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/pj/bs/bsNavi.jsp"/>   
<!-- bsMain -->
	

        <!-- Page Content -->
        <div id="con">
        <!-- Page Content -->
        <div class="container-fluid" >
				<div class="row">
					<div class="col-md-12"  style="margin-left: 350px; margin-top: 50px;">

				<form method="post" action="${cp }/pj/bs/bqmenuinsertok" enctype="multipart/form-data">
				<div >
				<div style="margin-left: 290px;">
				<h1>메뉴 등록</h1>
				</div>
				<br>
					&nbsp;&nbsp;&nbsp;음식점 종류&nbsp;<select name="d_num">
					<c:forEach var="vo4" items="${bqlist}">
						<option value="${vo4.d_num}" >${vo4.d_sname}</option>
						</c:forEach>
					</select>
				</div>
				<br>
				<div class="col-md-6">			
				음식 이름<input type="text" name="me_name" class="form-control input-lg" placeholder=""><br>
				</div>
				<div class="col-md-6">		
				가격<input type="text" name="me_pay" class="form-control input-lg" placeholder=""><br>
				</div>
		         <div style="margin-left: 670px;">&nbsp;&nbsp;&nbsp;&nbsp;
		         	<button type="submit" class="btn btn-primary mt-3">등록</button>
					<button type="reset" class="btn btn-primary mt-3">취소</button> 
		         </div></form>
			</div></div></div></div></div>
	
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 
	