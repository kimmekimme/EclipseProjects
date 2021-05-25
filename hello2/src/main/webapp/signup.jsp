<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="util.*" %>
<%@ page import="core.*" %>
	request.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("id");
	String upass = request.getParameter("ps");
	String uname = request.getParameter("name");

	
	Connection conn = ConnectionPool.get();
	/*
	String sql = "INSERT INTO user(id, password, name) VALUES(?, ?, ?)";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, uid);
	stmt.setString(2, upass);
	stmt.setString(3, uname);	
		
	int count = stmt.executeUpdate();
	*/
	
	UserDAO dao = new UserDAO();
		if (dao.exists(uid)) {
		out.print("이미 가입한 회원입니다.");
		return;
		}
	
		if (dao.insert(uid,upass,uname) == true) {
			out.print("회원 가입이 완료되었습니다.");
		}
		else {
			out.print("회원 가입 중 오류가 발생하었습니다.");
		}
	
%>