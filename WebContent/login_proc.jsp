<%@page import="com.tacademy.board.vo.Member"%>
<%@page import="com.tacademy.board.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//id, pw받아 DB 연동 후 정상적이면 getBoardList.jsp로 이동
	//실패시 login.jsp로 이동
	MemberDAO dao = new MemberDAO();
		
	Member member = new Member();
	member.setId(request.getParameter("id"));
	member.setPassword(request.getParameter("password"));
		
	dao.doLogin(member);
	if(member.getName() == null){
		response.sendRedirect("login.jsp");
	}else{
		session.setAttribute("member", member);
		response.sendRedirect("getBoardList.jsp");
	}
	
%>