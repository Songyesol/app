<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event1.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	//페이지 로드 이벤트(바디가 다 생성되고 나서 script 실행)
	$(function(){ ///document ready 와 동일 
		$("#btnAdd").on("click",function(){ //직접이벤트
			$("#result").append($("<li>").html("jsp")
										 .css("color","blue"))
										 .attr();
		});
		
		$("ul").on("click","li",function(){ //그룹이벤트 (위임)
			//(부모태그 / 중간에 실제로 이벤트가 행해질 target을 적어주어야함.)
			$(event.target).remove();
		console.log(this);
		});
	});
	
	/* 
	$(document).on("ready",function(){
		$("#btnAdd").on("click",function(){
			$("#result").append($("<li>").html("jsp"));
		});
	}); 
	*/
	/*
	window.addEventListener("load",function(){
		document.getElementsByTagName("ul")[0]
				.addEventListener("click", function(event){
					//this.remove();
					event.target.parentNode.removeChild(event.target);
					//부모태그 속 자식태그에게 이벤트를 전파하려면 this 안됌. event에다가 실제 target을 찾아주어야함.
				});
		document.getElementById("btnAdd")
				.addEventListener("click", function(){
					//appendChild 
					var li = document.createElement("li");
						li.innerHTML = "자바";
					document.getElementById("result").appendChild(li);
				});
	});
	*/
</script>
</head>
<body>
	<button type="button" id="btnAdd">추가</button>
	<ul id="result">
		<li>스프링</li>
	</ul>
</body>
</html>