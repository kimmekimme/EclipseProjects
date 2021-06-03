<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.*" %>
<%
	String maxNo = request.getParameter("maxNo");
String frids = request.getParameter("frids");
	out.print((new FeedDAO()).getGroup(frids, maxNo));
%>