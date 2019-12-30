<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
	function openZipSearch() {
		new daum.Postcode({
			oncomplete: function(data) {
				$('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
				$('[name=d_addr]').val(data.address);
				$('[name=addr2]').val(data.buildingName);
			}
		}).open();
	}
</script>
<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/pj/bs/bsNavi.jsp"/>   
<div id="con">
        <!-- Page Content -->
        <section class="mypage-cont col-md-10" style="margin-top: 30px; float: right;">
					<h1 class="text-info text-center mb-3 " >사업자 문의</h1>
					<form method="post" action="${cp }/pj/bs/bqdetailupload" enctype="multipart/form-data">
						<div class="form-group">
							<label for="d_sname">상호</label>
							<input type="text" name="d_sname" class="form-control " placeholder="상호를 입력해주세요.">
						</div>
						<div class="form-group">
							<label for="d_kind" class="mr-2">음식점 종류</label>
								<select name="d_kind">
									<option value="한식">한식</option>
									<option value="양식">양식</option>
									<option value="중식">중식</option>
									<option value="일식">일식</option>
									<option value="카페">카페</option>
									<option value="세계음식">세계음식</option>
								</select>
						</div>
						<div class="form-group">
							<label for="d_park">주차 여부</label>
							<div class="btn-group-toggle" data-toggle="buttons" >		
								<label class="btn btn-primary">	
									<input type="radio" name="d_park"  value="o" >o
								</label>			
								<label class="btn btn-danger">	
									<input type="radio" name="d_park"  value="x">x
								</label>
							</div>
						</div>
						<div class="form-group">
							<label for="d_holi">휴무일</label>
							<input type="text" name="d_holi" class="form-control "  placeholder="휴무일을 입력해주세요.">
						</div>
						<div class="form-group">
							<label for="d_time">영업시간</label>
							<input type="text" name="d_time" class="form-control "  placeholder="영업시간을 입력해주세요.">
						</div>
						<div class="form-group">
							<label for="d_phone">전화번호</label>
							<input type="text" name="d_phone" class="form-control" placeholder="음식점 전화번호 입력해주세요.">
						</div>
						<div class="form-group">
							<label for="d_addr">주소</label>
							<button type="button" class="btn btn-success"  onclick="openZipSearch()">검색</button><br>
								우편번호  <input type="text" name="zip"    style="width:80px; height:26px;"  readonly  class="form-control " />
								주소   <input type="text" name="d_addr" style="width:300px; height:30px;" readonly  class="form-control "/>
						</div>
						<div class="form-group">
							<label for="file">파일 첨부</label>
			         		<input multiple="multiple" type="file" name="file"  class="input-success"  ><br>
		         		</div>
		         		<div class="form-group text-center">
		         			<button type="submit" class="btn btn-primary mt-3">등록</button>
							<button type="reset" class="btn btn-danger mt-3">취소</button> 
		        		 </div>
		        	</form>
	 </section>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 
	