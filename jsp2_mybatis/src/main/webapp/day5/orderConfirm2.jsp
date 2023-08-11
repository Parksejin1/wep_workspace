<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderConfirm2.jsp</title>
</head>
<body>
<jsp:useBean id = "order" class = "sample.dto.OrderDto" scope="request"/> 
<jsp:setProperty property = "*" name = "order"/> 
<% 
OrderDao dao = OrderDao.getOrderDao(); 
if (dao.insert(order)==1){ 
%> 
<jsp:forward page = "orderResult.jsp"/> 
<% 
} 
%>
</body>
</html>
<!-- 
문제9 . orderConfirm.jsp를 아래와 같이 2개의 소스파일 `처리`와 `화면출력`으로
분리하였습니다. orderConfirm.jsp 와 동일하게 실행되기 위해 필요한 코드는 무엇인가요? 
		scope="request"
문제10. <jsp:forward page="orderResult.jsp"/> 를 설명하세요.
   orderConfirm2.jsp가 받은 요청(request)을 orderResult.jsp 전달한다
 -->