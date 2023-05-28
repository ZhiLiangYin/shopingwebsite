<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*"%>
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


		<form method="POST">
		<p>要更新的廣告內容：<input type="text" name="ad_edit"></p>
		<input name="input" type="submit" value="更新廣告">​
		</form>
		<p>範例：
		ヽ(✿ﾟ▽ﾟ)ノ1/8-1/14新品特賣 只有7天要買要快!!!ヽ(✿ﾟ▽ﾟ)ノ  
		Σ( ° △ °)全系列商品優惠倒數計時 還有7天Σ( ° △ °)
		o(￣▽￣)ｄ新年換新衣 買衣送衣o(￣▽￣)ｄ</p>
		<% 
		request.setCharacterEncoding("utf-8");
		//執行 SQL 指令  
					if(request.getParameter("ad_edit") != null && !request.getParameter("ad_edit").equals("")){
						sql="INSERT `marquee`(`text`) VALUES ('"+request.getParameter("ad_edit")+"')";
						con.createStatement().executeUpdate(sql);
						con.close();
						out.println("更新完成");
					}
					 con.close();//結束資料庫連結
}
		%>
          