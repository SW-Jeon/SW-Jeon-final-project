<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function getLocation() {
	  if (navigator.geolocation) { // GPS를 지원하면
	    navigator.geolocation.getCurrentPosition(function(position) {
	      alert(position.coords.latitude + ' ' + position.coords.longitude);
	    }, function(error) {
	      console.error(error);
	    }, {
	      enableHighAccuracy: false,
	      maximumAge: 0,
	      timeout: Infinity
	    });
	  } else {
	    alert('GPS를 지원하지 않습니다');
	  }
	}
	getLocation();
</script>
</head>
<body>
<c:set var="1"/>
<jsp:include page="/WEB-INF/views/api/api.jsp" flush="false"/>
<div class="container-fluid">
<div class="row">
<c:forEach var="i" items="${list }">

<div class="col-md-4" style="text-align: center;">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey">${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
</div>
<div class="col-md-4" style="text-align: center;">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey">${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
</div>
</c:forEach>
</div>
</div>
</body>
</html>