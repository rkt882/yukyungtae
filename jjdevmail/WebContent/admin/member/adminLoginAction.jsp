<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet resultSet = null;
	
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	String memberPw = request.getParameter("memberPw");
	
	System.out.println("memberId:" +memberId);
	System.out.println("memberPw:" +memberPw);
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/jjdevmall?useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPw = "java0000";
	
	Class.forName(driver);
	connection = DriverManager.getConnection(url, dbUser, dbPw);
	
	String sql = "SELECT member_id, member_pw FROM member WHERE member_id=? AND member_pw=?";
	statement = connection.prepareStatement(sql);
	statement.setString(1, memberId);
	statement.setString(2, memberPw);
	
	System.out.println(statement);
	resultSet = statement.executeQuery();
	try{
		if(resultSet.next()) {
			System.out.println("관리자 로그인 성공");

			session.setAttribute("sessionMemberId", resultSet.getString("member_id"));
		} else {
			System.out.println("관리자 로그인 실패");
		}
	} catch (Exception e) {
		
	} finally {
		
	}

	response.sendRedirect(request.getContextPath()+"/admin/adminIndex.jsp");
	System.out.println("인덱스 페이지로 이동");
%>
</body>
</html>