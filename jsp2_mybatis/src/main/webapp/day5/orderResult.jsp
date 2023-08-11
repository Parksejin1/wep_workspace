<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderResult.jsp</title>
</head>
<body>
<h3> 주문 확인</h3> 
<hr> 
<ul> 
<li > 고객 이메일 : ${order.email} </li> 
<li > 상품코드 : ${order.pcode } </li> 
<li > 주문수량 : ${order.quantiry } </li> 
</ul > 
<hr > 
<button onclick="#"> 추가 주문</button> 
<script type = "text/javascript" > alert('주문완료 되었습니다.') </script > 
</body>
</html>

<!-- 
    문제11. ${order.email} 를 설명하세요.
    변수나 표현식을 더 간결하게 출력할 수 있게 해주는 문법으로
    ${order.email} 안에 있는 내용을 해당 order 객체의 email을 참조하여 출력합니다
 -->