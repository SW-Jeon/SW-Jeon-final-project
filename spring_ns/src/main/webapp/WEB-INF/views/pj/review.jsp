<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>별점</title>

<style>
 body{text-align:center;}


.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('${cp}/resources/stars/img/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
</style>
</head>
<body>

<div class="review1">
<h1>리뷰 작성하기</h1>
   <form method="post" action="${cp }/pj/review" enctype="multipart/form-data">
   <input type="hidden" value="${d_num }" name="d_num">
   <span class="star-input">
      <span class="input">
          <input type="radio" name="star_input" value="1" id="p1" >
          <label for="p1">1</label>
          <input type="radio" name="star_input" value="2" id="p2">
          <label for="p2">2</label>
          <input type="radio" name="star_input" value="3" id="p3">
          <label for="p3">3</label>
          <input type="radio" name="star_input" value="4" id="p4">
          <label for="p4">4</label>
          <input type="radio" name="star_input" value="5" id="p5">
          <label for="p5">5</label>
        </span><br>         
           <output for="star-input" ><b></b>점</output>
   </span><br>
   <br>
   후기<br>
      <textarea rows="5" cols="50" name="r_content " style="resize:none;"></textarea><br>
   파일 첨부<br>
         <input type="file" name="file1"  ><br>
         <button type="submit" class="btn btn-primary mt-3"> 등록 </button>
         <button type="reset"class="btn btn-danger mt-3"  >취소</button>
   </form>
</div>

<script src="${cp }/resources/stars/js/jquery-3.4.1.js"></script>
<script src="${cp }/resources/stars/js/star.js" charset="utf-8"></script>
<script type="text/javascript">
	var p5=document.getElementById("p5");
    var radio=document.getElementsByName("star-input");
    for( var i=0; i<radio.length; i++){
    	radio[i].addEventListener("click", function() {
    		if( this.checked){
	            alert(this.value);
     	  }
    	});
    }		
</script>
</body>
</html>