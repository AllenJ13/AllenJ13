<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
TOMCAT -9999;
<br/>
sessionID:<%=session.getId()%>
<br/>
<%
    Object loginUser = session.getAttribute("loginUser");
    if (loginUser != null && loginUser.toString().length() > 0) {
        out.println("session 有值,loginUser=" + loginUser);
    } else {
        session.setAttribute("loginUser", "XUEXI");
        out.println("session 没有值");
    }
%>
</body>
</html>
