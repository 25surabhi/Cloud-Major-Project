<%-- 
    Document   : upload
    Created on : Apr 20, 2012, 6:08:51 PM
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
        <form action="uploadServlet" method="post" enctype="multipart/form-data">
            Upload File : <input type="file" name="uploadFile"/>
            <input type="submit"/>
        </form>
    </body>
</html>
