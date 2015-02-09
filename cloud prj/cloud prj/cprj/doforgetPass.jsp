<jsp:include page="title.jsp" flush="true" />
<%@ include file="dbcon.jsp" %>

<HTML>
<HEAD>
    <TITLE></TITLE>
</HEAD>
<BODY>


<p align="left">
<b><a href="homepage.jsp">Home </a></b></p>
<hr>

<%

String userid=request.getParameter("userId");
String hintQ=request.getParameter("hintQ");
String hintA=request.getParameter("hintA");


String pswd;
             int i=0;
                       
                PreparedStatement pst= con.prepareStatement("select password from reg_user where userid=? and hint_question=? and hint_answer=?");
                pst.setString(1,userid);
                pst.setString(2,hintQ);
                pst.setString(3,hintA);

                ResultSet rs = pst.executeQuery();
                if(rs.next())
                 {              
                    pswd=rs.getString("password");
          %>
		<p><b><font size="4" color="#008080">Your Password is : </font> 
<font size="4" color="#FF0000"><%=pswd%></font></b></p>
<p><i><font face="Arial Black"><a href="login.jsp">Login</a></font></i></p>

          <%
                 	 
				}else
				{
				%>
<p>				<b><font color="#008080" size="5">Data Mismatch </font></b> <p>
<p>Please <i><font face="Arial Black"><a href="forgetPass.jsp">try again</a></font></i></p>

				<%
				}
				rs.close();				
				pst.close();
				
	
	%>

</BODY></HTML>&nbsp;<p>&nbsp;</p>