<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>findTag.jsp</title>
<style>

</style>
<script>
	function toSm(){
		//버튼 클릭할때마다 모든 이미지 크기를 100px씩 감소시키기
		//현재 이미지의 크기
		var imgs = document.getElementsByTagName("img");
		for(var i=0; i<imgs.length; i++){
			var size = imgs[i].style.width;
			size = parseInt(size)-100;
			imgs[i].style.width = size +"px";
		}
		//크기 100을 줄여서 빼서 크기 지정
	}
</script>
</head>
<body>
	<button type="button"  onclick="toSm()">작게</button><br>
	<img id="img1" style="width:500px; height:500px;" src="../images/coffee.jpg">
	<img class="backimg" style="width:600px;height:500px;" src="../images/flower.jpg">
	<img class="backimg" style="width:700px;height:500px;" src="../images/programming.jpg">
</body>
</html>