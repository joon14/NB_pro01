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
#page1 { background-color:#c9dff2; min-height:160vh; }
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
			    <a class="nav-link active" href="${path0 }/facility/mart.jsp">마트</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/education.jsp">교육</a>
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
			<h3 class="page_title">마트</h3>
			<hr>
			<h4><strong>홈플러스</strong></h4>
			<div class="jumbotron">
				<p>
					- 주소 : 서울특별시 동대문구 천호대로 133
					<br>
					- 운영시간 : 10:00~24:00
					<br>
					- 휴무일 : 매 2,4째 주 수요일
					<br>
					- 전화번호 : 02-2173-8000
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%ED%99%88%ED%94%8C%EB%9F%AC%EC%8A%A4+%EC%8A%A4%ED%8E%98%EC%85%9C+%EB%8F%99%EB%8C%80%EB%AC%B8%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357cbcaa60be1b59:0xba2c1241df2f538d!8m2!3d37.5745108!4d127.0387578!16s%2Fg%2F1tdmm_q1?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>롯데 마트</strong></h4>
			<div class="jumbotron">
				<p>
					- 주소 : 서울 동대문구 전농동 591-53 
					<br>
					- 영업시간 : 10:00 ~ 23:00
					<br>
					- 휴점일 : 매 2,4째 주 수요일
					<br>
					- 전화번호 : 02-3298-2500
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EB%A1%AF%EB%8D%B0%EB%A7%88%ED%8A%B8+%EC%B2%AD%EB%9F%89%EB%A6%AC%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357cbb415325f865:0x2f32d58305614a46!8m2!3d37.5803922!4d127.0485776!16s%2Fg%2F1td51cr1?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>롯데 백화점</strong></h4>
			<div class="jumbotron">
				<p>
					- 주소 : 서울특별시 동대문구 왕산로 214 (전농동 591-53)
					<br>
					- 영업시간 : 10:30 ~ 20:30
					<br>
					- 전화번호 : 1577-0001
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EB%A1%AF%EB%8D%B0%EB%B0%B1%ED%99%94%EC%A0%90+%EC%B2%AD%EB%9F%89%EB%A6%AC%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357cbb5a3cd18e73:0x5c938d9b85c4a0ee!8m2!3d37.580676!4d127.0476654!16s%2Fg%2F1td07ws8?entry=ttu')">위치 확인</button>
				<button type="button" class="btn btn-success" onclick="window.open('https://www.lotteshopping.com/store/main?cstrCd=0004')">홈페이지</button>
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>