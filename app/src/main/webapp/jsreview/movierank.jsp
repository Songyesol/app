<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movielank.jsp</title>
</head>
<body>
	<button id="btn" onclick="loadMovie()">박스오피스 조회</button>
	<div id="result"></div>
	<div id="info">
		<h2>영화 상세정보</h2>
	</div>
	<script>
		function loadMovie(){
			var xhttp = new XMLHttpRequest();
			xhttp.onload= function(){
				//json object로 parse
				var rank= JSON.parse(xhttp.responseText);
				console.log(rank);
				var list = rank.boxOfficeResult.dailyBoxOfficeList
				for(movie of list){
					document.getElementById("result").innerHTML += "<div onclick=loadInfo('"+  movie.movieCd + "')>"+movie.movieNm +" : "+ movie.movieCd + "</div>";
				}
		}
			var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
			xhttp.open("get",url);
			xhttp.send();
		}
		function loadInfo(movieCd){
			//코드에 해당하는 영화 상세정보 조회
			var xhttp = new XMLHttpRequest();
			xhttp.onload= function(){
				var list = JSON.parse(xhttp.responseText);
				console.log(list);
				var infos = list.movieInfoResult.movieInfo;
				document.getElementById("info").innerHTML += "<h3>"+infos.movieNm +"</h3>";
				document.getElementById("info").innerHTML += "감독명: "+ infos.directors[0].peopleNm + "<br>";
				document.getElementById("info").innerHTML += "영화장르: "+ infos.genres[0].genreNm + "<br>";
				document.getElementById("info").innerHTML += "관람가: "+infos.audits[0].watchGradeNm + "<br>";
				document.getElementById("info").innerHTML += "개봉일: "+infos.openDt+ "<br>";
				for(actor of infos.actors){
					document.getElementById("info").innerHTML += actor.peopleNm +"&nbsp";
				}
			}
			var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=";
			xhttp.open("get",url+movieCd);
			xhttp.send();
			//
		}
	</script>
</body>
</html>