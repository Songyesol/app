<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax01.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	$("#btn").on("click",function(){
		var param = "userid="+$("#userid").val();
		var url = "../FindName";
		
		//1.load (서버결과를 가공할 필요가 없을때...)
			//$("#demo").load(url+"?"+param);
		
		//2. post/.get( url [, data ] [, success ] [, dataType ] ) -무조건 비동기식
			param = {userid : $("#userid").val() , dept:"개발"}; //object 타입도 가능 ?userid=aaa&dept="개발"
			$.post(url,param,function(response){ //result는 this.responseText와 동일.
				$("#demo").append("post : " + response);
			});
			
		//3.ajax
		$.ajax(url, {
			async :true,	// true:비동기
			success : function(response){ 
						$("#demo").append("ajax : " + response);
					},
			data : param // 서버에 보낼 데이터
		});
		
	})
});
</script>
</head>
<body>
	<div id="demo">
		<h2>The XMLHttpRequest Object</h2>
	</div>
	<input id="userid">
	<button type="button" id="btn">Change Content</button>

</body>
</html>