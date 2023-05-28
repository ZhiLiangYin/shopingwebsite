<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<style type="text/css">
.header{
  height: 30px;
  margin:0px;
  padding:0px;
}
.left,.center{
  height: 1100px;
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
<p><a href='product_cms.jsp'>product</a></p>
<br />
<p><a href='order_cms.jsp'><b>order</b></a></p>  
<br />
<p><a href='ad_edit.jsp'>ad</a></p>  	  
</div>
<br />

	<%

try {
    Class.forName("com.mysql.jdbc.Driver");
    try {
           sql="USE `np`";//選擇資料庫 
           con.createStatement().execute(sql);
           sql="SELECT * FROM `order`"; //算出共幾筆留言
           rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
           rs.last();
           int total_content=rs.getRow();
           out.println("共"+total_content+"筆訂單<p>");
            //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
           
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
		   
           //讀取page變數
			String page_string = request.getParameter("page");
			if (page_string == null) 
				page_string = "0";          
			int current_page=Integer.valueOf(page_string);
			if(current_page==0) //若未指定page, 令current_page為1
				current_page=1;
			if(current_page!=1) 
				out.print("<a href='order_cms.jsp?page=1'>"+"第一頁</a>&nbsp;"); //&nbsp;html的空白
			if(current_page>1) 
				out.print("<a href='order_cms.jsp?page="+(current_page-1)+"'>"+"上一頁</a>&nbsp;"); //&nbsp;html的空白
			if(current_page<page_num){
				out.print("<a href='order_cms.jsp?page="+(current_page+1)+"'>"+"下一頁</a>&nbsp;"); //&nbsp;html的空白
				out.print("<a href='order_cms.jsp?page="+page_num+"'>"+"最後一頁</a>&nbsp;"); //&nbsp;html的空白
			}
			if(current_page>page_num)
				current_page=1;
			out.println("共"+page_num+"頁，目前在第"+current_page+"頁");
			out.println("<form name='f' action='order_cms.jsp' method='POST'>跳至<input type='text' size='3' name='page' value=1>頁<input type='submit' value='送出'>");
			out.println("</form><hr>");
	       //計算開始記錄位置   
	
  
		   
//Step 5: 顯示結果 
           int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT `oid`,`mid`,`name`,`tel`,`pay_way`,`pay_name`,`pay_card`,`address`,`total`,`order_date`,`ship_status` FROM `order` ORDER BY `oid` DESC LIMIT ";
           sql+=start_record+",5";

// current_page... SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT
//      current_page=1: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 0, 5
//      current_page=2: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 5, 5
//      current_page=3: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 10, 5
           rs=con.createStatement().executeQuery(sql);
//  逐筆顯示, 直到沒有資料(最多還是5筆)
           while(rs.next())
                {
                 out.println("訂單單號："+rs.getString(1)+"<br>");
                 out.println("會員編號："+rs.getString(2)+"<br>");
                 out.println("收貨人："+rs.getString(3)+"<br>");
                 out.println("電話："+rs.getString(4)+"<br>");
                 out.println("付款方式："+rs.getString(5)+"<br>");
				 if(rs.getString(5).equals("宅配")){
					out.println("刷卡人："+rs.getString(6)+"<br>");
					out.println("信用卡號："+rs.getString(7)+"<br>");
				 }
				 else{
					out.println("刷卡人：n/a<br>");
					out.println("信用卡號：n/a<br>");
				 }
				 out.println("收件地址："+rs.getString(8)+"<br>");
				 out.println("訂單金額："+rs.getString(9)+"<br>");
				 out.println("日期："+rs.getString(10)+"<br>");
				 out.println("出貨狀態："+rs.getString(11)+"<br><hr>");
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