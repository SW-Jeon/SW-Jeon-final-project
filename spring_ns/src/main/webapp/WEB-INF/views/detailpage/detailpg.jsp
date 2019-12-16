<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#tag{
	margin: auto;
	width: 100px;
	height: 450px;
	left: 1700px;
	top:500px;
	position: absolute;
	text-align: center;
	z-index:999;
	
}
#tag div{
	width: 100px;
	height: 25%;
}
#top{
	
}
#main{
	
}
#main1{
	
}
#footer{
	
}
#imageinfo ul div li img {
	width: 370px;
	height: 400px;
	margin: 0px;
	display: inline-block;
}

#imageinfo ul div li {
	position:absolute;
	list-style: none;
	width: 370px;
	padding: 0px;
	margin: 0px;
}

table {
	border-collapse: separate;
	border-spacing: 0 20px;
	width: 600px;
}
table tr th{
	border: 1px solid yellow;
	text-align: center;
	background-color: pink;
}
table tr td{
	text-align: center;
	border-bottom: 1px solid black;
}

#return {
	position: relative;
	top: 150px;
	z-index: 1;
	border: none;
}

#next {
	position: relative;
	left: 1780px;
	top: 150px;
	z-index: 1;
}
</style>
<script>
window.addEventListener('scroll',function(e){
	var sc=window.scrollY;
	if(sc>=200){
		var tag=document.getElementById("tag"); 
		var ttop=tag.style.top;
		
		tag.style.top=ttop+"px";
		tag.style.position="fixed";
		
	}
	
});
	
</script>
<div>
	<input type="hidden" value="${name }" name="">
	
	<div
		style="width: 1900px; height: 400px; position: relative; left: 5px;  overflow: hidden;">
		<!-- <input type="button" id="return" onclick="behind()"> -->
		<a href="javascript:behind()"><img
			src="${cp }/resources/images/test/button1.png" id="return"></a> <a
			href="javascript:next()"><img
			src="${cp }/resources/images/test/button2.png" id="next"></a>
		<div
			style="width: 2660px; height: 400px; left: 0px;  position: relative;"
			id="imageinfo">
			<c:forEach var="im" items="${list1 }">
				<ul style="padding: 0px;">
					<div style="left:200px;">
						<li style="margin-left: 10px" name="lili"><img
							src="${cp }/resources/maincss/images/test/${im.p_pic }"></li>
					</div>
				</ul>
			</c:forEach>
		</div>
	</div>
		<h1 style="text-align: center;">${name }</h1>
	<div id="map"
		style="left: 55%; width: 600px; height: 400px;top:120px; position: relative; "></div>
	<div
		style="margin-top: -300px; margin-bottom: 100px; margin-left: 300px; position: relative;width: 700px;">
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
					<th>메뉴</th>
					
					<td><c:forEach var="me" items="${list2 }">${me.me_name } : ${me.me_pay }원<br></c:forEach></td>
					
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
				<input type="hidden" value="${vo.d_num }" id="dnum">
				
				
			</c:forEach>
		</table>
		<input type="text" value="${phone }" id="m_phone">
	</div>
	<div id="tag" style="cursor: pointer;">
		<div id="top"><img title="블로그보러가기" style="width: 100px;height: 100px;" src="${cp }/resources/images/test/blog.png">낭만스토리</div>
<c:choose>
	<c:when test="${empty sessionScope.m_phone }">
	<div id="main" ><a class="modal-trigger"  href="#" data-toggle="modal" data-target="#Modal">
									<img title="찜하기" style="width: 100px;height: 100px;" src="${cp }/resources/images/test/zzim.png">낭만찜</a></div>
	</c:when>
	<c:otherwise>
		<div id="main" onclick="zzim()"><img title="찜하기" style="width: 100px;height: 100px;" src="${cp }/resources/images/test/zzim.png">낭만 찜</div>
	</c:otherwise>
