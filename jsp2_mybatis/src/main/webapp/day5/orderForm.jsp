<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderForm.jsp</title>
</head>
<body>
<h3>주문 입력</h3>					
<form action="orderConfirm.jsp" method="post">
 <input type = "text" name = "email" placeholder = "고객이 메일을 입력하세요." > 
<input type = "text" name = "pcode" placeholder = "상품코드 입력하세요." > 
<input type = "number" name = "quantiry" placeholder = "수량을 입력하세요." > 
<button> 주문</button> 
</form>

</body>
</html>

<!-- 문제1 . 위와 같은 실행결과를 위해 form 입력값 전송 방식 method = “ ” 어떻게 할까요?
          post   url 이 표시되지않았기 떄문에
문제 2 . 위의 button 의 타입 설정이 생략된 것은 무엇인가요? 
        'submit' : 폼 태그 안에 있을때  type 생략
문제3 . orderConfirm.jsp 에서 전송받는 파라미터 이름은 무엇인가요? 모두 쓰세요.
         "email","pcode""quantity"
 -->