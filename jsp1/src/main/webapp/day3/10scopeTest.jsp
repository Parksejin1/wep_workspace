<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10scopeTest.jsp</title>
</head>
<body>
<h3>scope 테스트</h3>
<hr>
<h4>application</h4>
<!-- applicationScope에 저장된 appDto 자바빈을 가져오기 -->
<jsp:useBean id="appDto" class="sample.dto.MyUser" scope="application"/>
<% out.print(appDto);%>
<ul>
	<li>${appDto.uname }</li>
	<li>${appDto.age }</li>
	<li>${appDto.address }</li>	

</ul>


<h4>session</h4>
<!--  sessionScope 에 저장된 sesspionDto 자바빈을 가져오가 -->
<jsp:useBean id="sessionDto" class="sample.dto.MyUser" scope="session"/>
<% out.print(sessionDto);%>

<ul>
	<li>${sessionDto.uname }</li>
	<li>${sessionDto.age }</li>
	<li>${sessionDto.address }</li>	

</ul>

<h4>????</h4>
<p>
*jsp:useBean의 기본 scope="page" 입니다.
여기서 page 는 pageContext 입니다.
자바빈 id dto는 12useBean.jsp 에서만
사용할수 있습니다.
</p>
<jsp:useBean id="dto" class="sample.dto.MyUser"/>
<% out.print(dto);%>


</body>
</html>