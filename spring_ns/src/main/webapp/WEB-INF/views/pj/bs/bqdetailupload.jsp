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
<div>
<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/pj/bs/bsNavi.jsp"/>   
<!-- bsMain -->
	

        <!-- Page Content -->
        <div id="con">
        <!-- Page Content -->
        <div class="container-fluid">
				<div class="row">
					<div class="col-md-12">

				<form method="post" action="${cp }/pj/bs/bqdetailupload" enctype="multipart/form-data">
				<div class="col-md-6">
				
				음식점 이름
					<input type="text" name="d_sname" class="form-control input-lg" placeholder=""><br>
				</div>
				<div >
					음식점 종류<select name="d_kind">
						<option value="한식">한식</option>
						<option value="양식">양식</option>
						<option value="중식">중식</option>
						<option value="일식">일식</option>
						<option value="카페">카페</option>
						<option value="세계음식">세계음식</option>
					</select>
				</div>
					주차 여부<br>
				<div class="btn-group-toggle" data-toggle="buttons" >		
					<label class="btn btn-danger">	
						<input type="radio" name="d_park"  value="o" >o
					</label>			
					<label class="btn btn-danger">	
						<input type="radio" name="d_park"  value="x">x
					</label>
				</div>
				<div>
					휴무일
					<input type="text" name="d_holi" class="form-control input-lg" placeholder="">
				</div>
				<div>
					영업시간
					<input type="text" name="d_time" class="form-control input-lg" placeholder="">
				</div>
				<div>
					음식점 전화번호
					<input type="text" name="d_phone" class="form-control input-lg" placeholder="">
				</div>
				<div>
					음식점 주소<br>
					우편번호 : <input type="text" name="zip" style="width:80px; height:26px;" />
					<button type="button" style="width:60px; height:32px;" onclick="openZipSearch()">검색</button><br>
					주소 : <input type="text" name="d_addr" style="width:300px; height:30px;" readonly  class="form-control input-lg"/><br>
					
				</div>
				<div>
					파일 첨부<br>
			         <input multiple="multiple" type="file" name="file"  ><br>
		         </div>
		         <div>
		         	<button type="submit" class="btn btn-primary mt-3">등록</button>
					<button type="reset" class="btn btn-primary mt-3">취소</button> 
		         </div></form>
			</div></div></div></div></div>
	
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 
	