</c:choose>		
		<div id="main1"><a href="${cp }/pj/review"><img title="리뷰쓰러가기" style="width: 100px;height: 100px;" src="${cp }/resources/images/test/review.png"></a>낭만리뷰</div>
		<div id="foot" onclick="report()"><img style="width: 100px;height: 100px;" src="${cp }/resources/images/test/report.png">신고하기</div>
	</div>
	
<!-- Login Form  모달창 -->
      
<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="ModalLabel">로그인</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			  <form action="${cp }/swMem/memLogin"  method="post"  role="form">
                    	<div class="form-group">
                               <label for="m_phone">전화번호</label> <input class="form-control" type="text"  name="m_phone"  placeholder="전화번호를 입력하세요."  required autofocus
                                   oninvalid="this.setCustomValidity('[ 전화번호 ] 를 입력하셔야합니다..')" onchange="this.setCustomValidity('')">
                         </div>
                        <div class="form-group">
                              <label for="m_pwd">비밀번호</label>  <input class="form-control" type="password"  name="m_pwd"  placeholder="비밀번호를 입력하세요."  required
                                    oninvalid="this.setCustomValidity('[ 비밀번호 ] 를 입력하셔야합니다..')" onchange="this.setCustomValidity('')">
                          </div>
                          <div class="form-group">
                                <button type="submit" class="food__btn"><span>Go</span></button>
                           </div>
                 </form> 
			</div>
		</div>
	</div>
</div>
<!-- //Login Form -->
	
	
	
	
	
	
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2cb81b6c831f4782c514d837a70bcf33&libraries=services"></script>
	<script>
		function zzim() {
			var d_num=parseInt(document.getElementById("dnum").value);
			var m_phone=document.getElementById("m_phone").value;
			alert(m_phone);
			location.href="${cp}/zzimOk?d_num="+d_num+"&m_phone="+m_phone;
		}
		//var scroll=window.scrollY;
		//alert(scroll);
		
		//if(scroll>218){
		//	var tag=document.getElementById("tag");
		//	tag.style.position="fixed";
		//}
		var dnum=document.getElementById("dnum").value;
		var x=(window.screen.width/2)-(200/2);
		var y=(window.screen.height/2)-(200/2);
		function report(){
			var kk;
			alert(dnum);
			kk=window.open('${cp}/report?dnum='+dnum,'_blank','width=500,height=500,left='+x+',top='+y);
			kk.focus();
		}
		var imageinfo = document.getElementById("imageinfo");
		var n = 370;
		var imgs = parseInt(imageinfo.style.left) - n;
		var lili = document.getElementsByName("lili");
		
		for (var i = 0; i < lili.length; i++) {	
			//var k = parseInt(lili[i].style.left)  370;
			var k = i*370;
			lili[i].style.left = k + "px";
		}
		
		
		function next() {
			
			for (var i = 0; i < lili.length; i++) {	
				var k = parseInt(lili[i].style.left)+ 370;
				//var k = i*370;
				lili[i].style.left = k + "px";
				if(k>2190){
					lili[i].style.left=10+"px";
				}

			}
		}
		function behind() {
			//var k=parseInt(imageinfo.style.left)-370;
			//alert(k);
			//imageinfo.style.left=k+"px";
			//if(k<-740){
			//imageinfo.style.left=1900+"px";

			//}
			
			//alert(lili[0].style.left);
			for (var i = 0; i < lili.length; i++) {	
			var k = parseInt(lili[i].style.left)- 370;
			//var k = i*370;
			lili[i].style.left = k + "px";
			if(k<-740){
				lili[i].style.left=1450+"px";
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
		var imageSrc = "${cp}/resources/maincss/images/logo/111.png", imageSize = new kakao.maps.Size(
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

								var moinfo = '<div style="width:200px;text-align:center;padding:0;"><p style="font-size:30px;color:black;">'
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
