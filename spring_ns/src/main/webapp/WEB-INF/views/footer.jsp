<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!-- footer.jsp -->

 <style>
#foo div ul li a{color: #FFFFFF;}
</style>
<div id="foo"> 
<div class="container " >
      <div class="col-lg-10 text-center">
          <ul class="list-inline mb-1">
            <li class="list-inline-item mt-3">
 			<c:choose>	
				<c:when test="${empty sessionScope.id}">           
                    <a href="${cp }/admin/adminLogin">운영자</a>
             	</c:when>
             	<c:otherwise>
             		<a href="${cp }/admin/adminMain">운영자</a>
             	</c:otherwise>
             </c:choose>
            </li>
            <li class="list-inline-item">&sdot;</li>
             <li class="list-inline-item">
            <c:choose>	
				<c:when test="${empty sessionScope.b_phone}">           
                    <a href="${cp }/business/businessLogin">사업자</a>
             	</c:when>
             	<c:otherwise>
             		<a href="${cp }/business/businessMain">사업자</a>
             	</c:otherwise>
             </c:choose>
             </li>
            <li class="list-inline-item">&sdot;</li>
             <li class="list-inline-item mt-2">
              <a  data-toggle="modal" data-target="#bsModal">사업자 등록</a>
            </li>
          </ul>
          
          <ul class="list-inline mb-2   ">
           
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/yg/test">Contact</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp }/pj/detailupload">Terms of Use</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="${cp}/pj/reviewlist">Privacy Policy</a>
            </li>
          </ul>
          		
          <p class="text-muted small mb-4 mb-lg-0 mt-5">&copy; Last_project 2019. All Rights Reserved.</p>
      </div>
 </div>
</div>



<!-- 사업자 등록 Modal창 -->
<div class="modal fade" id="bsModal" tabindex="-1" role="dialog" aria-labelledby="bsModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="bsModalLabel">사업자 등록</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form role="form" method="post" action="${cp}/pj/business" >
					<div class="form-group">
						<label for="b_bnum">사업자 등록번호</label>
						<input type="text" name="b_bnum" class="form-control input-lg" placeholder="Ex)0000000000"><br>
						<div class="check-font" id="id_check"></div>
					</div>	
					<div class="form-group">
						<label for="b_phone">전화번호</label>
						<input type="text" name="b_phone" class="form-control input-lg" placeholder="Ex)01012345678"><br>
					</div>
					<div class="form-group">
						<label for="b_name">이름</label>
						<input type="text" name="b_name" class="form-control input-lg" placeholder="Ex)홍길동"><br>
					</div>
					<div class="form-group">
						<label for="b_name">비밀번호</label>
						<input type="password" name="b_pwd" class="form-control input-lg" placeholder="Ex)숫자와 영문5자이상으로"><br>
					</div>
					<div class="modal-footer text-center mx-auto">
						<button type="submit" class="btn btn-primary">등록</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>		
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$("#b _bnum").blur(function(){
			var b_bnum=$('#b_bnum').val();
			$.ajax({
				url:'${pageContext.request.contextPath}/pj/business?b_bnum=' + b_bnum,
				type: 'get',
				success: function(data){
					console.log("1 = 중복o / 0 = 중복x : "+ data);
					
				if( data==1){
					//1: 아이디가 중복되는 문구
					$("#b_bnum").text("이미 등록된 번호입니다");
					$("#b_bnum").css("color","red");
					$("#submit").attr("disabled", true);
				})
				}, error: function(){
					console.log("실패");
				}
			})
	});
</script>
