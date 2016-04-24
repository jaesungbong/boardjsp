<%@page import="com.tacademy.board.vo.Board"%>
<%@page import="com.tacademy.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//seq값을 받아 Board게시판 삭제 후
	//getBoardList.jsp로 이동
	
		BoardDAO dao = new BoardDAO();

		Board board = new Board();
		board.setSeq(request.getParameter("seq"));
		
		dao.deleteBoard(board);
		response.sendRedirect("getBoardList.jsp");	
%>