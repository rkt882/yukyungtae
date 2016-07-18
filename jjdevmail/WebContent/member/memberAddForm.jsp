<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<style>
	table, td {border: 1px solid #FF007F;}
</style>

<script>
	$(document).ready(function(){
		$('#addBtn').click(function(){				
			if($('#memberId').val() ==''){
				alert('아이디를 입력해주세요');
				
			}else if($('#memberPw').val() ==''
					|| $('#memberPw').val().lebgth<3){
				alert('비밀번호를 3자이상 입력해주세요');
				
			}else if($('#memberName').val() ==''){
				alert('이름을 입력해주세요');
				
			}else if($('#memberSex:checked').length<1){
				alert('성별을 체크해주세요');
				
			}else if($('#memberAge').val() ==''
					|| isNaN($('#memberAge').val())
					|| $('#memberAge').val().length<0){
				alert('나이를 입력해주세요');
				
			}else{
				$('#mForm').submit();
			}
		});
	});
</script>
</head>
<body>
<form id="mForm" action="./memberAddAction.jsp" method="post">
	<table>
		<tr>
			<td>아이디</td>
			<td><input id="memberId" name="memberId" type="text"></td>
		</tr>		

		<tr>
			<td>비번</td>
			<td><input id="memberPw" name="memberPw" type="password"></td>
		</tr>

		<tr>
			<td>이름</td>
			<td><input id="memberName" name="memberName" type="text"></td>
		</tr>

		<tr>
			<td>성별</td>
			<td>
			<input id="memberSex" name="memberSex" type="radio" value="M">남
			<input id="memberSex" name="memberSex" type="radio" value="W">여
			</td>
		</tr>

		<tr>
			<td>나이</td>
			<td><input id="memberAge" name="memberAge" type="text"></td>
		</tr>
		


		<tr>
			<td>
			<input id="addBtn" type="button" value="입력완료">
			<input type="reset" value="초기화">
			</td>
		</tr>
	
	</table>
</form>
</body>
</html>