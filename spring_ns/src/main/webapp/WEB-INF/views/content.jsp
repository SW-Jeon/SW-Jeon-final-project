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
    <div class="container">
      <h2 class="mb-5">낭만 스토리</h2>
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