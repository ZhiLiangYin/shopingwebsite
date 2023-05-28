<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>buy </title>
    </head>
    <body>
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

       

     String sql = null;  

     String op = request.getParameter("op");  

     商品放入購物車  

     if (op.equals("add")){  
	 
         if	      

         //將所選購商品加入到購物車中  

         sql = "insert into cart(mid,pid,count) values(?,?,?)";  

         pstat = conn.prepareStatement(sql);  

         pstat.setString(1,mid);  

         pstat.setString(2,pid);  

         pstat.setInt(3,1);    

         pstat.executeUpdate();  

         pstat.close();  

           

         //關閉數據庫連接  

        conn.close();  

           

         //重定向到購物車頁面  

         response.sendRedirect("cart.jsp");  

     }  

       

     //更改商品的數量  

     if (op.equals("update")){  

         int pid = Integer.parseInt(request.getParameter("pid"));  

         int num = Integer.parseInt(request.getParameter("num"));  

         double price=Double.parseDouble(request.getParameter("price"));  

         sql = "update cart set amount";  

         pstat = conn.prepareStatement(sql);  

        
		

         pstat.executeUpdate();  

         pstat.close();  

          

         //關閉數據庫連接  

         conn.close();  

           

         //重定向到購物車頁面  

         response.sendRedirect("cart.jsp");  

    }     

       

     //將商品退回到商品架(將商品從購物車中刪除)  

    if (op.equals("del")){  

        int pid = Integer.parseInt(request.getParameter("pid"));  

         sql = "delete from cart where pid=?";  

         pstat = conn.prepareStatement(sql);  

         pstat.setInt(1,pid);  

        pstat.executeUpdate();  

         pstat.close();    

           

        //關閉數據庫連接  

        conn.close();  

          

         //重定向到購物車頁面  

        response.sendRedirect("cart.jsp");  

     }  

       

     
     }  

%> 
    </body>
</html>