<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
 <jsp:useBean id="test" class="sample.dto.MemberDto" scope="request">
 <jsp:setProperty name="test" property="custno"/>
 <jsp:setProperty name="test" property="custname"/>
 <jsp:setProperty name="test" property="phone"/>
 <jsp:setProperty name="test" property="address"/>
 <jsp:setProperty name="test" property="grade"/>
 <jsp:setProperty name="test" property="city"/>
 </jsp:useBean>
    <% 
    //파라미터 가져오기

	 
 
	MemberDao dao = MemberDao.getMemberDao();
    dao.insert(test);	//db  테이블에 반영된 것 확인하기
%>

 

<script type="text/javascript">
alert('등록되었습니다')
location.href='memberRegister.jsp';
</script>