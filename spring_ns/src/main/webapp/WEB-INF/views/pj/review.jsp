<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<style type="text/css">
	@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

fieldset, label { margin: 0; padding: 0; }
body{ margin: 20px; }
h1 { font-size: 1.5em; margin: 10px; }

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
</head>
<body>
<h1>리뷰 작성하기</h1>
<form method="post" action="${cp }/pj/review" enctype="multipart/form-data">
	후기<br>
	<textarea rows="5" cols="50" name="r_content " style="resize:none;"></textarea><br>
	
<fieldset class="rating" >
    <input type="radio"  id="star5" name="r_score" value="5"  /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4" name="r_score" value="4"  /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3" name="r_score" value="3"  /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2" name="r_score" value="2"  /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1" name="r_score" value="1"  /><label class = "full" for="star1" title="Sucks big time - 1 star"  ></label>    
</fieldset>
<br>
<br>
<br>
파일 첨부<br>
		<input multiple="multiple" type="file" name="file1" /><br>
		<input type="submit" 	>
</form>
</body>
<script type="text/javascript">
	
	var radio=document.getElementsByName("rating")
	
	for( var i=0; i<radio.legnth; i++){
		if( radio[i].checked){
			alert(radio[i].value);
			break;
		}
	}
}
</script>
</html>
