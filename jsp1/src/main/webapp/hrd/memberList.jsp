<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="styLesheet" href="MemberList.css">
</head>
<body>
<div class="header">
<h2>쇼핑몰 회원관리ver1.0</h2>
</div>
<div class="nav">
<!-- 정보 수정 화면은 현재값을 먼저 보여주고 수정할 수 있게 합니다. custno 즉 pk값으로
	 db에서 select 한 결과를 한번에 표시하는 코드가 필요합니다.
	 memberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value에서 출력하기
 -->
<%
	// 컬렉션 데이터를 반복문으로 태그 안에 넣어 주기
    String[] list = {"회원등록","회원목록조회/수정","회원매출조회","홈으로"};
    MemberDao dao = MemberDao.getMemberDao();
    List<MemberDto> Mlist = dao.selectAll();
%>
<ul>
<%
	for(int i=0;i<list.length;i++){
%>
  <li><a href=""><%= list[i] %></a></li>
<%
	}
%>
</ul>
</div>
 <div class="section">
<h3>회원목록조회/수정</h3> 
<!-- action 은 input데이터를 전달받고 처리할 url 입니다.
	 memberSave.jsp를 만드세요 그리고 전달받은 파라미터로 update 실행하도록 하세요
	     ㄴ 이파일에는 자바코드 만 작성하고 태그는 필요 없습니다 
	 memberupdate.jsp에서 보내는 파라미터 이름은  input 태그의 name 속성입니다.
 -->
<table>
<tr>
<th>회원번호</th><th>회원성명</th><th>전화번호</th><th>주소</th><th>가입일자</th><th>고객등급</th><th>거주지역</th>
</tr>
<tr>
<%
	for(MemberDto dto : Mlist ){
%>
<tr>

<td>
	<a href="memberUpdate.jsp?custno=<%= dto.getCustno() %>">
		<%= dto.getCustno() %>
	</a>
</td>
<td><%= dto.getCustname() %></td>
<td><%= dto.getPhone() %></td>
<td><%= dto.getAddress() %></td>
<td><%= dto.getJoindate() %></td>
<!-- 스크립트릿,표현식 등 자바코드 주석기호는 아래와 같습니다. -->
<!--  <td><%= dto.getGrade() %></td> -->
<!--  스크립트릭 자바코드 위치는 body 안에 어디에나 가능합니다. -->
<td>
<!--  out : jsp 객체 html 문서에 출력기능을 갖고 텍스트와 태그를 출력합니다.
			따로 선언하지 않고 사용하는 내장(embeded) 객체
 -->
<%
		if (dto.getGrade().equals("VIP"))
			out.println("<span style='color:red;'>vip</span>");
		else
			out.println(dto.getGrade());
     %>
</td>



<td><%= dto.getCity() %></td>
  
</tr>
<%
	}
%>
</table>
</div>
<div class="footer">
 <h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service
   of Korea</h4>
 </div>
</body>
</html>