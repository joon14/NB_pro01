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
#page1 { background-color:#c9dff2; min-height:250vh; }
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
			    <a class="nav-link" href="${path0 }/facility/education.jsp">교육</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/facility/hospital.jsp">병원</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/agency.jsp">기관</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">병원</h3>
			<hr>
			<h4><strong>빛나는여성의원</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리동 492-1번지 네모313빌딩 3층 302호
					<br>
					[전화번호] 02-6956-4365
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EB%B9%9B%EB%82%98%EB%8A%94%EC%97%AC%EC%84%B1%EC%9D%98%EC%9B%90/data=!3m1!4b1!4m6!3m5!1s0x357ca4b34f7883d3:0xc2c88ec189acca0f!8m2!3d37.5654041!4d127.0552947!16s%2Fg%2F11h9ldqkwv?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>하늘병원</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 천호대로 317
					<br>
					[전화번호] 1544-7588
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%ED%95%98%EB%8A%98%EB%B3%91%EC%9B%90/data=!3m1!4b1!4m6!3m5!1s0x357ca4b34534b99d:0x42370ca09d7e847f!8m2!3d37.5652181!4d127.0555774!16s%2Fg%2F1hjhc6js_?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>조근경이비인후과의원</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 전농로 110 1층
					<br>
					[전화번호] 02-2217-3134
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EC%A1%B0%EA%B7%BC%EA%B2%BD%EC%9D%B4%EB%B9%84%EC%9D%B8%ED%9B%84%EA%B3%BC%EC%9D%98%EC%9B%90/data=!3m1!4b1!4m6!3m5!1s0x357cbb4626af79b9:0x82e46cb37f068e75!8m2!3d37.5746661!4d127.0577753!16s%2Fg%2F1vfn4ljg?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>오승현내과의원</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리동 천호대로 313
					<br>
					[전화번호] 02-2088-1121
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EC%98%A4%EC%8A%B9%ED%98%84%EB%82%B4%EA%B3%BC%EC%9D%98%EC%9B%90/data=!3m1!4b1!4m6!3m5!1s0x357ca58d53664113:0x38eab2e0ce4af560!8m2!3d37.5654411!4d127.0552176!16s%2Fg%2F11fhl9llg_?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>하얀나라피부과의원</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 전농로 102
					<br>
					[전화번호] 02-2244-7582
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%ED%95%98%EC%96%80%EB%82%98%EB%9D%BC%ED%94%BC%EB%B6%80%EA%B3%BC%EC%9D%98%EC%9B%90/data=!4m10!1m2!2m1!1z7ZWY7JaA64KY65287ZS867aA6rO87J2Y7JuQ!3m6!1s0x357cbb489c429399:0xaf6ad2a22359aa38!8m2!3d37.5739764!4d127.0578649!15sChvtlZjsloDrgpjrnbztlLzrtoDqs7zsnZjsm5CSAQ1kZXJtYXRvbG9naXN04AEA!16s%2Fg%2F1tfk6zd_?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>연세휴치과의원 동대문점</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 답십리동 492-1 네모313빌딩 2층 동대문구 서울특별시 KR
					<br>
					[전화번호] 02-2241-9700
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EC%97%B0%EC%84%B8%ED%9C%B4%EC%B9%98%EA%B3%BC+%EB%8B%B5%EC%8B%AD%EB%A6%AC%EC%A0%90/data=!4m10!1m2!2m1!1z7Jew7IS47Zy07LmY6rO87J2Y7JuQIOuPmeuMgOusuOygkA!3m6!1s0x357ca4b3459ba419:0x1a6274e9e54b152b!8m2!3d37.5654427!4d127.0552477!15sCiLsl7DshLjtnLTsuZjqs7zsnZjsm5Ag64-Z64yA66y47KCQIgOIAQGSAQdkZW50aXN04AEA!16s%2Fg%2F1thq3793?entry=ttu')">위치 확인</button>
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>