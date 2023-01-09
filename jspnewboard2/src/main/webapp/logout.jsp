<%@ page info="logout" errorPage="error.jsp" %>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.*,java.text.*" %>
<%
 session=request.getSession(false);
 session.invalidate();
%>
<script language="javascript">
<!--
parent.location.href="index.html";
//-->
</script>