<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberUpdate(홈쇼핑 회원 정보 수정)</title>
<link rel="stylesheet" href="Layout.css">
<link rel="stylesheet" href="./memberRegister.css?v=3">
<title>Insert title here</title>
</head>
<body>
   <!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 
   그리고 value에서 출력하기
-->
   <%
   String custno = request.getParameter("custno");
   %>
   <header>
      <h2>홈쇼핑 회원관리 ver1.0</h2>
   </header>
   <nav>
      <ul>
         <li><a href="./MemberRegister.html">회원등록</a>
         <li><a href="./MemberList.html">회원목록조회/수정</a>
         <li><a href="./MemberSales.html">회원매출조회</a>
         <li><a href="./Layout.html">홈으로.</a>
      </ul>
   </nav>
   <section>
      <h3>홈쇼핑 회원 정보 수정</h3>
      <table>
         <tr>
            <th>회원번호(자동발생)</th>
            <!-- 
               MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 
               그리고 value에서 출력하기
               -->
            <td><input type="number" value="<%=custno%>" id="cuNo"
               name="회원번호"></td>
         <tr>
            <th>회원성명</th>
            <td><input type="text"></td>
         </tr>
         <tr>
            <th>회원전화</th>
            <td><input type="number"></td>
         </tr>
         <tr>
            <th>회원주소</th>
            <td><input type="text"></td>
         </tr>
         <tr>
            <th>가입일자</th>
            <td><input type="text"></td>
         </tr>
         <tr>
            <th>고객등급[A:VIP, B:일반, C:직원]</th>
            <td><input type="text"></td>
         </tr>
         <tr>
            <th>도시코드</th>
            <td><input type="number"></td>
         </tr>
         <tr>
            <td colspan="2" class="button">
               <button type="button" onclick="alert('수정되었습니다.')">수정</button>
               <button type="button" onclick="alert('조회화면으로 이동합니다.')">조회</button>
            </td>
         </tr>
      </table>
   </section>
   <footer>
      <h4>HRDKOREA Copyright@2016 All rights reserved. Human Resources
         Development Service of Korea</h4>
   </footer>
</body>
</html>