<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
</head>
<body>
<%
	Connection conection = null;
	PreparedStatement statement = null;
	ResultSet resultSet = null;
	
	try{
		if(resultSet.next()) {
			System.out.println("관리자 로그인 성공");

			session.setAttribute("sessioAdminId", resultSet.getString("sessioAdminId"));
		} else {
			System.out.println("관리자 로그인 실패");
		}
	} catch (Exception e) {
		
	} finally {
		
	}

	response.sendRedirect("");
%>
</body>
</html>