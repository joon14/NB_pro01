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
#page1 { background-color:#c9dff2; min-height:200vh; }
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
			    <li class="breadcrumb-item active" aria-current="page">주요 시설 안내</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/market.jsp">시장</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/mart.jsp">마트</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/facility/education.jsp">교육</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/hospital.jsp">병원</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/agency.jsp">기관</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">교육</h3>
			<hr>
			<h4><strong>서울 답십리 초등학교</strong></h4>
			<div class="jumbotron">
				<p>
					서울답십리초등학교는 대한민국 서울특별시 동대문구에 있는 공립 초등학교이다.
					<br>
					[주소] 서울특별시 동대문구 전농로 3길 23
					<br>
					[전화번호] 02-2242-9256
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EC%84%9C%EC%9A%B8%EB%8B%B5%EC%8B%AD%EB%A6%AC%EC%B4%88%EB%93%B1%ED%95%99%EA%B5%90/data=!3m1!4b1!4m6!3m5!1s0x357cbb4c7af31b65:0x4f17a6de93d8a477!8m2!3d37.568765!4d127.0554461!16s%2Fg%2F11b6ljjnpb?entry=ttu')">위치 확인</button>
				<button type="button" class="btn btn-success" onclick="window.open('https://dapsimni.sen.es.kr/')">홈페이지</button>
			</div>
			<h4><strong>서울 신답 초등학교</strong></h4>
			<div class="jumbotron">
				<p>
					서울신답초등학교는 대한민국 서울특별시 동대문구에 있는 공립 초등학교이다.
					<br>
					[주소] 서울특별시 동대문구 답십리동 천호대로 177 서울신답초등학교
					<br>
					[전화번호] 02-2212-1459
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EC%84%9C%EC%9A%B8%EC%8B%A0%EB%8B%B5%EC%B4%88%EB%93%B1%ED%95%99%EA%B5%90/data=!3m1!4b1!4m6!3m5!1s0x357cbb5450b75677:0x9e4fe96ba4f65436!8m2!3d37.5729519!4d127.0433241!16s%2Fg%2F11b6lfswn2?entry=ttu')">위치 확인</button>
				<button type="button" class="btn btn-success" onclick="window.open('https://shindap.sen.es.kr/')">홈페이지</button>
			</div>
			<h4><strong>서울 동답 초등학교</strong></h4>
			<div class="jumbotron">
				<p>
					서울동답초등학교는 대한민국 서울특별시 동대문구에 있는 공립 초등학교이다.
					<br>
					[주소] 서울특별시 동대문구 답십리로60길 12
					<br>
					[전화번호] 02-2213-9820
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EC%84%9C%EC%9A%B8%EB%8F%99%EB%8B%B5%EC%B4%88%EB%93%B1%ED%95%99%EA%B5%90/data=!3m1!4b1!4m6!3m5!1s0x357cbb377f85fa33:0xa47654c8c2961d70!8m2!3d37.5722277!4d127.0647148!16s%2Fg%2F11b6lkpcmh?entry=ttu')">위치 확인</button>
				<button type="button" class="btn btn-success" onclick="window.open('https://dongdab.sen.es.kr/')">홈페이지</button>
			</div>
			<h4><strong>숭인 중학교</strong></h4>
			<div class="jumbotron">
				<p>
					숭인중학교는 대한민국 서울특별시 동대문구 답십리동에 있는 공립 중학교이다.
					<br>
					[주소] 서울특별시 동대문구 천호대로47길 34
					<br>
					[전화번호] 02-2215-0176
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EC%88%AD%EC%9D%B8%EC%A4%91%ED%95%99%EA%B5%90/data=!3m1!4b1!4m6!3m5!1s0x357cbb543fab9883:0x66b4b3d37c24ec45!8m2!3d37.5737647!4d127.0438537!16s%2Fg%2F11b5v6k4sf?entry=ttu')">위치 확인</button>
				<button type="button" class="btn btn-success" onclick="window.open('https://soongin.sen.ms.kr/')">홈페이지</button>
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>