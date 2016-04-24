<%@page import="com.tacademy.board.vo.Board"%>
<%@page import="com.tacademy.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 글쓴이, 타이틀, 내용을 받아 DB에 insert후 
	// getBoardList.jsp 로 이동
	
	request.setCharacterEncoding("utf-8"); //client에서 넘어오는 문자가 한글이 있을 경우
	
	BoardDAO dao = new BoardDAO();
	Board board = new Board();
	board.setTitle(request.getParameter("title"));
	board.setWriter(request.getParameter("writer"));
	board.setContent(request.getParameter("content"));
	
	dao.doInsertBoard(board);
	
	response.sendRedirect("getBoardList.jsp");
%>