<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	.slide{
		position: relative;
		width: 250px;
		height: 150px;
		margin: 0 auto;
		padding: 0;
		overflow: hidden;
		
	}
	.slide ul{
		position: absolute;
		margin: 0px;
		padding: 0;
		list-style: none;
	}
	.slide ul li{
		float:left;
		width: 250px;
		height: 150px;
		margin: 0;
		padding: 0;
	}
	.slide ul li img{
		width: 250px;
		height: 150px;
	}
</style>
<script>
	
	$(document).ready(function(){
		var $slide = $(".slide").find("ul");
		var slideWidth=$slide.children().outerWidth();
		var slideHeight=$slide.children().outerHeight();
		var length=$slide.children().length;
		var rollingId;
		rollingId=setInterval(function() {rollingStart();},3000);
		function rollingStart(){
			$slide.css("width",(slideWidth+length) +"px");
			$slide.css("height",slideHeight+"px");
			$slide.animate({left:-slideWidth},1500,function(){
				$(this).append("<li>"+$(this).find("li:first").html()+"</li>");
				$(this).find("li:first").remove();
				$(this).css("left",0);
			});
			
		}
	});
		
</script>
<!-- content.jsp -->
<div>
	 <!-- Icons Grid -->
  <section class="features-icons bg-light text-center">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
            <div class="slide">
            <ul>
            <c:forEach var="i" begin="1" end="20">
            	
              <li><img src="${cp }/resources/maincss/images/mainimg/${i }.jpg"></li>
              
              </c:forEach>
              </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Image Showcases -->
  <section class="showcase">
    <div class="container-fluid p-0">
      <div class="row no-gutters">

        <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('${cp}/resources/img/bg-showcase-1.jpg');"></div>
        <div class="col-lg-6 order-lg-1 my-auto showcase-text">
          <h2>Fully Responsive Design</h2>
          <p class="lead mb-0">When you use a theme created by Start Bootstrap, you know that the theme will look great on any device, whether it's a phone, tablet, or desktop the page will behave responsively!</p>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6 text-white showcase-img" style="background-image: url('${cp}/resources/img/bg-showcase-2.jpg');"></div>
        <div class="col-lg-6 my-auto showcase-text">
          <h2>Updated For Bootstrap 4</h2>
          <p class="lead mb-0">Newly improved, and full of great utility classes, Bootstrap 4 is leading the way in mobile responsive web development! All of the themes on Start Bootstrap are now using Bootstrap 4!</p>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('${cp}/resources/img/bg-showcase-3.jpg');"></div>
        <div class="col-lg-6 order-lg-1 my-auto showcase-text">
          <h2>Easy to Use &amp; Customize</h2>
          <p class="lead mb-0">Landing Page is just HTML and CSS with a splash of SCSS for users who demand some deeper customization options. Out of the box, just add your content and images, and your new landing page will be ready to go!</p>
        </div>
      </div>
    </div>
  </section>

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