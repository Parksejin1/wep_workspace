<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 아래 href 의 주소는 애플리케이션이름(context) 를 기준으로 하는 절대주소입니다. -->
<link rel="styLesheet" href="<%=request.getContextPath()%>/css/Layout.css">
<!--  el로 표기할 때에는 현재 페이지의 request를 가져와야합니다(pageContext.request) -->
<link rel="styLesheet" href="${pageContext.request.contextPath}/css/MemberList.css ">
<link rel="styLesheet" href="${pageContext.request.contextPath}/css/Layout.css ">
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
<table>
<tr>
<th>회원번호</th><th>회원성명</th><th>전화번호</th><th>주소</th><th>가입일자</th><th>고객등급</th><th>거주지역</th>

</tr>
<c:forEach items="${list }" var="dto">
<tr>

<td>
	<a href="memberUpdate.jsp?custno=${dto.custno}">
		<c:out value="${dto.custno}"/>
	</a>
</td>
<td><c:out value="${dto.custname}"/></td>
<td><c:out value="${dto.phone}"/></td>
<td><c:out value="${dto.address}"/></td>
<td><c:out value="${dto.joindate}"/></td>
<!--  문자열 메소드 연산은 fn 을 이용해서 해야하나 동등비교는 eq또는 ne 연산으로 할 수있씁니다. -->
<c:if test="${dto.grade eq 'VIP'}">
	<td>
		<span style='color:red;'>VIP</span>
		</td>
</c:if>
	<c:if test="${dto.grade ne 'VIP'}">
	 <td>	<c:out value="${dto.grade }"/></td>
	</c:if>
	<td><c:out value="${dto.city }"/></td>
	</tr>
</c:forEach> 
</table>

</div>
<div class="footer">
 <h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service
   of Korea</h4>
 </div>
</body>
</html>