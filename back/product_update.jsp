<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<style type="text/css">
.header{
  height: 30px;
  margin:0px;
  padding:0px;
}
.left,.center{
  height: 1500px;
  float:left;
}

.left{
  width: 90px;
}
.center{
  width: 1400px;

}
</style>
<%
if(session.getAttribute("id") != null ){
    sql = "SELECT * FROM `cms` WHERE `id`='" +session.getAttribute("id")+"';"; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	String id="", pwd="";
	//讀出id, pwd當成使用者要更改時的內定值
	while(rs.next()){
	    id=rs.getString("id");
		pwd=rs.getString("pwd");
	}
	%>
<div class="header">
<p align="left"><b>後台控制</b></p>
<p align="right">哈囉，<%=id%>，<a href='login_cms.html'>登出</a></p><br />
</div>

<div class="left">
<br />
<p><a href='product_cms.jsp'><b>product</b></a></p>
<br />
<p><a href='order_cms.jsp'>order</a></p>  
<br />
<p><a href='ad_edit.jsp'>ad</a></p>  	  
</div>
<br />

<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {
		
		   con=DriverManager.getConnection(url,"root","up654xu;6");
		   if(con.isClosed())
              out.println("連線建立失敗");
           else {
			  
             sql="USE `np`";//Step 3: 選擇資料庫 
             con.createStatement().execute(sql);
			 
			 String new_id = request.getParameter("pid");
			 sql = "SELECT * FROM `product` WHERE `pid` = '" + new_id + "' " ;
             rs=  con.createStatement().executeQuery(sql);
			 while(rs.next()){			

		        out.println("原始內容: <br>");
			    out.println("產品編號:"+new_id+"<br>");
                out.println("產品名稱:"+rs.getString(2)+"<br>");
                out.println("產品說明:"+rs.getString(3)+"<br>");
                out.println("產品價格:"+rs.getString(4)+"<br>");
                out.println("產品類別:"+rs.getString(5)+"<br>");
			    out.println("尺寸:"+rs.getString(6)+"<br>");
			    out.println("顏色:"+rs.getString(7)+"<br>");
			    out.println("數量:"+rs.getString(8)+"<br>");	
				out.println("狀態(on上架/off下架)："+rs.getString(9)+"<br><hr>");


%>	
<form action="product_updatetosql.jsp?pid=<% out.print(new_id); %>" method="POST">
修改內容:<br />
產品價格(限數字)：<input type="text" name="price" /><br />
數量(限數字)：<input type="text" name="count" /><br />

<input type="submit" name="b1" value="修改" />
<input type="reset" name="b1" value="重設">
</form>
<%			
			 }
//Step 6: 關閉連線
              con.close();
          }
		   
	}
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
		   
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤"+err.toString());
}


    con.close();//結束資料庫連結
	
}
else{
	con.close();//結束資料庫連結
}
%>

