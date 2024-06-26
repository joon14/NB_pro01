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
	.page { clear:both; height:100vh }
	#page1 { background-color:#c9dff2 }
	#page2 { background-color:#5d97f5 }
	.page_title { font-size:36px; padding-top:2em; text-align:center; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<c:if test="${not empty message }">
		<div style="width:1400px; margin:0 auto;">${message }</div>
		</c:if>
		<div style="width:1400px; margin:0 auto;">
			<nav aria-label="breadcrumb d-flex justify-content-between">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
			    <li class="breadcrumb-item"><a href="${hpath }/member/login.jsp">마이페이지</a></li>
			    <li class="breadcrumb-item active" aria-current="page">로그인</li>
			  </ol>
			</nav>
			<hr>
			<h3 class="page_title"><i class="fas fa-sign-in-alt"></i>&nbsp;&nbsp;로그인</h3>
			<hr>
			<form action="${path0 }/LogInPro.do" method="post">
				<table class="table" style="width:60%; margin:0 auto; background-color:#c9dff2; border-collapse: collapse; border: none;">
					<tbody>
						<tr>
							<th style="border: none;"><label for="id">아이디</label></th>
							<td style="border: none;">
								<input type="text" name="id" id="id" class="form-control" style="width: 80%;" required>
							</td>
						</tr>
						<tr>
							<th style="border: none;"><label for="pw">비밀번호</label></th>
							<td style="border: none;">
								<input type="password" name="pw" id="pw" class="form-control" style="width: 80%;" required>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="button" style="text-align: center;">
					<button type="submit" class="btn btn-primary">로그인</button>&nbsp;&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger" onclick="location.href='/pro01'">취소</button>
				</div>
				<div class="button" style="float: right;">
					<a href="${path0 }/member/term.jsp" class="btn btn-info">회원가입</a>
				</div>
			</form>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>