<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
	.container { width:100%; position:absolute }
	.page { clear:both; height:130vh; }
	#page1 { background-color:#c9dff2 }
	#page2 { background-color:#5d97f5 }
	#page3 { background-color:#f5f295 }
	#page4 { background-color:#f5c573 }
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
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
			    <li class="breadcrumb-item"><a href="${hpath }/EditMember.do?id=${sid }">마이페이지</a></li>
			    <li class="breadcrumb-item active" aria-current="page">회원정보</li>
			  </ol>
			</nav>
			<hr>
			<h3 class="page_title">회원정보</h3>
			<form action="${path0 }/EditMemberPro.do" method="post" onsubmit="return editCheck(this)">
				<table class="table table-striped" style="width:80%; margin:0 auto;">
					<tbody>
						<tr>
							<th><label for="id">아이디</label></th>
							<td>
								<input type="text" name="id" id="id" class="form-control" value="${member.id }" required readonly>
							</td>
						</tr>
						<tr>
							<th><label for="pw">비밀번호</label></th>
							<td>
								<input type="password" name="pw" id="pw" class="form-control" value="${member.pw }" required>
							</td>
						</tr>
						<tr>
							<th><label for="pw2">비밀번호 확인</label></th>
							<td>
								<input type="password" name="pw2" id="pw2" class="form-control" value="${member.pw }" required>
							</td>
						</tr>
						<tr>
							<th><label for="name">이름</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control" value="${member.name }" required>
							</td>
						</tr>
						<tr>
							<th><label for="birth">생년월일</label></th>
							<td>
								<input type="date" name="birth" id="birth" class="form-control" value="${member.birth }" required>
							</td>
						</tr>
						<tr>
							<th><label for="email">이메일</label></th>
							<td>
								<input type="email" name="email" id="email" class="form-control" value="${member.email }" required>
							</td>
						</tr>
						<tr>
							<th><label for="tel">연락처</label></th>
							<td>
								<input type="tel" name="tel" id="tel" class="form-control" value="${member.tel }" required>
							</td>
						</tr>
						<tr>
							<th><label for="addr">주소</label></th>
							<td>
								<div style="display: flex; align-items: center;">
									<input type="text" name="postcode" id="postcode" placeholder="우편번호 입력" class="form-control" value="${member.postcode }" onclick="findAddr()" style="width:160px">
									&nbsp;&nbsp;&nbsp;<button type="button" id="post_btn" class="btn btn-info" onclick="findAddr()">우편번호 검색</button>
								</div>
								<br>
								<c:set var="address" value="${fn:split(member.addr, '$')}"/>
								<input type="text" name="address1" id="address1" placeholder="기본 주소 입력" class="form-control" value="${address[0] }" onclick="findAddr()"><br>
								<input type="text" name="address2" id="address2" placeholder="상세 주소 입력" class="form-control" value="${address[1] }">
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="button-container" style="display: flex; justify-content: space-between; width:80%; margin:0 auto;">
					<div class="button">
						<button type="submit" class="btn btn-info">회원정보수정</button>
						<button type="reset" class="btn btn-danger" onclick="location.href='/pro01'">취소</button>
					</div>
					<div class="button" style="float: right;">
						<c:if test="${!sid.equals('admin') }">
							<a href="${path0 }/DelMember.do?id=${sid }" onclick="outMember()" class="btn btn-secondary">회원탈퇴</a>
						</c:if>
					</div>
				</div>
			</form>
			<script>
			function editCheck(f) {
				if(f.pw.value!=f.pw2.value) {
					alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
					f.pw.focus();
					return false;
				}
				else {
					alert("회원정보 수정이 완료되었습니다!");
				}
			}
			function outMember() {
				alert("회원탈퇴가 완료되었습니다.");
			}
			</script>
			<script>
            function findAddr(){
                new daum.Postcode({
                    oncomplete:function(data){
                        console.log(data);
                        var roadAddr = data.roadAddress;
                        var jibunAddr = data.jibunAddress;
                        document.getElementById("postcode").value = data.zonecode;
                        if(roadAddr !== ''){
                            document.getElementById("address1").value = roadAddr;
                        } else if(jibunAddr !== ''){
                            document.getElementById("address1").value = jibunAddr;
                        }
                        document.getElementById("address2").focus();
                    }
                }).open();
            }
			</script>
			<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>