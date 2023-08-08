<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String temp = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String grade = request.getParameter("grade");
String city = request.getParameter("city");
int custno=0;
 if(temp !=null)
	 custno= Integer.parseInt(temp);
	 
	MemberDao dao = MemberDao.getMemberDao();
    MemberDto dto = new MemberDto(custno,custname,phone,address,null,grade,city);
    dao.update(dto);
    
    //수정한 후에 alret 이 나와야합니다.
    out.print("<script>");
    out.print("alert('회원 정보 수정이 완료되었습니다.');");
    out.print("location.href='memberList.jsp';");
    out.print("</script>");
%>