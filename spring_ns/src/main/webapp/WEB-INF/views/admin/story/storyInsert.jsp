<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- storyInsert -->

<script type="text/javascript" src="${cp }/resources/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
window.onload=function(){
var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
 	oAppRef: oEditors,
 	elPlaceHolder: "ir1",
 	sSkinURI: "${cp }/resources/se2/SmartEditor2Skin.html",
 	fCreator: "createSEditor2"
	});
}
</script>

<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/admin/adminNavi.jsp"/> 

		<section class="mypage-cont col-md-10" style="margin-top: 80px; float: right;">
				<h1 class="text-info text-center mb-5">낭만매거진 글쓰기</h1>
				<form role="form" method="post" action="${cp}/admin/InfoInsert" >
					<input type="hidden" name="a_id" value=${a_id }>
					<div class="form-group">
						<label for="s_title">제목</label><input type="text" class="form-control" name="s_title">
					</div>
					<div class="form-group">
						<label for="i_content">내용</label><br>
						<textarea name="ir1" id="ir1" rows="10" cols="100"  name="s_content" placeholder="500자">에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.</textarea>
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn btn-primary">등록</button>
						<button type="reset" class="btn btn-danger">취소</button>
					</div>
				</form>
			</section>