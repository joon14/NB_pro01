<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container { width:1400px }
.page { clear:both; }
#page1 { background-color:#c9dff2; min-height:280vh; }
#page2 { background-color:#5d97f5 }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
.loadmap { clear:both; }
.loadmap ul { list-style:none; padding:0; margin:0; clear:both; width:100%;
height:200px; }
.loadmap ul li { float:left; width:15%; padding:0px; margin:10px; }
.loadmap ul li .circle { clear:both; width:80px; height:80px; line-height:80px;
font-weight:700; background-color:#ff2965;
border-radius:45px; text-align:center; color:#fff; }
.loadmap ul li .his { padding:10px; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px;margin:0 auto">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
			    <li class="breadcrumb-item"><a href="">이용안내</a></li>
			    <li class="breadcrumb-item active" aria-current="page">먹거리 안내</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/rest/restaurant.jsp">맛집</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/rest/cafe.jsp">카페</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">카페</h3>
			<h4><strong>메가커피답십리사거리점</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리제1동 245-1
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EB%A9%94%EA%B0%80%EC%BB%A4%ED%94%BC%EB%8B%B5%EC%8B%AD%EB%A6%AC%EC%82%AC%EA%B1%B0%EB%A6%AC%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357cbbd46e8cdb99:0xd960bc976da86e54!8m2!3d37.5726337!4d127.0571889!16s%2Fg%2F11s7w7k238?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>커피나인 본점</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리동 268-8
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%BB%A4%ED%94%BC%EB%82%98%EC%9D%B8+%EB%B3%B8%EC%A0%90/data=!4m15!1m8!3m7!1s0x357cbb48f70242cd:0xf4112562a1a69cca!2z7Luk7ZS864KY7J24IOuzuOygkA!8m2!3d37.5684569!4d127.0565376!10e1!16s%2Fg%2F11fhr7c_s5!3m5!1s0x357cbb48f70242cd:0xf4112562a1a69cca!8m2!3d37.5684569!4d127.0565376!16s%2Fg%2F11fhr7c_s5?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>오슬로우 답십리점</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리동 전농로 96
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%98%A4%EC%8A%AC%EB%A1%9C%EC%9A%B0+%EB%8B%B5%EC%8B%AD%EB%A6%AC%EC%A0%90/data=!4m16!1m9!3m8!1s0x357cbb7b94a9b57b:0xb6e74567bca4d204!2z7Jik7Iqs66Gc7JqwIOuLteyLreumrOygkA!8m2!3d37.5733882!4d127.0576331!9m1!1b1!16s%2Fg%2F11l3v6yfrd!3m5!1s0x357cbb7b94a9b57b:0xb6e74567bca4d204!8m2!3d37.5733882!4d127.0576331!16s%2Fg%2F11l3v6yfrd?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>엠엠엠 브레드 스튜디오</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 천호대로 265 1 층
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%97%A0%EC%97%A0%EC%97%A0+%EB%B8%8C%EB%A0%88%EB%93%9C+%EC%8A%A4%ED%8A%9C%EB%94%94%EC%98%A4/data=!3m1!4b1!4m6!3m5!1s0x357cbb5bf0e56b1f:0x75b0a8bdd1a6360d!8m2!3d37.5683244!4d127.0513735!16s%2Fg%2F11l5shr0jj?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>강경원베이커리</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 전농제1동 사가정로 80
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EA%B0%95%EA%B2%BD%EC%9B%90%EB%B2%A0%EC%9D%B4%EC%BB%A4%EB%A6%AC/data=!3m1!4b1!4m6!3m5!1s0x357cbb4ca7a719a3:0x5fc2293e75a343c9!8m2!3d37.575312!4d127.0547394!16s%2Fg%2F11r2qxlwqf?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>12months</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 사가정로 80 1층 131호
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/12months(12%EB%8B%AC)/data=!3m1!4b1!4m6!3m5!1s0x357cbb0001d9e0fb:0x5687a9aba4331ac5!8m2!3d37.5752453!4d127.0549757!16s%2Fg%2F11vjxmp8yw?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>투썸플레이스 답십리역점</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리동 고미술로 81
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%ED%88%AC%EC%8D%B8%ED%94%8C%EB%A0%88%EC%9D%B4%EC%8A%A4+%EB%8B%B5%EC%8B%AD%EB%A6%AC%EC%97%AD%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357ca4b3531ccb37:0x898714b0c603e3f3!8m2!3d37.5657187!4d127.0556456!16s%2Fg%2F11c5styp8q?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>쿠니네와플</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리로 102
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%BF%A0%EB%8B%88%EB%84%A4+%EC%99%80%ED%94%8C/data=!3m1!4b1!4m6!3m5!1s0x357cbbc1c1b37c77:0xb7e5563d9dc84fc6!8m2!3d37.5736022!4d127.051497!16s%2Fg%2F11hfp1zw88?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>스타벅스 답십리역점</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 천호대로 263
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%8A%A4%ED%83%80%EB%B2%85%EC%8A%A4+%EB%8B%B5%EC%8B%AD%EB%A6%AC%EC%97%AD%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357cbb7fe7833991:0xd733dd81cf50bb1d!8m2!3d37.5684204!4d127.0511029!16s%2Fg%2F11gk38lbc9?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>커피그라운즈</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리동 36-34
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%BB%A4%ED%94%BC%EA%B7%B8%EB%9D%BC%EC%9A%B4%EC%A6%88/data=!3m1!4b1!4m6!3m5!1s0x357cbbdb7ac9c0b1:0x65992357941e0226!8m2!3d37.5701251!4d127.0578274!16s%2Fg%2F11h5013fyz?entry=ttu')">위치 확인</button>
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>