<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.MemberDto"%>
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
   MemberDao dao = MemberDao.getMemberDao();
   MemberDto dto= null;
   if(custno !=null) // 수정할 데이터를 가져오기 (참고 :custno 가 테이블 pk값)
	   dto= dao.selectOne(Integer.parseInt(custno));
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
     
        
            <!-- 
               MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 
               그리고 value에서 출력하기
               -->
            <form action="memberSave.jsp" method="post">
 <table>
 	<tr>
 		<td><label for="lblNo">회원번호</label></td>
 		<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value에서 출력하기. -->
 		<td><input type="number" value="<%=custno%>" id="cuNo"
               name="cutno" disabled="disabled">
               <input type="hidden" name="custno" value="<%=custno%>">
               </td>
 	</tr>
 	<tr>
 		<td><label for="lblname">회원성명</label></td>
 		<td><input type="text" id="lblname" name="custname" value="<%= dto.getCustname() %>"></td>
 	</tr>
 	<tr>
 		<td><label for="lblphone">회원전화</label></td>
 		<td><input type="text" id="lblphone" name="phone" value="<%= dto.getPhone()%>"></td>
 	</tr>
 	<tr>
 		<td><label for="lbladdr">회원주소</label></td>
 		<td><input type="text" id="lbladdr" name="address" value="<%=dto.getAddress() %>"></td>
 	</tr>
 	<tr>
 		<td><label for="lblsign">가입일자</label></td>
 		<td><input type="text" id="lblsign" value="20230727" name="joindate"
 			value="<%= dto.getJoindate() %>"
 			></td>
 	</tr>
 	<tr>
 		<td><label for="lblgrade">고객등급[A:VIP, B:일반, C:직원]</label></td>
 		<td><input  id="lblgrade" name="grade" value="<%= dto.getGrade() %>">
 		</td>
 	</tr>
 	<tr>
 		<td><label for="lblcode">도시코드</label></td>
 		<td><input id="lblcode" name="city" value="<%= dto.getCity() %>">
			</td>
 		</tr>
 		<tr>
 			<td colspan="2">
 				<button>수정</button>
 				<button type="button" 
 				onclick="location.href='memberList.jsp'">조회</button>
 </table>
 </form>
 </section>
            
   <footer>
      <h4>HRDKOREA Copyright@2016 All rights reserved. Human Resources
         Development Service of Korea</h4>
   </footer>
</body>
</html>