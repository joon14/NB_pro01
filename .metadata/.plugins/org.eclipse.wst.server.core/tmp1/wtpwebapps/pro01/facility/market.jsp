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
#page1 { background-color:#c9dff2;  min-height:140vh;}
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
		<div style="width:1400px;margin:15px auto">
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
			    <a class="nav-link active" href="${path0 }/facility/market.jsp">시장</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/facility/mart.jsp">마트</a>
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
			<h3 class="page_title">시장</h3>
			<hr>
			<h4><strong>답십리 현대시장</strong></h4>
			<div class="jumbotron">
				<p>
					1978년 지금의 위치에 개장하여 자리를 지키고 있다.
					당시에는 골목시장으로 불렸는데, 2009년 인정시장으로 등록되면서 현대시장이라는 이름을 갖게 되었다. 
					70여 개의 점포가 운영되고 있으며, 답십리와 장안동 지역민들에게 신선하고 질 좋은 제품을 제공하고 있다. 
					과일, 채소, 생선 등 식료품과 의류·잡화 등 다양한 품목을 판매하며, 시장 내 위치한 곱창 골목이 유명하다. 
					매주 셋째 화요일이 정기 휴일이다.
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EB%8B%B5%EC%8B%AD%EB%A6%AC+%ED%98%84%EB%8C%80%EC%8B%9C%EC%9E%A5/data=!3m1!4b1!4m6!3m5!1s0x357cbb4ba05f8b09:0xbec88a8d7529ff64!8m2!3d37.5667457!4d127.0589609!16s%2Fg%2F1vysthcc?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>경동 시장</strong></h4>
			<div class="jumbotron">
				<p>
					1995년 현재 경동시장은 대지면적 8,058㎡, 건물연면적 2만 35㎡, 점포수 678개 등의 규모이고, 종사자수는 1,100명이다. 
					주된 상품은 산채류·인삼·건어물·기타 농수산물 및 생필품이고, 한약재상 역시 매우 번창하여 전문시장의 위치를 굳혀가고 있다.
					제기2동의 한약상가는 400여 개의 한의원과 건재상들이 밀집해 있는 한약재의 집산지로, 전국 약재의 80%를 공급하고 있다. 
					이처럼 경동시장은 서울의 부심 청량리 인근에 자리잡은 전문재래시장으로, 서울은 물론 전국을 대상으로 한 대규모 도소매시장으로 성장하였다.
				</p>
				<button type="button" class="btn btn-info" onclick="window.open('https://www.google.com/maps/place/%EA%B2%BD%EB%8F%99%EC%8B%9C%EC%9E%A5/data=!3m1!4b1!4m6!3m5!1s0x357cbca84703bd5f:0xab3727d4d386ab3d!8m2!3d37.57973!4d127.03854!16s%2Fm%2F043l3cy?entry=ttu')">위치 확인</button>
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>