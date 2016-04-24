package com.tacademy.board.test;

import java.util.ArrayList;

import com.tacademy.board.dao.BoardDAO;
import com.tacademy.board.vo.Board;

public class BoardTest {

	public BoardTest() {
		BoardDAO dao = new BoardDAO();

//		Board board = new Board();
//		board.setTitle("타이틀 1");
//		board.setWriter("작성자1");
//		board.setContent("t아카데미");
//		dao.doInsertBoard(board);
		
//		ArrayList<Board> list = dao.getBoardList(null);
//		for(Board board : list){
//			System.out.println(board);
//		}
		
//		Board board = new Board();
//		board.setSeq("3");
//		dao.getBoard(board);
//		System.out.println(board);
		
//		Board board = new Board();
//		board.setTitle("타이틀");
//		board.setContent("새로운 Content");
//		board.setSeq("4");
//		dao.updateBoard(board);
		
		Board board = new Board();
		board.setSeq("2");
		dao.deleteBoard(board);
	}

	public static void main(String[] args) {
		new BoardTest();
	}

}
