<%@page import="com.tacademy.board.vo.Board"%>
<%@page import="com.tacademy.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//seq, tilte, content를 받아 조건이 번호가 seq
	//수정 후 getBoardList.jsp로 이동
		request.setCharacterEncoding("utf-8");
	
		BoardDAO dao = new BoardDAO();
		Board board = new Board();
		board.setTitle(request.getParameter("title"));
		board.setContent(request.getParameter("content"));
		board.setSeq(request.getParameter("seq"));
		dao.updateBoard(board);
		
		response.sendRedirect("getBoardList.jsp");
%>