<%@page import="sample.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp - 요청 처리</title>
</head>
<body>
<%
	MemberDao dao = MemberDao.getMemberDao();
	List<MemberDto> list = dao.selectAll();

		//list 를 저장하는 애트리뷰트 메소드 실행
		request.setAttribute("list",list);
		
		//요청 listView.jsp(화면출력)으로 전달하기
		pageContext.forward("listView.jsp");
	
%>
</body>
</html>