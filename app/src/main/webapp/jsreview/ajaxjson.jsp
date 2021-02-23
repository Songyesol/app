<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxjson.jsp</title>
</head>
<body>
	<div id="demo">
		<h2>The XMLHttpRequest Object</h2>
	</div>
		<button type="button" onclick="loadDoc()">Change Content</button>

<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  
   xhttp.onload=function() {
     	member = JSON.parse(this.responseText);
	    document.getElementById("demo").innerHTML += member.hobbys[0];
  };
  xhttp.onerror=function(){//error check 
	  document.getElementById("demo").innerHTML = this.status+"error";
  }
  
  xhttp.open("GET", "../FindMember", true);
  //로딩중 이미지 이곳에 넣으면 로딩중 가능...
  xhttp.send();
}
</script>
</body>
</html>