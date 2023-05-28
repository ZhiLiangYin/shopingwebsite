<%@ page import = "java.sql.*, java.util.*,java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/cart.css">
</head>
<body>
    <header>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
        <div class="brand-area">
            <a class="brand-logo"><img class="brand-image" src="image/logo.png" width="150" height="35"  /></a>
            <div class="cart">
              <a href="cart.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
              </svg></a>
            </div>
        </div>
       
        <div class="navbar">
      <a class="active" href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
      <div class="dropdown">
        <button class="dropbtn"><i class="fa fa-fw fa-search"></i>商品快搜
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
          <%
		try {
		//載入資料庫驅動程式 
			Class.forName("com.mysql.jdbc.Driver");
			try {
		//建立連線 	
				String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
				String sql="";
				Connection con=DriverManager.getConnection(url,"root","up654xu;6");
				if(con.isClosed())
				   out.println("連線建立失敗");
				else {
		//選擇資料庫   
						sql="use np";
						con.createStatement().execute(sql);
		//執行 SQL 指令
						sql = "SELECT DISTINCT `name`,`type` FROM `product` ORDER BY `type` ";
						ResultSet rs=  con.createStatement().executeQuery(sql);
						while(rs.next()){
							String str =rs.getString(1);
							String num =rs.getString(2);
							out.print("<a href='good.jsp?ptype="+num+"'>"+str+"</a>&nbsp;");
						}
					}
				}
			catch (SQLException sExec) {
				   out.println("SQL錯誤"+sExec.toString());
			}
		}
		catch (ClassNotFoundException err) {
		   out.println("class錯誤"+err.toString());
		}
		%>
        </div>
      </div>
      <a href="shop.jsp">商店</a>
      <a href="aboutus.jsp">關於我們</a>
      <a href="policy.jsp">政策</a>
      <div class="nav-right"><a href="contact.jsp"><i class="fa fa-fw fa-envelope"></i> 聯絡我們</a>
      <%
		try {
		//載入資料庫驅動程式 
			Class.forName("com.mysql.jdbc.Driver");
			try {
		//建立連線 	
				String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
				String sql="";
				Connection con=DriverManager.getConnection(url,"root","up654xu;6");
				if(con.isClosed())
				   out.println("連線建立失敗");
				else {
		//選擇資料庫   
					   sql="use np";
					   con.createStatement().execute(sql);
		//執行 SQL 指令	          
						String name = "";
						if(session.getAttribute("name")!=null ){  //session讓他變成字串
							name = session.getAttribute("name").toString();
							out.print("<a href='member.jsp'><i class='fa fa-fw fa-user'></i>"+name+"</a><a href='logout.jsp'><i class='fa fa-fw fa-user'></i>登出</a>");
							con.close();
						}
						else{
							out.print("<script>alert('請先登入，才能購物！');location.href='login.jsp'</script>");
							con.close();
						}
					}
				}
			catch (SQLException sExec) {
				   out.println("SQL錯誤"+sExec.toString());
			}
		}
		catch (ClassNotFoundException err) {
		   out.println("class錯誤"+err.toString());
		}	
		%>
		</div>
      </div>
        </header>
		
		<%
		String umid ="";
		if(session.getAttribute("mid")!=null){
			umid = session.getAttribute("mid").toString();
		
			
		String toDo = "";
		if(request.getParameter("toDo")!=null && !request.getParameter("toDo").equals("")){//是否update or delete by mid & pid & amount
			toDo=request.getParameter("toDo");
		try {
		//載入資料庫驅動程式 
			Class.forName("com.mysql.jdbc.Driver");
			try {
		//建立連線 	
				String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
				String sql="";
				Connection con=DriverManager.getConnection(url,"root","up654xu;6");
				if(con.isClosed())
				   out.println("連線建立失敗");
				else {
		//選擇資料庫   
					   sql="use np";
					   con.createStatement().execute(sql);
		//執行 SQL 指令	          
						if(toDo.equals("update")){
							sql="UPDATE cart SET amount="+request.getParameter("amount")+" WHERE mid="+umid+" AND pid="+request.getParameter("pid");
						}
						else //if (toDo.equals("delete"))
						{
							sql="DELETE FROM cart WHERE mid="+umid+" AND pid="+request.getParameter("pid");
							
						}
						int rs=  con.createStatement().executeUpdate(sql);
					}
			}
			catch (SQLException sExec) {
				   out.println("SQL錯誤"+sExec.toString());
			}
		}
		catch (ClassNotFoundException err) {
		   out.println("class錯誤"+err.toString());
		}	
		}
		}
		%>
		
        <div class="shop"><div class="title">購買清單</div></div>
		
		<form method="POST">
		<input type="hidden" name="pid" value=0 />
		<input type="hidden" name="toDo" value="update" />
		<input type="hidden" name="amount" value=0 />
		
		<table border=1 style="text-align: center">
		<tr><th width=350><div class="goods">商品</div></th><th><div class="goods">尺寸</div></th><th><div class="goods">顏色</div></th><th><div class="price">單價</div></th><th width=150><div class="number">數量</div></th><th><div class="subtotal">總金額</div></th><th><div class="goods">庫存</div></th><th><div class="goods">上架狀態</div></th><th><div class="delete">操作</div></th></tr>
        <!--商品内容-->
		
		<div>
		<%
		try {
		//載入資料庫驅動程式 
			Class.forName("com.mysql.jdbc.Driver");
			try {
		//建立連線 	
				String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
				String sql="";
				Connection con=DriverManager.getConnection(url,"root","up654xu;6");
				if(con.isClosed())
				   out.println("連線建立失敗");
				else {
		//選擇資料庫   
					   sql="use np";
					   con.createStatement().execute(sql);
		//執行 SQL 指令	          
						
						sql="SELECT pid,price,amount,total,name,size,color,count,status FROM cart_view WHERE mid="+umid+" ORDER by pid";
						//sql="SELECT * FROM cart_view WHERE mid="+umid+" AND pid=86";
						ResultSet rs=  con.createStatement().executeQuery(sql);
						//out.println("<br><br>pid,price價格,amount數量,total總金額,date日期,name品名,type類型,size尺寸,color顏色,count庫存,status上架狀態<br>");
						String db_pid="";
						String db_price="";
						String db_amount="";//數量
						String db_total="";//總金額
						String db_name="";//品名
						String db_size="";
						String db_color="";
						String db_count="";//庫存
						String db_status="";//上架狀態
						while(rs.next()){
							db_pid=rs.getString(1);
							db_price=rs.getString(2);
							db_amount=rs.getString(3);//數量
							db_total=rs.getString(4);//總金額
							db_name=rs.getString(5);//品名
							db_size=rs.getString(6);
							db_color=rs.getString(7);
							db_count=rs.getString(8);//庫存
							db_status=rs.getString(9);//上架狀態
							if (db_status.equals("on"))
								db_status="上架";
							else
								db_status="下架";

							%>							
            <TR><TD style="text-align: left"><%=db_name%></TD>
			<TD><%=db_size%></TD>
			<TD><%=db_color%></TD>
            <TD style="text-align: right"><%=db_price%></TD>
			<TD style="text-align:center"><div class="number">
                <input type="submit"class="number-button" value="-" onclick="if (parseInt(this.form.amount<%=db_pid%>.value)>1) {this.form.amount<%=db_pid%>.value--;this.form.amount.value=this.form.amount<%=db_pid%>.value;this.form.toDo.value='update';this.form.pid.value=<%=db_pid%>} else return false" /><br>
                <input type="text" value=<%=db_amount%> class="text" id="text" name="amount<%=db_pid%>" readonly='readonly' /><br>
                <input type="submit"class="number-button" value="+" onclick="if (parseInt(this.form.amount<%=db_pid%>.value)<parseInt(this.form.count<%=db_pid%>.value)){this.form.amount<%=db_pid%>.value++;this.form.amount.value=this.form.amount<%=db_pid%>.value;this.form.toDo.value='update';this.form.pid.value=<%=db_pid%>} else return false"/>
            </div></TD>
            <TD><%=db_total%></TD>
			<TD><%=db_count%><input type="hidden" value=<%=db_count%> name="count<%=db_pid%>" /></TD>
			<TD><%=db_status%></TD>
            <TD><button type="submit" class="delete-button" onclick="this.form.toDo.value='delete';this.form.pid.value=<%=db_pid%>">刪除</button></TD>
            </TR>
			<%
						}
						
						
					}
				}
			catch (SQLException sExec) {
				   out.println("SQL錯誤"+sExec.toString());
			}
		}
		catch (ClassNotFoundException err) {
		   out.println("class錯誤"+err.toString());
		}	
		%>
        
            

			
			</table>
        </div>
        <a href="checkout.jsp"><input type="button" class="other-button"value="結帳"></a>
        <a href="shop.jsp"><input type="button" class="other-button"value="繼續購物"></a>
			</form>
</body>
</html>