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
	#page1 { background-color:#c9dff2; min-height:120vh; }
	#page2 { background-color:#5d97f5 }
	.page_title { font-size:36px; padding-top:2em; text-align:center; }
	.map_data img{ display:block; width:300px; height:auto; margin:10px auto;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px;margin:15px auto">
			<nav aria-label="breadcrumb d-flex justify-content-between">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
			    <li class="breadcrumb-item"><a href="${hpath }/intro/origin.jsp">지역소개</a></li>
			    <li class="breadcrumb-item active" aria-current="page">지명유래</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/intro/origin.jsp">지명 유래</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/history.jsp">연혁</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/map.jsp">오시는 길</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title">지명 유래</h3>
			<hr>
			<div class="jumbotron">
				<p>
					&nbsp;답십리라는 명칭에는 여러 가지 유래설이 있다. 
					<br><br>&nbsp;조선초 무학대사가 도읍을 정하려고 이곳을 밟았다 하여 답심리(踏尋里)로 불렸다는 것과 흥인지문으로부터 10리가 떨어진 곳이라고 하여, 
					왕십리와 같이 답십리라고 불렀다는 설, 그리고 청계천 하류지역이었던 이 지역의 들(논:畓)이 10리벌 같이 넓어서 답십리(畓→ 踏十里)로 되었다는 설이다. 
					<br><br>&nbsp;이곳은 1751년 영조 27년 한성부 동부 인창방 답십리계였다가, 1911년 4월 경성부 인창면으로 편입되었고, 1914년 4월 경기도 고양군 숭인면으로 편입되었다. 
					1936년 4월에는 경성부 답십리정이 되었고, 1943년 4월 1일 구제를 시작하면서 동대문구에 편입되어, 동대문구 답십리정으로 개칭하였다. 
					해방후 1946년 10월 1일 일제식 명칭인 ‘정’을 없애고, 동대문구 답십리동으로 개칭하였다.
					<br><br>&nbsp;1970년 5월 18일 동대문구 답십리3동이 신설되었고, 2008년 8월 11일에는 답십리3동과 5동을 통합하였다. 
					2009년 5월 4일에는 1동과 3동을 통합하여 2개의 동만 남게 되었다.
				</p>
			</div>
			<br>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>