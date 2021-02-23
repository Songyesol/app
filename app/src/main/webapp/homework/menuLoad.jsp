<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>class.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	ul,li {  padding : 0px; margine : 0px;}
	.menu { border : 1px solid blue; 
	        background-color: gray; 
	        display: inline; }
	.active { background-color: yellowgreen; }
</style>
<script>
$(function(){
	//class menu 를 클릭하면 date - url (뒤에 .jsp 붙이기) 에 해당하는 페이지를 ajax로 요청하고 결과(결과타입은 html ) 를 result div에 넣기
	$("li.menu").on("click",function(){
		$("li.menu").removeClass("active");
		$(this).addClass("active");
		$.ajax({
			url:$(this).data("url")+".jsp",
			success:function(result){
				$("#result").append(result);
			},
			dataType:"html"
		})
		
	//
	});
	
});
</script>
</head>
<body>
<ul>
	<li class="menu" data-url="board">게시판</li>
	<li class="menu" data-url="member">회원가입</li>
	<li class="menu active" data-url="login">로그인</li>
</ul>
<div id="result">
	<h2>페이지 조회</h2>
</div>
</body>
</html>