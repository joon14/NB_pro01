<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<%@ page import="org.dapsimni.dao.NoticeDAO" %>
<%@ page import="org.dapsimni.dto.Notice" %>
<%@ page import="org.dapsimni.dao.QnaDAO" %>
<%@ page import="org.dapsimni.dto.Qna" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<script src="${path0 }/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<style>
.container { width:1400px }
.page { clear:both; margin-left:auto; margin-right:auto; width:100%; height:100vh }
#page1 { background-color:#ffffff }
#page2 { background-color:#5d97f5 }
#page3 { background-color:#f5f295 }
#page4 { background-color:#f5c573 }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8% }
th.item2 { width:50% }
th.item3 { width:20% }
th.item4 { width:10% }
#contents2 { display: flex; justify-content: space-between; width: 1400px; margin: 0 auto; }
#left-section, #right-section { width: 48%; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<figure id="vs">
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
			   		<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    	<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			    	<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			  	</ol>
			  	<div class="carousel-inner">
			    	<div class="carousel-item active">
			      		<img class="d-block w-100" src="${path0 }/images/vs1.png" alt="답십리역">
			    	</div>
			    	<div class="carousel-item">
			      		<img class="d-block w-100" src="${path0 }/images/vs2.png" alt="답십리동">
			   		 </div>
			    	<div class="carousel-item">
			      		<img class="d-block w-100" src="${path0 }/images/vs3.png" alt="답십리아파트">
			    	</div>
			  	</div>
			  	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    	<span class="sr-only">Previous</span>
			  	</a>
			  	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
			    	<span class="sr-only">Next</span>
				</a>
			</div>
		</figure>
		<h3 class="page_title"></h3>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title"><i class="fab fa-hotjar"></i>&nbsp;&nbsp;Hot Place(핫 플레이스)</h3>
			
		</div>		
	</section>
	<div id="contents2">
	<div id="left-section">
	<div>
	<%
		QnaDAO qdao = new QnaDAO();
		List<Qna> latestQnaList = qdao.LatestgetQnaList();
		request.setAttribute("latestQnaList", latestQnaList);
	%>
	</div>
	<section class="page" id="page3">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title"><i class="fas fa-comments"></i>&nbsp;&nbsp;최신 묻고 답하기</h3>
			<hr>
			<div class="right_item" style="text-align:right;padding-bottom:12px;">
				<a href="${hpath }/GetQnaList.do" title="더보기" class="more">
					<i class="fas fa-plus fa-fw"></i> 더보기
				</a>
			</div>
			<table class="table table-hover" id="tb3">
				<thead class="thead-light">
					<tr>
						<th class="item1">번호</th>
						<th class="item2">제목</th>
						<th class="item3">작성 일시</th>
						<th class="item4">조회 수</th>
						<th class="item5">작성자</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty latestQnaList }">
						<c:forEach var="dto" items="${latestQnaList }" varStatus="status">
						<tr>
							<td>${fn:length(latestQnaList) - status.index }</td>
							<td>
								<c:if test="${(empty sid)}">
									<c:if test="${dto.plevel.equals('1') }">
									<a href="${path0 }/" onclick="requireLogin()">${dto.title }</a>
									</c:if>
									<c:if test="${dto.plevel.equals('2') }">
									<a href="${path0 }/" onclick="requireLogin()"><span style="padding-left:30px">↳ [답변]</span> ${dto.title }</a>
									</c:if>
								</c:if>
								<c:if test="${(not empty sid) and dto.plevel.equals('1')}">
								<a href="${path0 }/GetQna.do?no=${dto.no }">${dto.title }</a>
								</c:if>
								<c:if test="${(not empty sid) and dto.plevel.equals('2')}">
								<a href="${path0 }/GetQna.do?no=${dto.no }"><span style="padding-left:30px">↳ [답변]</span> ${dto.title }</a>
								</c:if>
							</td>
							<td>
								<fmt:parseDate value="${dto.resdate }" var="res" pattern="yyyy-MM-dd HH:mm:ss" />
								<fmt:formatDate value="${res }" var="resdate" pattern="yyyy년 MM월 dd일" />
								${resdate }
							</td>
							<td>${dto.visited }</td>
							<td>${dto.aid }</td>
						</tr>
						</c:forEach>
					</c:if>
						<c:if test="${empty latestQnaList }">
							<tr>
								<td colspan="5"><strong>질문 및 답변이 존재하지 않습니다.</strong></td>
							</tr>
						</c:if>
				</tbody>
			</table>
			<script>
			function requireLogin() {
				alert("로그인 후 이용이 가능합니다.");
			}
			</script>
		</div>	
	</section>
	</div>
	<div id="right-section">
	<div>
	<%
		NoticeDAO ndao = new NoticeDAO();
		List<Notice> latestNoticeList = new ArrayList<>();
		latestNoticeList = ndao.getLatestNoticeList();
		
		request.setAttribute("latestNoticeList", latestNoticeList);
	%>
	</div>
	<section class="page" id="page4">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title"><i class="fas fa-bullhorn"></i>&nbsp;&nbsp;최근 공지사항</h3>
			<hr>
			<div class="right_item" style="text-align:right;padding-bottom:12px;">
				<a href="${hpath }/NoticeList.do" title="더보기" class="more">
					<i class="fas fa-plus fa-fw"></i> 더보기
				</a>
			</div>
			<table class="table table-hover" id="tb3">
				<thead class="thead-light">
					<tr>
						<th class="item1">번호</th>
						<th class="item2">제목</th>
						<th class="item3">작성 일시</th>
						<th class="item4">조회 수</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty latestNoticeList }">
						<c:forEach var="dto" items="${latestNoticeList }" varStatus="status">
						<tr>
							<td>${fn:length(latestNoticeList) - status.index }</td>
							<td>
								<c:if test="${empty sid }">
								<a href="${path0 }/" onclick="requireLogin()">${dto.title }</a>
								</c:if>
								<c:if test="${!empty sid }">
								<a href="${path0 }/GetNotice.do?no=${dto.no }">${dto.title }</a>
								</c:if>
							</td>
							<td>${dto.resdate }</td><td>${dto.visited }</td>
						</tr>
						</c:forEach>
					</c:if>
					<c:if test="${empty latestNoticeList }">
						<tr>
							<td colspan="4"><strong>최근 공지사항이 존재하지 않습니다.</strong></td>
						</tr>
					</c:if>
				</tbody>
			</table>
			<script>
			function requireLogin() {
				alert("로그인 후 이용이 가능합니다.");
			}
			</script>
		</div>
	</section>
	</div>
	</div>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>