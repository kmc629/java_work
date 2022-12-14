<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%
 Object mem_id = session.getAttribute("member_id"); 
 session.putValue(session.getId(), mem_id);
 String userid = (String)session.getValue(session.getId());
 if(userid == null)
  session.putValue(session.getId(), mem_id);
 String sql="select * from member where userid=?" ;
 Connection con=null;
 PreparedStatement pst=null;    
 ResultSet rs=null;
 
 try {
  Class.forName("com.mysql.cj.jdbc.Driver");
 } catch (ClassNotFoundException e){
  out.println(e.getMessage());
 }
 
 try {
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fboard","root","0000");
 } catch (SQLException e) {
  out.println(e);
 }
 try {
  pst = con.prepareStatement(sql);
  pst.setString(1,userid);
  rs = pst.executeQuery();  
  if (!(rs.next())) {
    out.println("해당되는 회원이 없습니다.");
  } else {
   String username = rs.getString("username");
   String phone = rs.getString("phone");
%>
<html>
<head>
<title><%=username%> 회원님 개인 정보관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="StyleSheet" href="style.css" type="text/css">
<head>
<body>
<form name="join" method="post" >
<input type=hidden name="userid" value="<%=userid%>">
<input type=hidden name="mode" value="modify">
<table width="500" border="1" bordercolorlight="#999999" bordercolordark="#FFFFFF" cellpadding="3" cellspacing="0" align="center" class=style2>
 <tr align="center"> 
  <td colspan="2" background="image/sky_bar.gif"> <%=username%> 회원님의 개인정보는 다음과 같습니다.</td>
 </tr>
 <tr> 
  <td width="30%" align="right">아이디</td>
  <td width="70%"><%= userid %></td>
 </tr>
 <tr> 
  <td width="30%" align="right">이름</td>
  <td width="70%"><%=username%></td>
 </tr>
 <tr> 
  <td width="30%" align="right">비밀번호</td>
  <td width="70%">보안상 기재하지 않습니다.</td>
 </tr>
 
 <tr> 
  <td width="30%" align="right">EMAIL</td>
  <td width="70%"><%=rs.getString("email")%></td>
 </tr>
 <tr> 
  <td width="30%" align="right">우편번호</td>
  <td width="70%"><%=rs.getString("zipcode")%></td>
 </tr>
 <tr> 
  <td width="30%" align="right">주소1</td>
  <td width="70%"><%=rs.getString("address1")%></td>
 </tr>
 <tr> 
  <td width="30%" align="right">주소2</td>
  <td width="70%"><%=rs.getString("address2")%></td>    
 </tr>
 <tr> 
  <td width="30%" align="right">휴대폰</td>
  <td width="70%">
  <% 
   if(phone.equals("--")) {
    out.println("<font color='blue'>선택하지 않았습니다.</font>");
   }else{
    out.println(phone); 
   } 
  %>
  </td>
 </tr>
 <tr >
  <td colspan="2" align="center">
   <input type="button" value="확   인" onClick="location='index.html'">
   <input type="button" value="수   정" onClick="location='modify_session.jsp?mode=modify'">
   <input type="button" value="회원 탈퇴" onClick="location='delete.jsp'">
 </td>
 </tr>
</table>
</form>
</body>
</html> 
<%         
  }
  rs.close();
  con.close();
  pst.close();
 } catch (SQLException e) {
  out.println(e);
 }
%>