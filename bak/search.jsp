<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<%
try {
//載入資料庫驅動程式 
	Class.forName("com.mysql.jdbc.Driver");
	try {
//建立連線 	
		String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
		String sql="";
		Connection con=DriverManager.getConnection(url,"root","1234");
		if(con.isClosed())
		   out.println("連線建立失敗");
		else {
//選擇資料庫   
		   sql="use np";
		   con.createStatement().execute(sql);
		   
//執行 SQL 指令	
				request.setCharacterEncoding("utf-8");
				String product[] =  request.getParameterValues("p");
				String search =  request.getParameter("search");
				String reset =  request.getParameter("reset");
				try{
					//int pd= product.length;
					//if(product.length==0){
						sql="SELECT DISTINCT `type`,`name`,`price` FROM `product`  WHERE `name` LIKE '%"+search+"%'";
						ResultSet rs = con.createStatement().executeQuery(sql);
						while(rs.next()){
							String ptype=rs.getString(1);
							String pname=rs.getString(2);
							String price=rs.getString(3);
							out.print("<form action='shop.jsp' method='POST'>");
							out.print("<input type='hidden' name='ptype' value='"+ptype+"'>");
							out.print("<input type='hidden' name='pname' value='"+pname+"'>");
							out.print("<input type='hidden' name='price' value='"+price+"'></form>");
						}
						//}
						response.sendRedirect("shop.jsp");
					//}
					//for (int i = 0; i < product.length; i++) {
					//session.setAttribute("pd",product[i]);
					//out.print(product[i]);
					//}
					//response.sendRedirect("shop.jsp");
				}
				catch (Exception e){
					out.print("ERROR!");
				} 
					
			}
				
			//sql = "SELECT * FROM `product`  WHERE `name` LIKE '"+request.getParameter("search")+"%'";
			//ResultSet rs = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
			//if(rs.next()){
				//out.print(rs.getString(2));
				//session.setAttribute("search",rs.getString(2));
				
			//}
			//response.sendRedirect("shop.jsp");
			//con.close();//結束資料庫連結
				
		//}
				   
	}
	catch (SQLException sExec) {
		   out.println("SQL錯誤"+sExec.toString());
	}
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>