<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<hr>
<footer>
	<div class="ft_wrap">
		<nav id="fnb">
			<ul>
				<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
				<li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
			</ul>
		</nav>
		<div id="loc">
			<select name="sel" id="sel" onchange="locate()">
				<option value="">해당 관광서</option>
				<option value="https://www.ddm.go.kr/www/index.do">동대문구청</option>
				<option value="https://www.ddm.go.kr/health/index.do">동대문구 보건소</option>
				<option value="https://www.smpa.go.kr/user/nd96649.do">서울 동대문경찰서</option>
			</select>
		</div>
		<script>
		function locate(){
			var sel = document.getElementById("sel");
			if(sel.value!=""){
				window.open(sel.value);
			}
		}
		</script>
		<br><br>
		<div id="copyright">
			<p class="addr">[02565]서울시 동대문구 천호대로 145(용두동) 답십리동 소개, 대표전화 : 02-2127-4114, 4300, 5000(120 다산콜센터로 연결) 
			| 02-2127-4000(야간, 공휴일/당직실), FAX : 02-2127-5096
			</p>
			<p class="copy">COPYRIGHT(C) SEOUL DAPSIMNI INTRO. ALL RIGHTS RESERVED.</p>
		</div>
	</div> 
</footer>