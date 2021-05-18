<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/mysns?serverTimezone=UTC", "root", "1111");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT id, no , ts FROM feed");
	String str = "";
	while(rs.next()) { //hasnext()와 같음 커서에 레코드 있으면 True 반환 -> 실행
	str += rs.getString("id") + ", " + rs.getString("no") + ", " + rs.getString("ts") + "<br>";
	}
	out.print(str);
	rs.close(); stmt.close(); conn.close();
%>