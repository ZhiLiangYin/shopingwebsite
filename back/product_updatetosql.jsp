<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<%@include file="config.jsp" %>
<style type="text/css">
.header{
  height: 30px;
  margin:0px;
  padding:0px;
}
.left,.center{
  height: 1000px;
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
			  String price=request.getParameter("price");
              String count=request.getParameter("count");
//Step 4: 執行 SQL 指令	.

              sql = "UPDATE `product` SET ";
			  String dontdo = "UPDATE `product` SET WHERE `pid` = '" + new_id +"' " ;
			  if( request.getParameter("price") != null && !request.getParameter("price").equals("") ) sql += " `price` = '" + price + "'," ;
			  if( request.getParameter("count") != null && !request.getParameter("count").equals("") ) sql += " `count` = '" + count + "'," ;
			  sql = sql.substring(0,sql.length()-1);
			  sql += " WHERE `pid` = '" + new_id +"' ";
			  
			  
			  if( sql.equals(dontdo) ) {
				sql = "SELECT * FROM `product` WHERE `pid` = '" + new_id + "' " ;
                rs=  con.createStatement().executeQuery(sql);
			    while(rs.next()){			

		          out.println("已修改成功為: <br>");
			      out.println("產品編號:"+new_id+"<br>");
                  out.println("產品名稱:"+rs.getString(2)+"<br>");
                  out.println("產品說明:"+rs.getString(3)+"<br>");
                  out.println("產品價格:"+rs.getString(4)+"<br>");
                  out.println("產品類別:"+rs.getString(5)+"<br>");
			      out.println("尺寸:"+rs.getString(6)+"<br>");
			      out.println("顏色:"+rs.getString(7)+"<br>");
			      out.println("數量:"+rs.getString(8)+"<br><hr>");				  
			    }
			  }
			  else{
					int no=con.createStatement().executeUpdate(sql); //可回傳異動數
					if (no > 0){
						
				sql = "SELECT * FROM `product` WHERE `pid` = '" + new_id + "' " ;
				
                rs=  con.createStatement().executeQuery(sql);
			    while(rs.next()){		
				
		          out.println("已修改成功為: <br>");
			      out.println("產品編號:"+new_id+"<br>");
                  out.println("產品名稱:"+rs.getString(2)+"<br>");
                  out.println("產品說明:"+rs.getString(3)+"<br>");
                  out.println("產品價格:"+rs.getString(4)+"<br>");
                  out.println("產品類別:"+rs.getString(5)+"<br>");
			      out.println("尺寸:"+rs.getString(6)+"<br>");
			      out.println("顏色:"+rs.getString(7)+"<br>");
			      out.println("數量:"+rs.getString(8)+"<br><hr>");				  
			    }
				
					}
					else out.println("修改失敗");
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