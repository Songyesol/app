<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movielank.jsp</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	//버튼 클릭하면 영화제목과 영화코드를 rank div에 출력 
	$("#btn").on("click",function(){
		var mvurl="http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210201";
		$.ajax({
			url:mvurl,
			success : function(obj){
							$("#rank").append("<h2>박스오피스</h2>");
							var list = obj.boxOfficeResult.dailyBoxOfficeList;
							for(field of list){
								$("#rank").append("<div class=\"infos\">"+"영화코드:" + field.movieCd +":영화제목:" + field.movieNm + "</div>"); 
							}},
			dataType:"json"
		});
	});
	
	$(document).on("click",".infos",function(){
		var text = ($(this).text()).split(":");
		//text[1]
		var url1="http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=";
		$.ajax({
			url:url1+text[1],
			success:function(obj){
				var list = obj.movieInfoResult.movieInfo;
				$("#info").append("영화제목\> "+list.movieNm)
						  .append(", 감독명\> "+list.directors[0].peopleNm).append(", 개봉일\> "+list.openDt+"<br>");
				
			},
			dataType:"json"
		});
	});
})
</script>
<body>
	<button id="btn">박스오피스 조회</button>
	<div id="rank"></div>
	<div id="info">
		<h2>영화 상세정보</h2>
	</div>
</body>
</html>