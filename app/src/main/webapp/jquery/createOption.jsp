<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createpOption.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		//버튼클릭하면 input값 option태그를 생성해서 추가
		$("#btnAdd").on("click",function(){
			$("#list").append($("<option>").html($("#fruit").val()));
			$("#fruit").val("").focus();
		});
	});
</script>
</head>
<body>
	<input id="fruit">
	<button type="button" id="btnAdd">등록</button>
	<select id="list" size="10"></select>
	<table id="tbl" border=1></table>
</body>
</html>