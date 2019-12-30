<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${cp }/resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var i=1;
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
		setInterval(function() {
			//.slideUp(실행시간,애니메이션수행이 완료되면 호출되는 function)
			$("#box1").fadeIn(500,function(){
				//alert("숨기기 완료!");
				$("#img1 img").prop("src","${cp }/resources/main/a" + i++ +".jpg");
				if(n>20) n=1;
			}1000,function(){
			});
		});
	});
</script>
<!-- content.jsp -->
<div>
	<div id="img1" style="position: relative">
			<ul style="float:left; list-style: none;">
				<li><img src="${cp }/resources/main/a1.jpg" id="img1" style="width: 1430px;"></li>
				<li><img src="${cp }/resources/main/a2.jpg" id="img2" style="width: 1430px;"></li>
			</ul>
		</div>


  <!-- Testimonials -->
  <section class="testimonials text-center bg-light">
    <div class="container">
      <h2 class="mb-5">What people are saying...</h2>
      <div class="row">
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="${cp}/resources/maincss/images/logo/non.png" alt="">
            <h5>Margaret E.</h5>
            <p class="font-weight-light mb-0">"This is fantastic! Thanks so much guys!"</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="${cp}/resources/maincss/images/logo/non.png" alt="">
            <h5>Fred S.</h5>
            <p class="font-weight-light mb-0">"Bootstrap is amazing. I've been using it to create lots of super nice landing pages."</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="${cp}/resources/maincss/images/logo/non.png" alt="">
            <h5>Sarah W.</h5>
            <p class="font-weight-light mb-0">"Thanks so much for making these free resources available to us!"</p>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>