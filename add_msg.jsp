<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<title>add</title>
</head>
<body>

<%!
String newline(String str){
	int index=0;
	while((index=str.indexOf("\n"))!=-1)
		str=str.substring(0,index)+"<br>"+str.substring(index+1);
	return str;
}



%>
<%
try {
	request.setCharacterEncoding("UTF-8");  
	String uname=request.getParameter("name");
	String msg_content=request.getParameter("content")+"";
	String ptype=request.getParameter("ptype");
	String star=request.getParameter("star");
	if(msg_content.equals("")){
		response.sendRedirect("good.jsp?ptype="+ptype+"");
		return;
	}

	msg_content= newline(msg_content);//<br>代替\n	
//載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","up654xu;6");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//選擇資料庫   
			sql="use `np`";
			con.createStatement().execute(sql);

			java.sql.Date msg_date=new java.sql.Date(System.currentTimeMillis());
//執行 SQL 指令	
			sql="INSERT `message` (`ptype`,`uname`, `msg_date`, `msg_content`,`star`) ";
			sql+="VALUES ('" + ptype + "', ";
			sql+="'"+uname+"', "; 
			sql+="'"+msg_date+"', ";
			sql+="'"+msg_content+"', ";			
			sql+="'"+star+"')";
			con.createStatement().execute(sql);
//關閉連線
			con.close();
//顯示結果 
          //直接顯示最新的資料
			response.sendRedirect("good.jsp?ptype="+ptype+"&page=1");
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
</body>
</html>
