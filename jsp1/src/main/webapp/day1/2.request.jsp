<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2.request.jsp</title>
</head>
<body>

<ul>

	<li>요청 URL : <%= request.getRequestURL() %></li>
	<li>요청 URI : <%= request.getRequestURI() %></li>
	<li>컨텍스트(context) : <%= request.getContextPath() %></li>
	<li>클라이언트 ip : <%= request.getRemoteAddr() %></li>
	<li>클라이언트 host : <%= request.getRemoteHost() %></li>
	<li>클라이언트 포트 : <%= request.getRemotePort() %></li>
	<!--  기준이 서버이므로 remote 멀리 떨어진 것이 클라이언트 local 이 서버 -->
    <li>서버ip : <%= request.getLocalAddr() %></li>
	<li>서버 host : <%= request.getLocalName() %></li>
	<li>서버포트 : <%= request.getLocalPort() %></li>
</ul>
<h4>브라우저 주소가  http://192.168.0.216:8081/jsp1/day1/2.request.jsp </h4>
<!-- 클라이언트 ip는 192.168.0.145 -->
<ul>
     <!--  192.168.0.216 은 사설 i강의장 네트워크에만 연결되는 ip -->
	<li>요청 URL :  http://192.168.0.216:8081/jsp1/day1/2.request.jsp
	  </li>
	  <!-- 동일한 서버와 포트 위치안에서 자원을 식별하는 부분 -->
	<li>요청 URI : /jsp1/day1/2.request.jsp</li>
	<!-- 프로젝트 이름이 컨텍스트로 기본값 설정된 상태  context: 맥락,문맥-->
	<li>컨텍스트(context) : /jsp1</li>
	<!-- 아래의 ip는 ipv6 -->
	<!-- <li>클라이언트ip : 0:0:0:0:0:0:0:1</li> -->
	<li>클라이언트host : 127.0.0.1</li>
	<li>클라이언트포트 :  50780</li>
	<li>서버ip : 127.0.0.1</li>
	<li>서버도메인 네임 : 127.0.0.1</li>
	<li>서버 포트:  8081</li>
	<!-- 이클립스에서 ipv4로 표시되게 설정을 바꿉시다 
	Run- Run Configurations
	톰캣의 arguments 항목에 -Djava.net.preferIPv4Stack=true 추가하기
	-->
	
 
</ul>
<hr>
<h4>브라우저 주소가  http://localhost:8081/jsp1/day1/2.request.jsp </h4>
<ul>

	<li>요청 URL :  http://localhost:8081/jsp1/day1/2.request.jsp
	  </li>
	<li>요청 URI : /jsp1/day1/2.request.jsp</li>
	<li>컨텍스트(context) : /jsp1</li>
	<!-- 아래의 ip는 ipv6 -->
	<!-- <li>클라이언트ip : 0:0:0:0:0:0:0:1</li> -->
    <li>클라이언트ip :0:0:0:0:0:0:0:1</li> 
	<li>클라이언트host : 0:0:0:0:0:0:0:1</li>
	<li>클라이언트포트 : 50871</li>
	<li>서버ip : 0:0:0:0:0:0:0:1</li>
	<li>서버도메인 네임 : 0:0:0:0:0:0:0:1</li>
	<li>서버 포트:  8081</li>
	<!-- 이클립스에서 ipv4로 표시되게 설정을 바꿉시다 
	Run- Run Configurations
	톰캣의 arguments 항목에 -Djava.net.preferIPv4Stack=true 추가하기
	-->
	
 
</ul>
</body>
</html>