<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createOption.jsp</title>
<script type="text/javascript">
	function addFruit(){
		//input 태그의 값을 select의 option태그 만들어서 추가
		var fruit = document.getElementById("fruit").value;
		var op = document.createElement("option");
			op.innerHTML=fruit;
		if(fruit != null){
			document.getElementById("list").add(op);
			document.getElementById("fruit").value="";
		}
		var table = document.getElementById("tbl");
		var row = table.insertRow();
		var cell = row.insertCell();
			cell.innerHTML=fruit;
	}
</script>
</head>
<body>
	<input id="fruit"><button type="button" onclick="addFruit()">등록</button>
	<select id="list" size="10">과일</select>
	<table id="tbl" border=1></table>
</body>
</html>