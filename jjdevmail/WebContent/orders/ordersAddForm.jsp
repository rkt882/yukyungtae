<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String sessionMemberId = (String)session.getAttribute("sessionMemberId");
	int itemNo = Integer.parseInt(request.getParameter("itemNo"));

	if(sessionMemberId == null) {
		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}else {
		// 주문 폼 구현
		
		// SELECT jdbc 코드
		// int itemPrice = ?
		// int itemRate = ?
%>
<form>
	<div>
		itemNo :
		<input type="text" value="<%=itemNo %>" readonly="readonly"/>
	</div>
	
	<div>
		itemPrice :
		<span></span>
		<span></span>
		<span></span>
	</div>
	
	<div>
		ordersQuantity :
		<select>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
	</div>
	
	<div>
	
	</div>
</form>
<%
		
	}

%>
</body>
</html>