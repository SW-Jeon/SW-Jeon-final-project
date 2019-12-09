<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#imageinfo ul div li img {
	width: 370px;
	height: 400px;
	margin: 0px;
	display: inline-block;
}

#imageinfo ul div li {
	float: left;
	list-style: none;
	width: 370px;
	padding: 0px;
	margin: 0px;
	left: 100px;
}

table {
	border-collapse: separate;
	border-spacing: 0 20px;
}

#return {
	position: relative;
	top: 150px;
	z-index: 1;
	border: none;
}

#next {
	position: relative;
	left: 1800px;
	top: 150px;
	z-index: 1;
}
</style>

<div>
	<input type="hidden" value="${name }" name="">
	<h1 style="color: red; text-align: center;">${name }</h1>

	<div
		style="width: 1900px; height: 400px; position: relative; left: 5px; top: 50px; overflow: hidden;">
		<!-- <input type="button" id="return" onclick="behind()"> -->
		<a href="javascript:behind()"><img
			src="${cp }/resources/images/test/button1.png" id="return"></a> <a
			href="javascript:next()"><img
			src="${cp }/resources/images/test/button2.png" id="next"></a>
		<div
			style="width: 2660px; height: 400px; left: 0px; top: -42px; position: relative;"
			id="imageinfo">
			<c:forEach var="im" items="${list1 }">
				<ul style="padding: 0px;">
					<div style="left:200px;">
						<li style="margin-left: 10px" name="lili"><img
							src="${cp }/resources/images/test/${im.p_pic }"></li>
					</div>
				</ul>
			</c:forEach>
		</div>
	</div>
	<div id="map"
		style="left: 55%; width: 30%; height: 400px; top: 200px; position: relative;"></div>
	<div
		style="margin-top: -200px; margin-bottom: 100px; margin-left: 300px; position: relative;">
		<table style="color: black;">
			<c:forEach var="vo" items="${list }">
				<tr>
					<th>카테고리</th>
					<td>${vo.d_kind }</td>
				</tr>
				<tr>
					<th>가게번호</th>
					<td>${vo.d_phone }</td>
				</tr>
				<tr>
					<th>가게 주소</th>
					<td>${vo.d_addr }</td>
				</tr>
				<tr>
					<th>주차여부</th>
					<td>${vo.d_park }</td>
				</tr>
				<tr>
					<th>휴업일</th>
					<td>${vo.d_holi }</td>
				</tr>
				<tr>
					<th>영업시간</th>
					<td>${vo.d_time }</td>
				</tr>
				<input type="hidden" value="${vo.d_addr }" id="addr">
				<input type="hidden" value="${vo.d_sname }" id="name">
			</c:forEach>
		</table>
	</div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2cb81b6c831f4782c514d837a70bcf33&libraries=services"></script>
	<script>
		var imageinfo = document.getElementById("imageinfo");
		var n = 370;
		var imgs = parseInt(imageinfo.style.left) - n;
		var lili = document.getElementsByName("lili");
		alert(lili.length);

		function behind() {
			//var k=parseInt(imageinfo.style.left)-370;
			//alert(k);
			//imageinfo.style.left=k+"px";
			//if(k<-740){
			//imageinfo.style.left=1900+"px";

			//}
			alert(lili[0].style.left);
			for (var i = 0; i < lili.length; i++) {
				var k = parseInt(lili[i].style.left) - 370;

				lili[i].style.left = k + "px";
				if (k < -1110) {
					lili[i].style.left = 1000 + "px";
				}
			}

		}
		var mapOption;
		var map;
		var addr = document.getElementById("addr").value;
		var name = document.getElementById("name").value;

		var g = addr;
		// 지도 만들기
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667),
			level : 3
		};
		var mapContainer = document.getElementById("map");
		map = new kakao.maps.Map(mapContainer, mapOption);
		var imageSrc = "${cp}/resources/images/logo/111.png", imageSize = new kakao.maps.Size(
				66, 69), imageOption = {
			offset : new kakao.maps.Point(27, 69)
		};
		// 주소로 좌표변환 객체 생성
		var geocoder = new kakao.maps.services.Geocoder();
		// 주소로 좌표를 검색

		geocoder.addressSearch(g,function(result, status) {

							if (status === kakao.maps.services.Status.OK) {
								var markerImage = new kakao.maps.MarkerImage(
										imageSrc, imageSize, imageOption), markerPosition = new kakao.maps.LatLng(
										result[0].y, result[0].x);
								map.setCenter(markerPosition);

								// 받은 좌표값으로 마커 생성
								var marker = new kakao.maps.Marker({
									map : map,
									position : markerPosition,
									image : markerImage,
									clickable : true

								});

								var moinfo = '<div style="width:250px;text-align:center;padding:5px 0;"><p style="font-size:2em;color:black;">'
										+ name
										+ "</P><br>  주소:"
										+ addr
										+ '</div>';
								var infowindow = new kakao.maps.InfoWindow({

									content : moinfo

								});

								kakao.maps.event.addListener(marker,
										'mouseover', function() {

											infowindow.open(map, marker);

											//location.href="${cp}/";
										});
								kakao.maps.event.addListener(marker,
										'mouseout', function() {

											infowindow.close();
											//location.href="${cp}/";
										});

							}
						});
	</script>
</div>
