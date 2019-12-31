<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function gogo(bl_name){
	location.href="${cp }/yg/test?bl_name="+bl_name;
}
</script>
</head>
<body>
<br>
<div class="col-md-5" style="float: left; text-align: center; position: fixed;">
<h1>${vo.bl_name }</h1><br>
<c:choose>
	<c:when test="${empty vo.bl_profile }">
		<img src="${cp }/resources/maincss/images/logo/non.png" style="width: 200px; height:200px; border-radius: 50%">
	</c:when>
	<c:otherwise>
		<img src="${cp}/resources/imgpro/${vo.bl_profile }" style="width: 200px; height:200px; border-radius: 50%">
	</c:otherwise>
</c:choose>
<br>
<c:if test="${vo.m_phone eq sessionScope.m_phone }">
	<input type="button" class="btn btn-primary mt-3 " id="writebtn" name="writebtn" value="글쓰러 가기" onclick="gogo('${vo.bl_name}')">
</c:if> 
</div>
<div class="col-md-7" style="float: right; position: static;">
<c:choose>
<c:when test="${empty list }">
	<img src="${cp }/resources/maincss/images/logo/nono.png" style="width: 780px;">
</c:when>
<c:otherwise>
<c:forEach var="i" items="${list }">
	<h2>${i.ed_title }</h2><hr style="border: solid 1px black;"><br>
	<c:choose>
		<c:when test="${empty i.ed_pic }">
			<img src="${cp }/resources/maincss/images/logo/nono.png" style="width: 500px;"><br><br>
		</c:when>
		<c:otherwise>
			<img src="${cp}/resources/blogimg/${i.ed_pic }" style="width: 500px;"><br><br>
		</c:otherwise>
	</c:choose>
	${i.ed_content }
	<hr style="border: solid 1px grey;">
	<c:if test="${vo.m_phone eq sessionScope.m_phone }">
	<span style="color: grey; font-size: 16px; float: right"><a class="btn btn-danger"  href="${cp}/blogdelete?ed_num=${i.ed_num }" style="text-decoration: none;">삭제</a>
	<a class="btn btn-primary"  href="${cp}/blogupdate?ed_num=${i.ed_num }" style="text-decoration: none;">수정</a></span>
	</c:if>
	작성일: ${i.ed_date }
	<br><br><hr style="border: solid 1px grey;">
</c:forEach>
</c:otherwise>
</c:choose>
</div>
</body>
</html>