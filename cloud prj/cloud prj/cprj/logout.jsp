<jsp:include page="title.jsp" flush="true" />
<html>

<head>
<title>logout</title>
</head>

<body>
<%
session.invalidate();
session=null;
%>
<p align="center"><font size="5">Logout Sussecfully </font></p>
<p align="center"><font size="5"><a href="login.jsp">Login Again </a></font></p>
</body>

</html>