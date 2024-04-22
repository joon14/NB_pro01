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
#page1 { background-color:#c9dff2; min-height:350vh; }
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
			    <a class="nav-link active" href="${path0 }/rest/restaurant.jsp">맛집</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/rest/cafe.jsp">카페</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">맛집</h3>
			<h4><strong>성천막국수</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리로48나길 2
				</p>
				<button type="button" onclick="window.open('https://google.com/maps/place/%EC%84%B1%EC%B2%9C%EB%A7%89%EA%B5%AD%EC%88%98/data=!3m1!4b1!4m6!3m5!1s0x357cbb4be983dfab:0x96625e4a6170f846!8m2!3d37.569896!4d127.057826!16s%2Fg%2F1tcwtpcr?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>답십리별미</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리로48길 98
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EB%8B%B5%EC%8B%AD%EB%A6%AC%EB%B3%84%EB%AF%B8/data=!3m1!4b1!4m6!3m5!1s0x357cbb4bbe0926db:0x7783c777b3206fc3!8m2!3d37.5683697!4d127.0575584!16s%2Fg%2F11ghrgw3ky?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>늘봄해물찜&손칼국수</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리제1동 전농로 39
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EB%8A%98%EB%B4%84%ED%95%B4%EB%AC%BC%EC%B0%9C%26%EC%86%90%EC%B9%BC%EA%B5%AD%EC%88%98/data=!3m1!4b1!4m6!3m5!1s0x357cbb4b8e293289:0x7a5e59ba8d97e4e3!8m2!3d37.5685653!4d127.0569116!16s%2Fg%2F1q5bv8svd?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>장원닭한마리</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 전농로 36
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%9E%A5%EC%9B%90%EB%8B%AD%ED%95%9C%EB%A7%88%EB%A6%AC/data=!3m1!4b1!4m6!3m5!1s0x357cbb4b76ed2d5b:0x98712a6ce388fdb!8m2!3d37.5678458!4d127.0573823!16s%2Fg%2F119vr5gjc?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>장안삼계탕</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리동 35-10
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%9E%A5%EC%95%88%EC%82%BC%EA%B3%84%ED%83%95/data=!3m1!4b1!4m6!3m5!1s0x357cbb4b986c3b03:0x3a5f06d5afc76187!8m2!3d37.5693914!4d127.0573248!16s%2Fg%2F1tg9l1_9?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>리진</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 전농로 105
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EB%A6%AC%EC%A7%84/data=!3m1!4b1!4m6!3m5!1s0x357cbb34e2c51c9b:0x59d4199db7b6b7ee!8m2!3d37.5742909!4d127.057304!16s%2Fg%2F11q9hn5h17?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>수상한막창</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 전농로 53
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%88%98%EC%83%81%ED%95%9C%EB%A7%89%EC%B0%BD/data=!3m1!4b1!4m6!3m5!1s0x357cbb4be342ae31:0x50371670255584bf!8m2!3d37.5697353!4d127.0568861!16s%2Fg%2F11f3n1hqb3?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>갈비명가이상 답십리점</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리 제 1동 530-27
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EA%B0%88%EB%B9%84%EB%AA%85%EA%B0%80%EC%9D%B4%EC%83%81+%EB%8B%B5%EC%8B%AD%EB%A6%AC%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357ca4b4a1b01975:0x403ef37c3912f4f3!8m2!3d37.5645708!4d127.0564361!16s%2Fg%2F11bx4b_f5j?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>분짜킴</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리제2동 953-25
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EB%B6%84%EC%A7%9C%ED%82%B4/data=!3m1!4b1!4m6!3m5!1s0x357cbb9fb5835ff1:0xc8c5001777ec7deb!8m2!3d37.566098!4d127.0590282!16s%2Fg%2F11pz6pky9g?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>한우마을</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리동 4-13번지
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%ED%95%9C%EC%9A%B0%EB%A7%88%EC%9D%84/data=!3m1!4b1!4m6!3m5!1s0x357cbb36362cc3d9:0xe61cbe58f96e5870!8m2!3d37.5696998!4d127.0628136!16s%2Fg%2F11g0kj943n?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>일광쪽갈비</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 전농로 48
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%9D%BC%EA%B4%91%EC%AA%BD%EA%B0%88%EB%B9%84/data=!3m1!4b1!4m6!3m5!1s0x357cbb4be975c281:0xd3871bd1054470ab!8m2!3d37.5690537!4d127.0573322!16s%2Fg%2F1hm3wy5z6?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>전통춘천닭갈비</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 답십리로 152
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%A0%84%ED%86%B5%EC%B6%98%EC%B2%9C%EB%8B%AD%EA%B0%88%EB%B9%84/data=!3m1!4b1!4m6!3m5!1s0x357cbb8382a84b29:0xd009e8f9382e88d1!8m2!3d37.5726519!4d127.0568492!16s%2Fg%2F11rw9dfd4g?entry=ttu')">위치 확인</button>
			</div>
			<h4><strong>오레노카츠 경희대점</strong></h4>
			<div class="jumbotron">
				<p>
					[주소] 서울특별시 동대문구 회기동 16-70
				</p>
				<button type="button" onclick="window.open('https://www.google.com/maps/place/%EC%98%A4%EB%A0%88%EB%85%B8%EC%B9%B4%EC%B8%A0+%EA%B2%BD%ED%9D%AC%EB%8C%80%EC%A0%90/data=!3m1!4b1!4m6!3m5!1s0x357cbb01b27099cb:0xb00c3f2a8e652932!8m2!3d37.592144!4d127.0521845!16s%2Fg%2F11kk050vrd?entry=ttu')">위치 확인</button>
			</div>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>