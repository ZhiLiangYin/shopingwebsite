<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<% 
out.print("<script>alert('登出成功！');location.href='login.jsp'</script>");
session.removeAttribute("name");
%>