<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

<section class="mypage-cont col-md-10" style=" float: right;">
	<h1 class="text-info text-center pt-3 mb-5">광고등록</h1>
	<form action="${cp }/insertadd" method="post" enctype="multipart/form-data">
		<div class="form-group">
				<label for="ad_name">광고주명</label><input type="text" class="form-control" name="ad_name">
		</div>
		<div class="form-group">
				<label for="ad_site">노출 위치</label><input type="text" class="form-control" name="ad_site">
		</div>
		<div class="form-group">
				<label for="dates">광고 기간(개월)</label><input type="text" class="form-control" name="dates">
		</div>
		<div class="form-group">
				<label for="ad_pay">광고 단가(원)</label><input type="text" class="form-control" name="ad_pay">
		</div>
		<div class="form-group">
				<label for="file">광고 업로드</label><br>	
				<input multiple="multiple" type="file" name="files">
		</div>
		<div class="form-group text-center">
			<button type="submit" class="btn btn-primary">등록</button>
			<button type="reset" class="btn btn-danger">취소</button>
		</div>
	</form>
</section>