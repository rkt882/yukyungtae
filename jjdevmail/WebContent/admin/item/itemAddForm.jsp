<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('#addBtn').click(function(){				
		if($('#itemName').val() ==''){
			alert('상품이름을 입력해주세요');
			
		}else if($('#itemPrice').val() ==''){
			alert('상품가격을 입력해주세요');
						
		}else if($('#itemRate').val() ==''){
			alert('상품할인을 입력해주세요');
						
		}else{
			$('#itemForm').submit();
		}
	});
});
</script>
</head>
<body>
	<form id="itemForm" action="./itemAddAction.jsp" method="post">
<table>

	<tr>
	<td>상품이름</td>
	<td><input id="itemName" name="itemName" type="text"></td>
	</tr>
	
	<tr>
	<td>상품가격</td>
	<td><input id="itemPrice" name="itemPrice" type="text"></td>
	</tr>
	
	<tr>
	<td>상품할인</td>
	<td><input id="itemRate" name="itemRate" type="text"></td>
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