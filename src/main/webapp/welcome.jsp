<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 11/24/2022
  Time: 10:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <%
        response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //HTTP 1.1

        response.setHeader("Pragma", "no-cache"); //HTTP 1.0

        response.setHeader("Expires", "0"); //Proxy Server

        response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");

        if(session.getAttribute("uname") == null)
        {
            response.sendRedirect("index.jsp");
        }

    %>
    Welcome ${uname}

    <a href="videos.jsp">Videos</a>

    <form action="Logout">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
