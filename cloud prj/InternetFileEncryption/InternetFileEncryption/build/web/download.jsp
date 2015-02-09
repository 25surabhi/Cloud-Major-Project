<%-- 
    Document   : download
    Created on : Apr 20, 2012, 6:12:59 PM
    Author     : Nitin
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello User!</h1>

        <%
                    File f = new File(getServletContext().getRealPath("/uploads"));
                    System.out.println(f);
                    if (f.isDirectory()) {
                        System.out.println("Found Uploads Directory");
                    }
                    String filenames[] = f.list();
                    for (String s : filenames) {
                        if (s.contains("_encrypt")) {
                            String filename = s.substring(0, s.indexOf("_encrypt"));
                            String ext = s.substring(s.lastIndexOf("."));
                            filename += ext;
        %>
        <a href="downloadServlet?filename=<%=filename%>">Download <%=filename%></a>
        <br/>
        <%
                        }
                    }
        %>
    </body>
</html>
