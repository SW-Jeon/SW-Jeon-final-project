<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${cp }/resources/js/jquery-3.4.1.js"></script>
<style>
	#img{
		width: 1440px; height: 220px; position: relative; overflow: hidden; top: 30px;
	}
	#img1{
		width: 2880px;height: 220px;position: absolute;left: 0px;
	}
	#img1 ul li img{width: 141px;height: 216px;margin: 2px;}
	#img1 ul li{float: left;list-style: none;position: absolute;}
	
</style>
<script type="text/javascript">
		$(function (){
			$("#img1 ul li").each(function(n){
				var left=144*n;
				$(this).css("left",left);
			});
			setInterval(function(){
				$("#img1 ul li").each(function(){
					var left=parseInt($(this).css("left"));
					var moveLeft=left-144;
					$(this).animate({left:moveLeft},500,function(){
						if(moveLeft<=-1440){
							$(this).css({left:1440});
						}
					});
				});
			},2000);
		})
	
		//var i=1;
		// setInterval(function() {
		//	var a=parseInt($("#imgslide").css("left"));
		//	$("#imgslide").animate({
		//		left:a-1430
		//	},1000,function(){
		//	});
		//}, 2000)
		//setInterval(function() {
		//var left=parseInt($("#imglist").css("left"));
		//$("#imglist").animate({
		//	left:left-1430
		//},1000,function(){
		//	$("#imglist #img"+i++).remove();
		//	$("#imglist ul").append("<li><img src='${cp }/resources/main/a"+i+".jpg' id='img"+i+"' style='width: 1430px;'></li>");
		//	$(this).css("left",0);
		//	if(i>2) i=1;
		//});
	//}, 2000)
	/*	setInterval(function() {
			//.slideUp(실행시간,애니메이션수행이 완료되면 호출되는 function)
			$("#img1").fadeIn(500,function(){
				//alert("숨기기 완료!");
				$("#img1 img").prop("src","${cp }/resources/main/a" + i++ +".jpg");
				if(i>20) i=1;
			}1000,function(){
			});
		});
	});*/
	
	function gogosing(bl_name){
		location.href="${cp}/blogpage2?bl_name="+bl_name;
	}

</script>
<!-- content.jsp -->
<div>
	<h1 class="text-info ml-3 mt-3">낭만 맛집 리스트</h1>
<div id="img">
	<div id="img1">
			<ul>
				<c:forEach var="i" begin="1" end="20">
				<li><img src="${cp }/resources/maincss/images/mainimg/${i }.jpg"></li>
				</c:forEach>
			</ul>
		</div>
</div>
  <!-- Testimonials -->
  <section class="testimonials text-center bg-light">
    <h1 class="text-info ml-3 mt-3">낭만 맛집 리스트</h1>
    <div class="container">
   
      <div class="row">
      <c:forEach var="vo" items="${blist }">
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="${cp}/resources/imgpro/${vo.bl_profile }" style="height: 200px;" onclick="gogosing('${vo.bl_name }')"><br>
            <h5>${vo.bl_name }</h5>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>
  </section>
</div>
 <!-- Image Showcases -->
  <section class="showcase mb-3">
    <div class="container-fluid p-0">
      <div class="row no-gutters">

        <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('${cp }/resources/img/ca.PNG');"></div>
        <div class="col-lg-6 order-lg-1 my-auto showcase-text">
          <h2 class="text-info mb-5 ml-3">한우란?</h2>
          <p class="lead mb-0  ml-3"><span class="text-danger">한우(韓牛)</span> 는 대한민국에서 사육하고 있는 토종 소를 말한다.<br><br>
          고기로서의 대표적인 특징은 엄청나게 하얀 마블링이다.<br><br>
           세계적으로 가장 유명하고 인기있는 고기소 품종들인 블랙 앵거스와<br><br>
           다른 소고기와 비교해도 지방질이 상당히 많다. <br><br>
          뼈 육수는 다른 소에 비해 감칠맛이 월등히 좋아서 국물 용도로는 최고로 평가받는다.</p>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6 text-white showcase-img" style="background-image: url('${cp }/resources/img/ka.PNG');"></div>
        <div class="col-lg-6 my-auto showcase-text">
          <h2 class="text-info mb-5  ml-3">케이크란?</h2>
          <p class="lead mb-0  ml-3">유럽식 과자의 일종. 밀가루, 달걀, 버터, 우유, 설탕 등으로 거품을 내거나  팽창제를 써서 만들며 대개의 경우 폭신한 촉감이 일품이다.<br><br>
          실제 케이크는 우리가 <span class="text-danger">"케이크"</span>라고 생각하는 음식 중 "빵" 부분에 해당하는 물건이다.<br><br>
           즉, 생크림, 딸기, 초콜릿, 과일 등은 모두 장식으로 올라가는 것이다.<br><br>
           흔히 생각하는 케이크의 정식 명칭은 보통 데코레이션 케이크.<br><br>
            그 외에 롤케이크, 팬케이크 등 여러 가지 조리 방식의 케이크가 있지만<br><br> 왠지 이 데코레이션 케이크가 케이크의 표준이 되어버렸다.
          </p>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('${cp }/resources/img/pi.PNG');"></div>
        <div class="col-lg-6 order-lg-1 my-auto showcase-text">
          <h2 class="text-info mb-5  ml-3">피자란?</h2>
          <p class="lead mb-0  ml-3">밀가루로 된 얇고 납작한 반죽(도우)에 토마토 소스와 치즈 등(토핑)을 얹어서 구워내는 이탈리아 요리다. <br><br>
          이탈리아를 대표하는 요리 중 하나로 한국인들이 많이 즐기는 서양 음식 중 하나이기도 하다.<br><br>
          <span class="text-danger">피자</span>의 기원은 넓게 보면, 빵에 치즈와 허브를 얹어 먹었다는 페르시아의 이야기와<br><br>
           그리스군 병사들이 방패에 빵과 대추야자를 올려 구워먹었다는 이야기로 거슬러 올라갈 수 있지만,<br><br> 
          18세기 말에 등장한 나폴리탄 파이가 현대 피자의 원형이라고 여겨진다.
          </p>
        </div>
      </div>
    </div>
  </section >
