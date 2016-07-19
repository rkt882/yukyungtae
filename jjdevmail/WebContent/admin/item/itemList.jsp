<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<style>
	table, td {border: 1px solid #5F00FF;}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/jjdevmall?useUnicode=true&characterEncoding=utf-8";
	String user = "root";
	String dbpw = "java0000";
	String sql = "SELECT item_no, item_name, item_price, item_rate FROM item";
	
	Class.forName(driver);
	
	Connection conn = DriverManager.getConnection(url,user,dbpw);
	PreparedStatement stmt = conn.prepareStatement(sql);
	ResultSet rs = stmt.executeQuery();
%>

	
	<table>
		<tr>
			<td>상품번호</td>	
			<td>상품명</td>
			<td>가격</td>
			<td>할인가(%)</td>
			<td>수정</td>	
			<td>삭제</td>	
			

		</tr>
<% 
while(rs.next()){
%>		
		<tr>
			<td><%=rs.getString("item_no")%></td>
			<td><%=rs.getString("item_name")%></td>	
			<td><%=rs.getString("item_price")%></td>	
			<td><%=rs.getString("item_rate")%></td>	
			<td><a href="">수정</a></td>
			<td><a href="">삭제</a></td>


		</tr>
<%
	}
%>
	</table>
</body>
</html>