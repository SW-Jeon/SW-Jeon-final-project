<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<div id="chat_box"></div>
	<input type="text" id="msg">
	<button id="msggo">전송</button>
	<script type="text/javascript">
		$(document).ready(function(){
			var socket = io("http://localhost:9090/nm/");
			$("#msg").keydown(function(key){
				if(key.keyCode == 13){
					msggo.click();
				}
			});
			
		$("#msggo").click(function(){
			socket.emit("send_msg",$("#msg").val());
			$("#msg").val("");
		});
		});
	</script>
</div>