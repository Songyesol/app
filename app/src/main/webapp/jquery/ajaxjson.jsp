<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxjson.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#btn1").on("click",function(){
			//1. post( url [, data ] [, success ] [, dataType ] )
			$.post("../JsonServ",function(obj){
				//var obj = JSON.parse(response);
				$("#demo").append(obj[0]);
			},"json") // 어떤 타입으로 parsing 할지 적으면 파싱해서 결과값 넘겨줌.
			
			//2. ajax
			$.ajax({
				url:"../JsonServ",
				success : function(obj){ $("#demo").append(obj[1]); },
				dataType:"json"
				});
		});
		//button2 클릭 -> ajax로 findMember의 서버결과에서 name과 첫번째 취미를 출력
		//중괄호{}면 .으로, 대괄호[]이면 배열이기 때문에 index값 넣어줘야함 ex)[1]
		$("#btn2").on("click",function(){
			$.ajax({
				url:"../FindMember",
				success:function(obj){$("#demo").append("이름 : " + obj.name + " , 첫번째 취미 : " + obj.hobbys[0]);},
				dataType:"json"
			})
		});
	});
</script>
</head>
<body>

<div id="demo">
	<h2>The XMLHttpRequest Object</h2>
</div>
<button type="button" id="btn1">JsonServ</button>
<button type="button" id="btn2">FindMember</button>
</body>

</html>