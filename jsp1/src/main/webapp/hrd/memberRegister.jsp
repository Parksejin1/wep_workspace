<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 등록</title>
	<link rel="stylesheet" href="./Layout.css?v=3">
	<link rel="stylesheet" href="./MemberRegister.css?v=3">
</head>
<body>
<!--     -->
 <header> <!-- header -->
 	<h2>홈쇼핑 회원관리 ver1.0</h2>
 </header> 
 <nav> <!-- nav -->
 	<!-- 반응형 웹페이지를 위해 메뉴는 목록 태그를 주로 사용합니다. 반응형 페이지 스타일은 레이아웃을 flexbox 사용해야 합니다. -->
 	<ul>
 		<li><a href="./MemberRegister.html">회원등록</a></li> 
		<li><a href="./MemberList.html">회원목록조회/수정</a></li> 
		<li><a href="./MemberSales.html">회원매출조회</a></li> 
		<li><a href="./Layout.html">홈으로.</a></li> 
 	</ul>
 </nav>
 <section>
 <h2>홈쇼핑 회원 등록</h2>
 <form action="RegisterSave.jsp">
 <table>
 	<tr>
 		<td><label for="lblNo">회원번호(자동생성)</label></td>
 		<td><input type="number" id="lblNo"  name="custno" ></td>
 	</tr>
 	<tr>
 		<td><label for="lblname">회원성명</label></td>
 		<td><input type="text" id="lblname" name="custname"></td>
 	</tr>
 	<tr>
 		<td><label for="lblphone">회원전화</label></td>
 		<td><input type="text" id="lblphone" name="phone"></td>
 	</tr>
 	<tr>
 		<td><label for="lbladdr">회원주소</label></td>
 		<td><input type="text" id="lbladdr" name="address"></td>
 	</tr>
 	<tr>
 		<td><label for="lblsign">가입일자</label></td>
 		<td><input type="text" id="lblsign"  name="signupdate"></td>
 	</tr>
 	<tr>
 		<td><label for="lblgrade">고객등급[A:VIP, B:일반, C:직원]</label></td>
 		<td><select  id="lblgrade" name="grade">
 				<option value="A">VIP(A)</option>
 				<option value="B">일반(B)</option>
 				<option value="C">직원(C)</option>
 				</select>
 		</td>
 	</tr>
 	<tr>
 		<td><label for="lblcode">도시코드</label></td>
 		<td><select id="lblcode" name="city">
	 			<option value="11">서울특별시(11)</option>
				<option value="21">부산광역시(21)</option>
				<option value="22">대구광역시(22)</option>
				<option value="23">인천광역시(23)</option>
				<option value="24">광주광역시(24)</option>
				<option value="25">대전광역시(25)</option>
				<option value="26">울전광역시(26)</option>
				<option value="29">세종특별자치시(29)</option>
				<option value="31">경기도(31)</option>
				<option value="32">강원도(32)</option>
				<option value="33">충청북도(33)</option>
				<option value="34">충청남도(34)</option>
				<option value="35">전라북도(35)</option>
				<option value="36">전라남도(36)</option>
				<option value="37">경상북도(37)</option>
				<option value="38">경상남도(38)</option>
				<option value="39">제주특별자치도(39)</option>
			</select>
			</td>
 		</tr>
 		<tr>
 			<td colspan="2">
 				<button>등록</button>
 				<button type="button" onclick="location.href='MemberList.html'">조회</button>
 </table>
 </form>
 </section>
 

 <footer> <!-- footer -->
 	<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service of Korea.</h4>
 </footer>

</body>
</html>