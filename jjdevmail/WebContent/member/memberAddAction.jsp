<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	String memberPw = request.getParameter("memberPw");
	String memberName = request.getParameter("memberName");
	String memberSex = request.getParameter("memberSex");
	String memberAge = request.getParameter("memberAge");
	String memberAdress = request.getParameter("memberAdress");
	
	System.out.println("memberId:" +memberId);
	System.out.println("memberPw:" +memberPw);
	System.out.println("memberName:" +memberName);
	System.out.println("memberSex:" +memberSex);
	System.out.println("memberAge:" +memberAge);

	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/jjdevmall?useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPw = "java0000";
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, dbUser, dbPw);
	
	PreparedStatement stmt = conn.prepareStatement("insert into member(member_id,member_pw,member_name,member_sex,member_age) values(?,?,?,?,?)");
		
	stmt.setString(1, memberId);
	stmt.setString(2, memberPw);
	stmt.setString(3, memberName);
	stmt.setString(4, memberSex);
	stmt.setString(5, memberAge);

	
	stmt.executeUpdate();
%>
</body>
</html>