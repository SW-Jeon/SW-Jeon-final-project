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
	window.onload = function() {
		document.getElementById('select1').onchange = function() { 
			location.href="${cp}/searchList?keyword=${keyword}&standard="+this.value;
			} 
		};

	
function action1(d_sname,d_num){
	location.href="${cp}/detailpage?name="+d_sname+"&d_num="+d_num;
}
function action2(count,m){
	infos[count].open(map,markers[count]);
	map.panTo(mPositions[count]);  
	m.style.opacity = 0.5;
	m.style.zoom = 1.2;
}
function action3(count,m){
	infos[count].close();
	m.style.opacity = 1;
	m.style.zoom = 1.0;
}
function action4(m){
	var lis=document.getElementsByClassName("lis");
	var lis2=document.getElementsByName("standard")[0];
	for(var i=0;i<lis.length;i++){
		lis[i].src="${cp}/resources/check/o"+(i+4)+".png";
	}
	if(m.src.match("o4.png")){
		m.src="${cp}/resources/check/o1.png";
		lis2.value='r_score desc';
	}else if(m.src.match("o5.png")){
		m.src="${cp}/resources/check/o2.png";
		lis2.value='d_hit desc'
	}else if(m.src.match("o6.png")){
		m.src="${cp}/resources/check/o3.png";
		lis2.value='d_sname'
	}
}
var ck=0;
if(${pri.equals('0')} ){
	ck=1;
}
function action5(m){
	var pri=document.getElementsByClassName("pri");
	var pri2=document.getElementsByName("pri")[0];
	alert(ck);
	for(var i=0;i<pri.length;i++){
		pri[i].src="${cp}/resources/check/pp"+(i+5)+".png";
	}
	if(m.src.match("pp5.png")&&ck!=1){
		m.src="${cp}/resources/check/pp1.png";
		pri2.value='0'
		ck=1;
	}else if(m.src.match("pp6.png")&&ck!=2){
		m.src="${cp}/resources/check/pp2.png";
		pri2.value='1'
		ck=2;
	}else if(m.src.match("pp7.png")&&ck!=3){
		m.src="${cp}/resources/check/pp3.png";
		pri2.value='2'
		ck=3;
	}else if(m.src.match("pp8.png")&&ck!=4){
		m.src="${cp}/resources/check/pp4.png";
		pri2.value='3'
		ck=4;
	}else{
		ck=0;
		pri2.value=''
	}
}
var ck1=0;
function action6(m){
	var food=document.getElementsByClassName("food");
	var food2=document.getElementsByName("food")[0];
	for(var i=0;i<food.length;i++){
		food[i].src="${cp}/resources/check/f"+(i+7)+".png";
	}
	if(m.src.match("f7.png")&&ck1!=1){
		m.src="${cp}/resources/check/f1.png";
		food2.value='한식';
		ck1=1;
	}else if(m.src.match("f8.png")&&ck1!=2){
		m.src="${cp}/resources/check/f2.png";
		food2.value='일식';
		ck1=2;
	}else if(m.src.match("f9.png")&&ck1!=3){
		m.src="${cp}/resources/check/f3.png";
		food2.value='중식';
		ck1=3;
	}else if(m.src.match("f10.png")&&ck1!=4){
		m.src="${cp}/resources/check/f4.png";
		food2.value='양식';
		ck1=4;
	}else if(m.src.match("f11.png")&&ck1!=5){
		m.src="${cp}/resources/check/f5.png";
		food2.value='카페';
		ck1=5;
	}else if(m.src.match("f12.png")&&ck1!=6){
		m.src="${cp}/resources/check/f6.png";
		food2.value='세계음식';
		ck1=1;
	}else{
		ck1=0;
		food2.value='';
	}
}
var ck2=0;
function action7(m){
	var park=document.getElementsByClassName("park");
	var park2=document.getElementsByName("park")[0];
	alert(park2.value);
	for(var i=0;i<park.length;i++){
		park[i].src="${cp}/resources/check/pa"+(i+3)+".png";
	}
	if(m.src.match("pa3.png")&&ck2!=1){
		m.src="${cp}/resources/check/pa1.png";
		park2.value='x';
		ck2=1;
	}else if(m.src.match("pa4.png")&&ck2!=2){
		m.src="${cp}/resources/check/pa2.png";
		park2.value='o';
		ck2=2;
	}else{
		park2.value='';
		ck2=0;
	}
}
function action8(){
	var pri=document.getElementsByClassName("pri");
	var food=document.getElementsByClassName("food");
	var park=document.getElementsByClassName("park");
	for(var i=0;i<pri.length;i++){
		pri[i].src="${cp}/resources/check/pp"+(i+5)+".png";
	}
	for(var i=0;i<food.length;i++){
		food[i].src="${cp}/resources/check/f"+(i+7)+".png";
	}
	for(var i=0;i<park.length;i++){
		park[i].src="${cp}/resources/check/pa"+(i+3)+".png";
	}
}
</script>
</head>
<body>
<div style="margin-left: 10%; width:80%;">
<br><span style="font-size: 30px;"><b>[<span style="color: orange;">${keyword }</span>]검색된 맛집정보</b></span>
<c:choose>
	<c:when test="${empty m_phone }">
		<select style="width: 200px; height:30px; float: right;" id="select1">
			<c:choose>
			<c:when test="${standard=='d_hit desc'}">
			<option value="d_hit desc" selected="selected">인기순
			<option value="r_score desc">별점순
			<option value="d_sname">상호순
			</c:when>
			<c:when test="${standard=='r_score desc'}">
			<option value="d_hit desc">인기순
			<option value="r_score desc" selected="selected">별점순
			<option value="d_sname">상호순
			</c:when>
			<c:when test="${standard=='d_sname'}">
			<option value="d_hit desc">인기순
			<option value="r_score desc">별점순
			<option value="d_sname" selected="selected">상호순
			</c:when>
			</c:choose>
		</select>
	</c:when>
	<c:otherwise>
	    <div style="float: right;" data-toggle="modal" data-target="#exampleModal"><b><i class="fas fa-cogs mr-3" style="font-size: 20px">필터</i></b>
	    	
	    </div>
	</c:otherwise>
