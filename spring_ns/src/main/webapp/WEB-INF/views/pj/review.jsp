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
<form method="post" action="${cp }/pj/review">
	후기<br>
	<textarea rows="5" cols="50" name="content " style="resize:none;"></textarea><br>
<fieldset class="rating">
    <input type="radio"  id="star5" name="rating" value="5" onclick="button_click(this);" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4" name="rating" value="4"  onclick="button_click(this);"/><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" onclick="button_click(this);" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2" name="rating" value="2" onclick="button_click(this);" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1" name="rating" value="1" onclick="button_click(this);" /><label class = "full" for="star1" title="Sucks big time - 1 star"  ></label>    
</fieldset>


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
	var file_name = $(input).val();

    var ext = file_name.slice(file_name.lastIndexOf(".") + 1).toLowerCase();

    if (!(ext == "gif" || ext == "jpg" || ext == "jpeg" || ext == "png")) {
        alert("이미지파일 (.jpg, .jpeg, .png, .gif ) 만 업로드 가능합니다.");
        return false;
    }

    var file, img;
    var _URL = window.URL || window.webkitURL;
    var cnt = $("#div_" + type + " .image").length;
    if((file = input.files[0])) {
        var $temp = $(input).clone();

        img = new Image();
        img.src = _URL.createObjectURL(file);

        img.onload = function(e) {

            var width = this.width;
            var height = this.height;

            var clas = '';
            if(width > height) {
                clas = 'wl';
            }
            else if (width < height){
                clas = 'hl';
            }

            var $img = $("<div class='image'></div>");
            $img.append("<div class='image_wrap'><img src='" + img.src + "'/ ></div>");

            window.EXIF.getData(file, function () {
                var orientation = EXIF.getTag(this, "Orientation");

                if(orientation) {
                    $img.find('img').addClass(clas).css('transform','translate(-50%, -50%) ' + rotation[orientation]);
                }
            });

            $img.append("<div class='image_txt image_del' data-type='" + type + "' data-id='0'>삭제</div>");
            $("#div_" + type).append($img);
            $("#frm-" + type).append($temp.attr('id','add_' + type + '_' + cnt).attr('name', type + '_upload'));
            getImageCount(type);
            if(max == $("#div_" + type + " image").length) {
                $("#btn_" + type).hide();
            }
        }
    }
}
</script>
</html>
