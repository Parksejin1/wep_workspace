<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderConfirm.jsp</title>
</head>
<body>
	<hr>
	<jsp:useBean id="order" class="sample.dto.OrderDto" />
									 <!-- 4번 -->
	<jsp:setProperty property="*" name="order" />
	<ul>
		<li>고객 이메일 : <jsp:getProperty property="email" name="order" /></li>
		<li>상품코드 : <jsp:getProperty property="pcode" name="order" /></li>
		<li>주문수량 : <jsp:getProperty property="quantiry" name="order" /></li>
	</ul>
	<hr>
						<!-- 5번 -->
	<button onclick="location.href='orderForm.jsp'">추가 주문</button>
	<%
	OrderDao dao = OrderDao.getOrderDao();
	if (dao.insert(order) == 1) {
	%>
	<script type="text/javascript">
		alert('주문완료 되었습니다.')
	</script>
	<%
	}
	%>
</body>
</html>
<!--문제4 . 자바빈즈의 프로퍼티를 설정하고 가져오는 실행을 위해 (4) ? 에 공통으로 들어갈
코드를 작성하세요. 
        name="order"
문제5 . 추가 주문 버튼 클릭시 <<화면1>> 로 가기 위한 (5) ? 코드를 작성하세요.  
         location.href='orderForm.jsp'
         버튼을 누를경우  orderForm.jsp 파일로 이동
-->
