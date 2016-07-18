<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 	request.setCharacterEncoding("UTF-8");
	String itemName = request.getParameter("itemName");
	String itemPrice = request.getParameter("itemPrice");
	String itemRate = request.getParameter("itemRate");
	
	System.out.println("itemName:" +itemName);
	System.out.println("itemPrice:" +itemPrice);
	System.out.println("itemRate:" +itemRate);

	Connection conn = null;
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/jjdevmall?useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPw = "java0000";
	
	Class.forName(driver);
	
	conn = DriverManager.getConnection(url, dbUser, dbPw);
	
	PreparedStatement stmt = conn.prepareStatement("insert into item(item_name,item_price,item_rate) values(?,?,?)");
	
	stmt.setString(1, itemName);
	stmt.setString(2, itemPrice);
	stmt.setString(3, itemRate);
	
	stmt.executeUpdate();
%>
</body>
</html>