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
request.setCharacterEncoding("UTF-8");
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
			  

//Step 4: 執行 SQL 指令	


              if(request.getParameter("pid") != null && !request.getParameter("pid").equals("") && request.getParameter("name") != null && !request.getParameter("name").equals("") &&
				 request.getParameter("size") != null && !request.getParameter("size").equals("") && request.getParameter("color") != null && !request.getParameter("color").equals("") && 
				 request.getParameter("count") != null && !request.getParameter("count").equals("") && request.getParameter("price") != null && !request.getParameter("price").equals("") ){		
                String pid=request.getParameter("pid");
                String new_name=request.getParameter("name");
				String price=request.getParameter("price");
				String size=request.getParameter("size");
				String new_color=request.getParameter("color");
				String count=request.getParameter("count");
				String new_note = "" ;
				String ptype = "" ;
				if (new_name.equals("休閒百搭牛仔褲")){
					new_note = "材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "3" ;//
				}
				else if (new_name.equals("保暖休閒褲")){
					new_note = "材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "1" ;//
				}
				else if (new_name.equals("簡約抗皺親膚長袖襯衫")){
					new_note = "材質 / 100 %聚酯纖維<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "5" ;//
				}
				else if (new_name.equals("保暖刷毛連帽T")){
					new_note = "材質 / 65%綿 35%聚酯纖維<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "7" ;//
				}
				else if (new_name.equals("棉質素面短袖T恤")) {
					new_note = "材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "9" ;//
				}
				else if (new_name.equals("直筒牛仔褲")){
					new_note = "材質 / 棉77.9% 黏膠纖維19.6% 其他2.5%<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "4" ;//
				}
				else if (new_name.equals("彈力休閒褲")){
					new_note = "材質 / 97%棉 3%彈性纖維<br>彈性 / 有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "2" ;//
				}
				else if (new_name.equals("條紋襯衫")){
					new_note = "材質 / 100 %純棉<br>彈性 / 無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "6" ;//
				}
				else if (new_name.equals("運動空氣層連帽T")){
					new_note = "材質 / 棉62% 聚酯纖維38%<br>彈性 /  稍微有彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "8" ;//
				}
				else if (new_name.equals("字母圖案T恤")){
					new_note = "材質 / 60%棉 40%聚酯纖維<br>彈性 /  無彈性<br>產地 / 台灣<br>洗滌方式 / 不可烘乾 / 不可使用漂白成分之洗衣品" ;
					ptype = "10" ;
				}
					 
				 
				 
			  sql="insert `product` (`pid`,`name`,`note`,`price`,`type`,`size`,`color`,`count`,`status`) values ("+ pid + ", '"+ new_name + "', '" + new_note + "', " + price + ", " ;
			  sql+= ptype +", '" + size + "', '" + new_color + "', " + count +",'on' )" ;     
				//out.print(sql);
              con.createStatement().executeUpdate(sql);
			  
				out.println("產品新增成功"+"<br>");
			  
				sql = "SELECT * FROM `product` WHERE `pid` = '" + pid + "' " ;
				
				rs=  con.createStatement().executeQuery(sql);
				while(rs.next()){			
				  String new_type = "";
				
				  out.println("產品編號："+pid+"<br>");
				  out.println("產品名稱："+rs.getString(2)+"<br>");
				  out.println("產品說明："+rs.getString(3)+"<br>");
				  out.println("產品價格："+rs.getString(4)+"<br>");
				  out.println("產品類別："+rs.getString(5)+"<br>");
				  out.println("尺寸："+rs.getString(6)+"<br>");
				  out.println("顏色："+rs.getString(7)+"<br>");
				  out.println("數量："+rs.getString(8)+"<br>");
				  out.println("狀態(on上架/off下架)："+rs.getString(9)+"<br><hr>");
				}
			 
			  }
			  else {
				  out.println("新增內容不符 !!") ;
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