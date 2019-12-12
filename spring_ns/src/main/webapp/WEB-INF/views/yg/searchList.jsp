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
	      //alert(position.coords.latitude + ' ' + position.coords.longitude);//현 좌표값
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

function action1(d_sname){
	location.href="${cp}/detailpage?name="+d_sname;
}
function action2(count,m){
	infos[count].open(map,markers[count]);
	map.panTo(mPositions[count]);  
	m.style.opacity = 0.5;
	m.style.zoom = 1.2;
}
function action3(count,m){
	infos[count].close();
	m.style.opacity = 1.5;
	m.style.zoom = 1.0;
}
</script>
</head>
<body>
<div style="margin-left: 10%; width:80%;">
<br><span style="font-size: 30px;"><b>[<span style="color: orange;">${d_addr }</span>]검색된 맛집정보~</b></span>
<select style="width: 200px; height:30px; float: right;">
	<option value="me">메롱
	<option value="hi">안녕
</select>
<hr><hr style="border-top:1px solid black;"><br>
</div>
<hr>
<c:choose>
	<c:when test="${not empty list }">
<jsp:include page="/WEB-INF/views/api/api.jsp" flush="false"/>
<div class="container-fluid">
<div class="row">
<c:set var="count" value="0"/>
<c:forEach var="i" items="${list }">
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div><div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div><div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div><div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div><div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div><div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<img style="width:300px;" src="${cp }/resources/maincss/images/logo/non.png"><br>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }</span>
	</div>
	</div>
</div>
<c:set var="count" value="${count+1}"/>
</c:forEach>
</div>
</div>
	</c:when>
	<c:otherwise>
	<div class="col-md-12" style="text-align: center;">
		<img style="width:800px;" src="${cp }/resources/maincss/images/logo/a34.png"  onclick="location.href=${cp}/"><br>
	</div>
	</c:otherwise>
</c:choose>
</body>
<script type="text/javascript">
</script>
</html>