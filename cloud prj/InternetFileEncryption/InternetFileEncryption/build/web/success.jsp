<%-- 
    Document   : success
    Created on : Apr 20, 2012, 6:54:55 PM
    Author     : Nitin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Message</h1>
        <%=request.getAttribute("message")%>

        <a href="index.jsp">Back To Home</a>
    </body>
</html>
