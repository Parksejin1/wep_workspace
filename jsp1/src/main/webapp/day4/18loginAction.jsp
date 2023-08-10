<%@page import="sample.dao.JCustomerDao"%>
<%@page import="sample.dto.JCustomer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18loginAction.jsp</title>
</head>
<body>
<%
	//id와 패스워드 전달 받아서 dao login 메소드 실행
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	out.print(userid + " ");
	out.print(password);
	JCustomerDao dao = new JCustomerDao();
	JCustomer customer = dao.login(userid, password);
	
	if(customer !=null){
		session.setAttribute("user",customer);
		
	}
	
	
	out.print("<script>");
	if(customer !=null){
		out.print("alert('로그인 성공했습니다');");
		out.print("location.href='index.jsp';");
	}else{
		out.print("alert('로그인실패 \\n계정 정보가 올바르지않습니다.');");  //줄바꿈하려면 \n은 못읽음 대신 \\n 으로
		out.print("location.href='17loginView.jsp';");
	}
	out.print("</script>");
	

%>
</body>
</html>