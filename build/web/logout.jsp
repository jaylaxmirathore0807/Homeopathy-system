<%-- 
    Document   : logout
    Created on : 20 Jan, 2018, 11:20:30 AM
    Author     : CG-DTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("main.html");
        %>
    </body>
</html>
