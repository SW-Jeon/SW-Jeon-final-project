<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	@import url(/netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);




/****** Style Star Rating Widget *****/

.rating { 
  border: none;
  float: left;
}

.rating > input { display: none; } 
.rating > label:before { 
  margin: 5px;
  font-size: 1.25em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > label { 
  color: #ddd; 
 float: right; 
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating > input:checked ~ label, /* show gold star when clicked */
.rating:not(:checked) > label:hover, /* hover current star */
.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

.rating > input:checked + label:hover, /* hover current star when changing rating */
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
</style>
<div>
<h1>리뷰 작성하기</h1>
<form method="post" action="${cp }/pj/review" enctype="multipart/form-data">
	후기<br>
	<textarea rows="5" cols="50" name="r_content " style="resize:none;"></textarea><br>
	

<br>
<br>
<br>
파일 첨부<br>
		<input multiple="multiple" type="file" name="file1" /><br>
		<button type="submit" class="btn btn-primary mt-3"> 업로드 </button>
		<button type="reset"class="btn btn-danger mt-3"  >취소</button>
</form>

	<script type="text/javascript">
	
</script>
</div>

                           
