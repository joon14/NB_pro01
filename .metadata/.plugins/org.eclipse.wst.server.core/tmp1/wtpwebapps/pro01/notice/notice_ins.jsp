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
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title"><i class="fas fa-edit"></i>&nbsp;&nbsp;공지사항 글 등록</h3>
			<hr>
			<form action="${path0 }/InsNotice.do" method="post">
				<table class="table table-striped">
					<tbody>
						<tr>
							<th><label for="title">제목</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" maxlength="100" required>
							</td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="button">
					<button type="submit" class="btn btn-primary" onclick="insCheck()">등록</button>
					<a href="${path0 }/NoticeList.do" class="btn btn-danger">취소</a>
				</div>
			</form>
			<script>
			function insCheck() {
				alert("공지사항이 등록되었습니다.");
			}
			</script>
		</div>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title"></h3>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>