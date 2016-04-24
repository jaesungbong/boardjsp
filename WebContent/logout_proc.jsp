<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%
	//세션 정보가 있으면 지우고 login.jsp로 이동
	HttpSession session = request.getSession(); //ture 와 false를 쓸 수 있다. 
	//true서버쪽에 세션이 없으면 세션을 담을 수 있는 변수를 생성하여 사용. 있으면 있는 세션을 사용
	//false서버쪽에 세션이 없으면 null 반환. 있으면 있는 세션을 사용
			
	session.invalidate();
	
	response.sendRedirect("login.jsp");
%>