<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<style>
		
	</style>
</head>
<body>
	<h2>Hello World!</h2>
	<div id="result"> 이벤트 테스트 </div>
	<div id="result2">두번째</div>
	
	<script type="text/javascript">
		var div = document.getElementById("result");
		var div2 = document.getElementById("result2");
		
		//onclick - 이벤트 타입 / function - 이벤트 handler / e - 이벤트 객체(이벤트와 관련된 모든 정보를 가지고 있음)
		div.onclick= clickHandler;
		div2.onclick= clickHandler;
							
		function clickHandler(e){
			e.target.id   //이벤트가 발생한 대상태그
			console.log(e.target.id ,e.clientX,e.clientY);
		}
	</script>
</body>
</html>
