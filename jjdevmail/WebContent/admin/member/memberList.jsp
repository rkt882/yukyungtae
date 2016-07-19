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
		$('#btn').click(function(){
			$('#member').submit();
		});
	});
	</script>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<form id="member" action="./memberAddAction.jsp" method="post">

<input id="btn" type="button" value="검색"/>
</form>
<%
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/jjdevmall?useUnicode=true&characterEncoding=utf-8";
	String user = "root";
	String dbpw = "java0000";
	String sql = "SELECT member_id, member_name, member_sex, member_age FROM member";
	
	Class.forName(driver);
	
	Connection conn = DriverManager.getConnection(url,user,dbpw);
	PreparedStatement stmt = conn.prepareStatement(sql);
	ResultSet rs = stmt.executeQuery();
%>

	
	<table>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>성별</td>
			<td>나이</td>	

		</tr>
<% 
while(rs.next()){
%>		
		<tr>
			<td><%=rs.getString("member_id")%></td>	
			<td><%=rs.getString("member_name")%></td>	
			<td><%=rs.getString("member_sex")%></td>	
			<td><%=rs.getInt("member_age")%></td>	


		</tr>
<%
	}
%>
	</table>
</body>
</html>