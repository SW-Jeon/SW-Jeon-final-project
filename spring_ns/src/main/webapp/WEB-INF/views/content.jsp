<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${cp }/resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	function gogosing(bl_name){
		location.href="${cp}/blogpage2?bl_name="+bl_name;
	}
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