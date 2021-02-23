<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form.jsp</title>
<script>
	function validateForm() {
	  var x = document.forms["myForm"]["fname"].value;
	  if (x == "") {
	    alert("Name must be filled out");
	    return false;
	  }
	  
	  var y = document.forms["myForm"]["job"].selectedIndex;
	/* var y = document.myForm.job.selectedIndex;*/
		  if(y <= 0){
			  alert(" job must be selected!!");
			  return false;
		  }

/* 	  var y = document.forms[0].elements[1].value;
	  var y = document.getElementsByTagName("job").value;
	  var y = document.myForm.job.value;
	  
	  if( y == ""){
		  alert(" choose one!!");
		  return false;
	  }*/
	  
	  //체크박스 과제 (2021/02/22)
	  //체크된 갯수 하나이상인지 체크(for문 돌면서 count)
	  var ckb = document.getElementsByName("hobby");
	  var cklen= ckb.length;	
	  for(i=0;i<cklen;i++){
		  if(ckb[i].checked ==0){
			  alert("this box must be checked!!");
			  return false;
		  }
	  }
	  document.forms["myForm"].submit(); //button 타입으로 사용할 경우 submit 을 직접 입력하여 실행시켜주어야한다.
	}
</script>
</head>
<body>
	<form name="myForm" action="action_page.jsp" method="post">
		  Name: <input type="text" name="fname"><br>
		 		<select name="job">
		 			<option value="">선택</option>
		 			<option value="dgn">디자이너</option>
		 			<option value="prg">프로그래머</option>
		 		</select> <br>
		 		취미
		 		<input type="checkbox" name="hobby" value="read"> 독서
		 		<input type="checkbox" name="hobby" value="jog"> 조깅
		 		<button type="button" onclick="validateForm()" >등록</button>
	</form>
</body>
</html>