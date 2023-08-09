<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12useBean.jsp</title>
</head>
<body>

<jsp:useBean id="dto" class="sample.dto.MyUser">
</jsp:useBean>

<jsp:setProperty property="uname" name="dto" param="uname"/>
<jsp:setProperty property="age" name="dto" param="age"/>
<jsp:setProperty property="address" name="dto" param="address"/>
mysuer 이름 : <jsp:getProperty property="uname" name="dto"/>

나이: <jsp:getProperty property="age" name="dto"/>
주소: <jsp:getProperty property="address" name="dto"/>

<ul>
	<li>${dto.uname }</li>
	<li>${dto.age }</li>
	<li>${dto.address }</li>	

</ul>


<jsp:useBean id="appDto" class="sample.dto.MyUser" scope="application"/>
<jsp:setProperty property= "*" name= "appDto"/>
<jsp:useBean id= "sessionDto" class="sample.dto.MyUser" scope="session"/>
<jsp:setProperty property= "*" name="sessionDto"/>
<% 
	out.print(appDto);
	out.print("<br>");
	out.print(sessionDto);
%>
<a href="10scopeTest.jsp">10scopeTest.jsp 로 확인하러가기</a>
</body>
</html>