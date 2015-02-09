<%@ page errorPage="ErrorPage.jsp" import="java.util.*" session="true" %>
<%@ include file="dbcon.jsp" %>

<html>
<head>
<title>ABC Cloud Host</title>
</head>

<body>
<%
String userid=request.getParameter("userid");
String password=request.getParameter("password");
PreparedStatement pst= con.prepareStatement("select name from reg_user where userid=? and password=?");
pst.setString(1,userid);
pst.setString(2,password);

ResultSet rs=pst.executeQuery();
if(rs.next())
{
String uname=rs.getString("name");
	if(!session.isNew())
		{
			session.invalidate();
			session=request.getSession();
		}
		session.setAttribute("UID",userid);
		session.setAttribute("UNAME",uname);
%>
<jsp:forward page="index_single_upload.jsp" />
<%
}
else
{
%>
<jsp:forward page="wrongPass.jsp" />

<%
}
rs.close();
pst.close();
con.close();

%>
</body>

</html>