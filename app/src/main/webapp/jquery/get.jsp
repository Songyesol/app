<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>get.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	//$("[name=hobby]:eq(1)").val()
	//$("[name=hobby]:eq(0)").attr("checked")
	//$("[name=hobby]:eq(0)").prop("checked",true) - 현재태그의 속성을 읽어내는 것 (true or false로 변경도 가능)
	//$("[name=hobby]").val(["ski"]) - checkbox는 여러개 선택이 가능하기 때문에 하나만 값을 넣더라도 배열로 넣어줘야햠.
	//$("div p:gt(1)").css("background-color", "yellow"); --gt(숫자) 보다 큰것
	//$("div p:lt(1)").css("background-color", "yellow"); --lt(숫자) 보다 작은것
	//$("div p:first-child").css("background-color", "yellow");
	//$("div p:last-child").css("background-color", "yellow");
	 </script>
</head>
<body>
	<input id="userid" name="userid" placeholder="userid"><br>
	<select name="job">
		<option value="d">디자이너</option>
		<option value="p">프로그래머</option>
	</select>
	
	<input type="checkbox" name="hobby" value="read" checked>독서
	<input type="checkbox" name="hobby" value="ski">스키
	<div class="good" data-num="g1" data-name="상품1">상품1</div>
	<div class="good" data-num="g2" data-name="상품2">상품2</div>
</body>
</html>