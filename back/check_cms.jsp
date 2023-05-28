<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("id") != null && !request.getParameter("id").equals("") && request.getParameter("pwd") != null && !request.getParameter("id").equals("")){
	//sql = "SELECT * FROM members WHERE id='" +request.getParameter("id") + 
	//      "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    sql = "SELECT * FROM `cms` WHERE `id`=? AND `pwd`=?";
	//' OR 1=1; #
	//out.println(sql);
	//out.close();//程式結束
    PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("id"));
    pstmt.setString(2,request.getParameter("pwd"));
	
	ResultSet paperrs = pstmt.executeQuery();
	//ResultSet paperrs =con.createStatement().executeQuery(sql);
    
    if(paperrs.next()){            
        session.setAttribute("id",request.getParameter("id"));
		con.close();//結束資料庫連結
        response.sendRedirect("administrator.jsp") ;
    }
    else{
        con.close();//結束資料庫連結
	    out.println("密碼帳號不符 !! <a href='login_cms.html'>按此</a>重新登入") ;
	}
}
else
	response.sendRedirect("login_cms.html");
%>
