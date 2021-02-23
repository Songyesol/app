<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div { display: inline-block; 
	width : 100px; 
	height: 100px;
	border: 1px solid black;
	text-align:center; 
	font-size:25px;}
	div:hover {
	background-color:gold;
	}
	
</style>

</head>
<body>
<script>
	
		for(i=0; i<10; i++) {
			var div = document.createElement("div");
			div.innerHTML = Math.floor(Math.random()*10+1);
			div.onclick = clickHandler
			document.body.appendChild(div);
		}	
	
	function clickHandler(e) {
		var len = document.getElementsByTagName('div').length;
		console.log(e.target.innerHTML, '클릭됨')
		//console.log(len+"개");
		//1to50game
		//클릭된 태그를 삭제/ 다 제거되면 모두 제거되었다는 메세지 
		if(len!=0){
			e.target.remove();
		} else {
			console.log("모두 제거");
		}
		
		
	}
</script>
</body>
</html>