</c:choose>

<hr><hr style="border-top:1px solid black;"><br>
</div>
<hr>
<c:choose>
	<c:when test="${not empty list }">
<jsp:include page="/WEB-INF/views/api/api.jsp" flush="false"/><br>
<div class="container-fluid">
<div class="row">
<c:set var="count" value="0"/>
<c:forEach var="i" items="${list }">
<div class="col-md-4" style="text-align: center; width: 100px;" onclick="action1('${i.d_sname}','${i.d_num }')" onmouseover="action2(${count},this)" onmouseout="action3(${count},this)">
	<c:choose>
		<c:when test="${empty i.p_pic }">
			<img style="width:300px;height: 300px;" src="${cp }/resources/maincss/images/logo/non.png"><br><br>
		</c:when>
		<c:otherwise>
			<img style="width:300px;height: 300px;" src="${cp }/resources/maincss/images/test/${i.p_pic }"><br><br>
		</c:otherwise>
	</c:choose>
	<div align="center">
	<div align="left" style="width: 300px">
	<span style="font-size: 30px">${i.d_sname }</span>&nbsp&nbsp&nbsp<span style="font-size: 30px; color: orange">${i.r_score }</span><br>
	<span style="color: grey" >${i.d_addr }<br>
	${i.d_kind }<br>
	${i.d_time }<br>
	<i class="flaticon-medical mr-4">&nbsp${i.d_hit }</i><i class="flaticon-pencil">&nbsp${i.r_count }</i>
	</span>
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
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="max-width: 100%; width: auto; display: table;">
		<div class="modal-content">
			<div class="modal-body">
				<form role="form" method="post" action="${cp}/searchList" >
					<input type="text" name="standard" value="${standard }">
					<input type="text" name="pri" value="${pri }">
					<input type="hidden" name="food" value="${food }">
					<input type="hidden" name="park" value="${park }">
					<input type="hidden" name="keyword" value="${keyword }">
					<div class="form-group border-bottom">
						<label for="mq_reply">정렬기준</label>
						<div style="text-align: center;">
							<c:choose>
							<c:when test="${standard.equals('r_score desc') }">
							<img class="lis" style="width: 200px; margin-right: 40px;" src="${cp}/resources/check/o1.png" onclick="action4(this)">
							<img class="lis" style="width: 200px; margin-right: 40px;" src="${cp}/resources/check/o5.png" onclick="action4(this)">
							<img class="lis" style="width: 200px" src="${cp}/resources/check/o6.png" onclick="action4(this)">
							</c:when>
							<c:when test="${standard.equals('d_hit desc') }">
							<img class="lis" style="width: 200px; margin-right: 40px;" src="${cp}/resources/check/o4.png" onclick="action4(this)">
							<img class="lis" style="width: 200px; margin-right: 40px;" src="${cp}/resources/check/o2.png" onclick="action4(this)">
							<img class="lis" style="width: 200px" src="${cp}/resources/check/o6.png" onclick="action4(this)">
							</c:when>
							<c:when test="${standard.equals('d_sname') }">
							<img class="lis" style="width: 200px; margin-right: 40px;" src="${cp}/resources/check/o4.png" onclick="action4(this)">
							<img class="lis" style="width: 200px; margin-right: 40px;" src="${cp}/resources/check/o5.png" onclick="action4(this)">
							<img class="lis" style="width: 200px" src="${cp}/resources/check/o3.png" onclick="action4(this)">
							</c:when>
							<c:otherwise>
							<img class="lis" style="width: 200px; margin-right: 40px;" src="${cp}/resources/check/o4.png" onclick="action4(this)">
							<img class="lis" style="width: 200px; margin-right: 40px;" src="${cp}/resources/check/o5.png" onclick="action4(this)">
							<img class="lis" style="width: 200px" src="${cp}/resources/check/o6.png" onclick="action4(this)">
							</c:otherwise>
							</c:choose>
						</div>
					</div>
					<hr style="border-top:1px solid black;">
					<div class="form-group border-bottom" style="border-bottom: 2px solid black;">
						<label for="mq_reply">가격/1인분</label>
						<div>
							<c:choose>
							<c:when test="${pri.equals('0') }">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp1.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp6.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp7.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp8.png" onclick="action5(this)">
							</c:when>
							<c:when test="${pri.equals('1') }">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp5.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp2.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp7.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp8.png" onclick="action5(this)">
							</c:when>
							<c:when test="${pri.equals('2') }">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp5.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp6.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp3.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp8.png" onclick="action5(this)">
							</c:when>
							<c:when test="${pri.equals('3') }">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp5.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp6.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp7.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp4.png" onclick="action5(this)">
							</c:when>
							<c:otherwise>
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp5.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp6.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp7.png" onclick="action5(this)">
							<img class="pri" style="width: 180px" src="${cp}/resources/check/pp8.png" onclick="action5(this)">
							</c:otherwise>
							</c:choose>
						</div>
					</div>
					<hr style="border-top:1px solid black;">
					<div class="form-group border-bottom">
						<label for="mq_reply">음식종료</label>
						<div style="text-align: center;">
							<c:choose>
							<c:when test="${food.equals('한식') }">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f1.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f8.png" onclick="action6(this)">
							<img class="food" style="width: 180px;" src="${cp}/resources/check/f9.png" onclick="action6(this)"><br><br>
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f10.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f11.png" onclick="action6(this)">
							<img class="food" style="width: 180px" src="${cp}/resources/check/f12.png" onclick="action6(this)">
							</c:when>
							<c:when test="${food.equals('일식') }">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f7.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f2.png" onclick="action6(this)">
							<img class="food" style="width: 180px;" src="${cp}/resources/check/f9.png" onclick="action6(this)"><br><br>
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f10.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f11.png" onclick="action6(this)">
							<img class="food" style="width: 180px" src="${cp}/resources/check/f12.png" onclick="action6(this)">
							</c:when>
							<c:when test="${food.equals('중식') }">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f7.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f8.png" onclick="action6(this)">
							<img class="food" style="width: 180px;" src="${cp}/resources/check/f3.png" onclick="action6(this)"><br><br>
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f10.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f11.png" onclick="action6(this)">
							<img class="food" style="width: 180px" src="${cp}/resources/check/f12.png" onclick="action6(this)">
							</c:when>
							<c:when test="${food.equals('양식') }">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f7.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f8.png" onclick="action6(this)">
							<img class="food" style="width: 180px;" src="${cp}/resources/check/f9.png" onclick="action6(this)"><br><br>
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f4.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f11.png" onclick="action6(this)">
							<img class="food" style="width: 180px" src="${cp}/resources/check/f12.png" onclick="action6(this)">
							</c:when>
							<c:when test="${food.equals('카페') }">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f7.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f8.png" onclick="action6(this)">
							<img class="food" style="width: 180px;" src="${cp}/resources/check/f9.png" onclick="action6(this)"><br><br>
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f10.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f5.png" onclick="action6(this)">
							<img class="food" style="width: 180px" src="${cp}/resources/check/f12.png" onclick="action6(this)">
							</c:when>
							<c:when test="${food.equals('세계음식') }">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f7.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f8.png" onclick="action6(this)">
							<img class="food" style="width: 180px;" src="${cp}/resources/check/f9.png" onclick="action6(this)"><br><br>
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f10.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f11.png" onclick="action6(this)">
							<img class="food" style="width: 180px" src="${cp}/resources/check/f6.png" onclick="action6(this)">
							</c:when>
							<c:otherwise>
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f7.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f8.png" onclick="action6(this)">
							<img class="food" style="width: 180px;" src="${cp}/resources/check/f9.png" onclick="action6(this)"><br><br>
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f10.png" onclick="action6(this)">
							<img class="food" style="width: 180px;margin-right: 40px" src="${cp}/resources/check/f11.png" onclick="action6(this)">
							<img class="food" style="width: 180px" src="${cp}/resources/check/f12.png" onclick="action6(this)">
							</c:otherwise>
							</c:choose>
						</div>
					</div>
					<hr style="border-top:1px solid black;">
					<div class="form-group border-bottom">
						<label for="mq_reply">주차여부</label>
						<div style="text-align: center;">
							<c:choose>
							<c:when test="${park.equals('x') }">
							<img class="park" style="width: 200px; margin-right: 60px" src="${cp}/resources/check/pa1.png" onclick="action7(this)">
							<img class="park" style="width: 200px" src="${cp}/resources/check/pa4.png" onclick="action7(this)">
							</c:when>
							<c:when test="${park.equals('o') }">
							<img class="park" style="width: 200px; margin-right: 60px" src="${cp}/resources/check/pa3.png" onclick="action7(this)">
							<img class="park" style="width: 200px" src="${cp}/resources/check/pa2.png" onclick="action7(this)">
							</c:when>
							<c:otherwise>
							<img class="park" style="width: 200px; margin-right: 60px" src="${cp}/resources/check/pa3.png" onclick="action7(this)">
							<img class="park" style="width: 200px" src="${cp}/resources/check/pa4.png" onclick="action7(this)">
							</c:otherwise>
							</c:choose>
						</div>
					</div>
					<hr style="border-top:1px solid black;">
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary col-md-6">적용</button>
						<button type="button" class="btn btn-danger col-md-6" onclick="action8()" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

</html>