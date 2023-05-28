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
int pid=0;
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
	sql = "SELECT MAX(`pid`)  FROM `product` ";
	rs=  con.createStatement().executeQuery(sql);
	rs.next();
	pid=rs.getInt(1)+1;
   con.close();//結束資料庫連結
	
}
else{
	con.close();//結束資料庫連結
}
%>

<form action="product_addtosql.jsp" method="POST">
產品編號(限數字，值唯一)：<input type="text" name="pid" value=<%=pid%> readonly='readonly' /><br />
產品名稱(必填)：<br />

<input type="radio" name="name" value="休閒百搭牛仔褲">休閒百搭牛仔褲	
<input type="radio" name="name" value="保暖休閒褲">保暖休閒褲
<input type="radio" name="name" value="簡約抗皺親膚長袖襯衫">簡約抗皺親膚長袖襯衫
<input type="radio" name="name" value="保暖刷毛連帽T">保暖刷毛連帽T
<input type="radio" name="name" value="棉質素面短袖T恤">棉質素面短袖T恤<br />
<input type="radio" name="name" value="直筒牛仔褲">直筒牛仔褲
<input type="radio" name="name" value="彈力休閒褲">彈力休閒褲
<input type="radio" name="name" value="條紋襯衫">條紋襯衫
<input type="radio" name="name" value="運動空氣層連帽T">運動空氣層連帽T
<input type="radio" name="name" value="字母圖案T恤">字母圖案T恤<br />
產品價格(限數字，必填)：<input type="text" name="price" /><br />
尺寸(必填)：
<input type="radio" name="size" value="S">S	
<input type="radio" name="size" value="M">M
<input type="radio" name="size" value="L">L
<input type="radio" name="size" value="XL">XL<br />
顏色(中英文皆可，必填)：<input type="text" name="color" /><br />
數量(限數字，必填)：<input type="text" name="count" /><br />

<input type="submit" name="b1" value="新增" />
<input type="reset" name="b1" value="重設">
</form>



