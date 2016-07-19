<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>


<script>
	$(document).ready(function(){
		$('#indexBtn').click(function(){
			if($('#memberId').val() == ''){
			$('#idHelper').text('아이디를 입력해주세요');
			
			}else if($('#memberPw').val() == ''){
				$('#idHelper').text('');
				$('#pwHelper').text('비밀번호를 입력해주세요');
			}else{
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#indexForm').submit();
			}
	});
	
});
</script>
</head>
<body>
<h1>INDEX</h1>
<%
	String sessionMemberId = (String)session.getAttribute("sessionMemberId");
	if(sessionMemberId == null) { 
%>
		<form id="indexForm" action="<%=request.getContextPath()%>/member/memberLoginAction.jsp">
		<div>
			<label>아이디</label>
			<input id="memberId" type="text" name="memberId">
			<span id="idHelper"></span>
			
		</div>
		
		<div>
			<label>비밀번호</label>
			<input id="memberPw" type="password" name="memberPw">
			<span id="pwHelper"></span>
		</div>
		
		<div>
				<input id="indexBtn" type="button" value="login">
		</div>
</form>
<%		
	} else { 
%>
		<%=sessionMemberId%>일반회원으로 로그인하셨습니다.<a href="">[회원정보]</a><a href="<%=request.getContextPath()%>/member/memberLogout.jsp">[로그아웃]</a>
<%		
	}
%>

</body>
</html>