<%@ page info="main" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 Object mem_name  = session.getAttribute("member_name"); 
 Object mem_id = session.getAttribute("member_id"); 
 session.setAttribute("member_id",mem_id);
 if(session.getValue("member_id")==null) { 
%>
<link rel="StyleSheet" href="style.css" type="text/css">
<script language="JavaScript">
</script>
	<center>
	<h2>로그인 해주세요.</h2>
</form>
<% } 
else{ 
%>
<link rel="stylesheet" href="style.css" type="text/css">
	<form name ="login" method="post" action="login_process.jsp"> 
	<%@include file="freeboard_list.jsp" %>
<%
 }
%>
