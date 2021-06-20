<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("id");
	String jsonstr = request.getParameter("jsonstr");
	
	//Connection conn = ConnectionPool.get();
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
		out.print("EX"); //이미가입한 회원입니다.
		return;
		}
	
		if (dao.insert(uid, jsonstr) == true){
			session.setAttribute("id", uid);
			out.print("OK"); //("회원 가입이 완료되었습니다.");
		}
		else {
			out.print("ER"); //("회원 가입 중 오류가 발생하었습니다.");
		}
	
%>