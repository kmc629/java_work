<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*  "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 삭제하기</title>
<link href="freeboard.css" rel="stylesheet" type="text/css">
</head>
<body>
[<A href="freeboard_list.jsp?go=<%=request.getParameter("page")%>">게시판 목록으로</A>]

<% 
	String sql = null;
	Connection con=null;
	PreparedStatement st=null;
	ResultSet rs=null;
	int cnt=0;
	
		int id=Integer.parseInt(request.getParameter("id").trim());
	
	try{
 		Class.forName("com.mysql.cj.jdbc.Driver");
 		} catch (ClassNotFoundException e){
 		out.println(e);
 		}
 	
 	try{
 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fboard","root","0000");
 		} catch (SQLException e) {
 		out.println(e);
 		}
 	
 	try{
 		sql="select*from freeboard where id=? ";
 		st = con.prepareStatement(sql);
 		st.setInt(1, id);
 		rs=st.executeQuery();
 		if(!(rs.next())){
 			out.println("해당 내용이 없습니다");
 		} else{
 			String pwd=rs.getString("password");
 			if(pwd.equals(request.getParameter("password"))){
 				sql="delete from freeboard where id=?";
 				st = con.prepareStatement(sql);
 				st.setInt(1,id);
 				cnt = st.executeUpdate();
 				if(cnt>0)
 					out.println("정상적으로 삭제되었습니다.");
 				else
 					out.println("삭제되지 않았습니다.");
 			}	else
 				out.println("비밀번호가 틀립니다.");
 			}
	rs.close();
	st.close();
	con.close();
	} catch (SQLException e) {
	out.println(e);
	}
%>
</body>
</html>