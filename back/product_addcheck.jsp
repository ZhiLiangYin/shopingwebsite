<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
if(request.getParameter("pid") != null && !request.getParameter("pid").equals("") && request.getParameter("name") != null && !request.getParameter("name").equals("")){
	//sql = "SELECT * FROM members WHERE id='" +request.getParameter("id") + 
	//      "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    sql = "SELECT * FROM `cms` WHERE `id`=? AND `pwd`=?";
	//' OR 1=1; #
	//out.println(sql);
	//out.close();//程式結束
    PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("pid"));
    pstmt.setString(2,request.getParameter("name"));
	
	ResultSet paperrs = pstmt.executeQuery();
	//ResultSet paperrs =con.createStatement().executeQuery(sql);
    
    if(paperrs.next()){            
        session.setAttribute("pid",request.getParameter("pid"));
		con.close();//結束資料庫連結
        response.sendRedirect("product_addtosql.jsp") ;
    }
    else{
        con.close();//結束資料庫連結
	    out.println("新增內容不符 !! <a href='product_add.jsp'>按此</a>重新登入") ;
	}
}
else
	out.println("新增內容不符 !!") ;
	response.sendRedirect("product_add.jsp");
%>
