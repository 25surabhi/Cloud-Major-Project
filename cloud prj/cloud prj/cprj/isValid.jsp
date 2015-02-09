<%
String uname=(String)session.getAttribute("UNAME");
if(uname==null)
{
%>
<jsp:forward page="invalidCall.jsp" />
<%}	%>