<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax01.jsp</title>
</head>
<body>
	<div id="demo">
		<h2>The XMLHttpRequest Object</h2>
	</div>
		<input id="userid">
		<button type="button" onclick="loadDoc()">Change Content</button>

	<script>
		function loadDoc() {
		//1.XHR객체 생성
		  var xhttp = new XMLHttpRequest();
		
		//2.콜백 함수(this = xhttp)
		  xhttp.onreadystatechange = function() {
			if(this.readyState < 4){//readyState : 0~4
				document.getElementById("demo").innerHTML="loading...";
			
			} else if (this.readyState == 4) { //응답완료
				if(this.status == 200){ //응답결과 : OK
					document.getElementById("demo").innerHTML = this.responseText; //responseXML
				} else {
					document.getElementById("demo").innerHTML = this.status+"error";
				}
		    }
		  };
		  
		 //3.요청 준비(url)
		 /*  xhttp.open("GET", "../FindName?" + param);// 세번째 인수(default는 true) -> true(or 생략):비동기 , false:동기 */
		 var param = "userid="+document.getElementById("userid").value;
		 xhttp.open("POST", "../FindName?");
		 xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		 
		 //4.요청 시작 
		  xhttp.send(param);
		  document.getElementById("demo").innerHTML+="ajax send";
		  
		}
	</script>
</body>
</html>