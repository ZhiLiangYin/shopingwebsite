<%@ page import = "java.sql.*, java.util.*"%>
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
				Connection con=DriverManager.getConnection(url,"root","1234");
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
				Connection con=DriverManager.getConnection(url,"root","1234");
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
							out.print("<a href='login.jsp'><i class='fa fa-fw fa-user'></i>登入</a>");
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
        <div class="shop">
            <div class="title">購買清單</div>
            <div class="goods">商品</div>
            <div class="price">單價</div>
            <div class="number">數量</div>
            <div class="subtotal">總金額</div>
            <div class="delete">操作</div>
        </div>
        <!--商品内容-->
		<div class="shop2" id="shop2">
		<%  
		
        try {
//Step 1: 載入資料庫驅動程式 
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
//Step 2: 建立連線 
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   
				
		if(con.isClosed())
                    out.println("連線建立失敗");
                else
                    {	
//Step 3: 選擇資料庫	
                    con.createStatement().execute("USE `np`");
//Step 4: 執行 SQL 指令 
                    String sql = "SELECT *, count*amount as total FROM product as a INNER JOIN cart as b ON a.pid=b.pid";
                    ResultSet tmp =  con.createStatement().executeQuery(sql);					
//Step 5: 顯示結果                    
                
					 while(tmp.next()){
                            {								
                            out.print(tmp.getString(2));
						    out.print(tmp.getString(4));
							out.println("<form method='POST' action='delete-cart.jsp' > <input type='button' onclick='if (this.form.c.value>0) this.form.c.value--' class='bton' value='-'>");
							out.print(" <input type='text' value=1 class='itemcount' id='itemcount' name='c'>");
							out.println("<input type='button' onclick='this.form.c.value++' class='bton' value='+'>");
							
							out.print(tmp.getString(8));							
							out.println("<div class='delete'><button class='delete-button'>刪除</button></div></form>"); 
							}
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
			%>
        </div>
        <a href="checkout.html"><input type="button" class="other-button"value="結帳"></a>
        <a href="shop.html"><input type="button" class="other-button"value="繼續購物"></a>
</body>
</html>