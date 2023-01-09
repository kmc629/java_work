<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.text.*,java.net.*,java.util.*"%>
<!DOCTYPE html>
<%
 String userid   = request.getParameter("userid");
 String password = request.getParameter("password");
 Connection con = null;
 Statement  stmt = null;
 ResultSet  rs   = null;
 String query    = new String();
 String name	    = new String();
 
try {
 Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e ) {
 out.println(e);
}    
try {
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fboard","root","0000");
 stmt = con.createStatement();
} catch(SQLException e) {
 out.println(e);
}
boolean bLogin = false;
try{
 query = "select * from member where userid = '"+userid+"'";
 query = query + " and password = '"+password+"'";
 rs = stmt.executeQuery(query);
 if(rs.next()){
  name   = rs.getString("username");
  bLogin = true;
 }else{
  bLogin = false;
 }
 rs.close();
} catch(SQLException e) {
 out.println(e);
} finally {
 con.close();
}
if (bLogin){
 session.setAttribute("member_id",userid); 
 session.setAttribute("member_name",name); 
 response.sendRedirect("left_Frame.jsp");
}else{
 out.println("<script>alert('아이디와 비밀번호를 확인하세요'); history.back();</script>");
}
%>