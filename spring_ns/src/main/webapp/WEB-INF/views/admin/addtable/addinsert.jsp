<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 
<div>
	<form action="${cp }/insertadd" method="post" enctype="multipart/form-data">
		<input multiple="multiple" type="file" name="files"><br>
		광고주명<input type="text" name="ad_name"><br>
		노출 위치<input type="text" name="ad_site"><br>
		광고 기간(월)<input type="text" name="dates">개월<br>
		광고 단가<input type="text" name="ad_pay">원<br>
		<input type="submit" value="등록">
	</form>
	
</div>