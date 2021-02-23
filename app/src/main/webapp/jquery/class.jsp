<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	.menu{border: 1px solid black;}
	.active{background-color:yellow;}
</style>
<script>
$(function(){
	$("li.menu").on("click",function(){
		//alert($(this).html()); // 자바스크립트로 표현-> alert(this.innerHTML);
		$("li.menu").removeClass("active");
		$(this).addClass("active");
	})
});
</script>
</head>
<body>
<ul>
	<li class="menu active" data-num="1">게시판</li> <!-- $(".active").data("num") / $(".active").html() -->
	<li class="menu" data-num="2">회원가입</li>
	<li class="menu" data-num="3">로그인</li>
	<li class="menu" data-num="4">QnA</li>
</ul>
</body>
</html>