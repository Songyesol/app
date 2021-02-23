<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json.jsp</title>
</head>
<body>
	<div id="result"></div>
	<script>
		var empList = [
						{id:100, name:"scott" , hiredate:"2020/01/01"},
						{id:101, name:"Micol" , hiredate:"2020/01/01"},
						{id:102, name:"Sally" , hiredate:"2020/01/01"}
				 	  ];
	//사원의 이름 div에 출력
		for(i=0;i<empList.length; i++){
			document.getElementById("result").innerHTML += empList[i].name +"<br>";			
		}
		for(emp of empList){
			document.getElementById("result").innerHTML += emp.name +"<br>";			
		}
		
	//부서정보 
		var deptList = [
						{department_id:10, department_name:"Administration" , manager_id:200, location_id:1700},
						{department_id:20, department_name:"Marketing" , manager_id:201, location_id:1800}
						];
		var member = {name:"hong",hobbies:["독서","달리기"]};
		
	//첫번째 취미 (중괄호{} : . / 대괄호[] : [i] 인덱스번호로 찾기)
		document.getElementById("result").innerHTML += member.hobbies[0] +"<br>";
		
		var members =[ 
						{name:"hong",hobbies:["독서","달리기"]},
						{name:"gang",hobbies:["스키","달리기"]}
					 ];
	//두번째 회원의 첫번째 취미
		document.getElementById("result").innerHTML +=" <br> 두번째회원의 취미 : " + members[1].hobbies[0] ;
		
	//json의 object 타입을 string 타입으로 변환 -> JSON.stringify()
	// String으로 바꾼 값을 다시 object로 변환 -> JSON.parse();
	
	</script>
	
	
</body>
</html>