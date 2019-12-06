<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<div id="map" style="left:15%; width:70%;height:450px;"></div>
<input type="hidden" name="addr" value="${d_addr }">
<c:forEach var="vo" items="${list }">
<input type="hidden" name="info" value="${vo.d_addr }">
<input type="hidden" name="koko" value="${vo.d_sname }">
<input type="hidden" name="hoho" value="${vo.d_kind }">

</c:forEach>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2cb81b6c831f4782c514d837a70bcf33&libraries=services"></script>
<script>
var mapContainer = document.getElementById("map");
var coordXY   = document.getElementById("coordXY");
var addr=document.getElementsByName("addr")[0];
var info=new Array();
for(var i=0;i<document.getElementsByName("info").length;i++){
	
		info[i]=document.getElementsByName("info")[i].value;
}
var koko=new Array();
for(var i=0;i<document.getElementsByName("koko").length;i++){
	
	koko[i]=document.getElementsByName("koko")[i].value;
}
var hoho=new Array();
for(var i=0;i<document.getElementsByName("hoho").length;i++){
	
	hoho[i]=document.getElementsByName("hoho")[i].value;
}
//var koko=document.getElementById("koko");
var mapOption;
var map;
var gap =new Array();
gap=info;
var koko1=new Array();
koko1=koko;
var hoho1=new Array();
hoho1=hoho;
 mapOption = {
  center: new kakao.maps.LatLng(33.450701, 126.570667), 
        level: 4          
 };
// 지도 만들기
map = new kakao.maps.Map(mapContainer, mapOption);
var imageSrc="${cp}/resources/images/logo/111.png",
	imageSize=new kakao.maps.Size(66,69),
	imageOption={offset:new kakao.maps.Point(27,69)};
 // 주소로 좌표변환 객체 생성
 var geocoder = new kakao.maps.services.Geocoder();
 // 주소로 좌표를 검색
 gap.forEach(function(g,index){
 geocoder.addressSearch(g, function(result, status) {
  
  
  if (status === kakao.maps.services.Status.OK) {
	  var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
	  markerPosition = new kakao.maps.LatLng(result[0].y, result[0].x);
	  map.setCenter(markerPosition);
   
   // 받은 좌표값으로 마커 생성
   var marker = new kakao.maps.Marker({
    map: map,
    position: markerPosition,
    image:markerImage,
    clickable:true
   
   });
   
   //alert(gap[0]+","+gap[1]);
   
   
   var moinfo='<div style="width:250px;text-align:center;padding:5px 0;"><p style="font-size:2em;color:black;">'+koko1[index]+"</P><br>  종류:"+hoho1[index]+'</div>';
   var infowindow = new kakao.maps.InfoWindow({
   	
	   content: moinfo
    	
   });
   
   kakao.maps.event.addListener(marker, 'mouseover', function() {
	   
	   infowindow.open(map,marker);
	  
	   
	   //location.href="${cp}/";
	});
	kakao.maps.event.addListener(marker, 'mouseout', function() {
	   
	   
	   infowindow.close();
	   //location.href="${cp}/";
	});
	 kakao.maps.event.addListener(marker, 'click', function() {
		   
		  location.href="${cp}/detailpage?name="+koko1[index];
		});
   
   
  }
 });
 });
</script>


</body>
</html> 