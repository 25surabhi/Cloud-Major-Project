

<%@ page errorPage="ErrorPage.jsp" import="java.util.*" %>
<%@ include file="dbcon.jsp" %>
<%!
boolean isExist(Connection con,String userid)throws Exception
{
boolean r=false;
PreparedStatement pst=con.prepareStatement("select * from reg_user where userid=?");
pst.setString(1,userid);
ResultSet rs=pst.executeQuery();
if(rs.next())
r=true;

rs.close();
pst.close();

return r;

}
%>
<html>
<head>
<title>Registration Confirm</title>
</head>
<body>

<jsp:include page="title.jsp" flush="false" />
<% 
String mon[]={"JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC"};        
Calendar c=new GregorianCalendar();
int mm=c.get(Calendar.MONTH);
int yy=c.get(Calendar.YEAR);
int dd=c.get(Calendar.DATE);

String regDate=dd+"/"+(mm+1)+"/"+yy;

%>


<%

String userid=request.getParameter("userid");
if(isExist(con,userid))
{
String msg=null;
msg="this userid exist. Please try another";
%>
<jsp:forward page="newReg.jsp" >
<jsp:param name="msg" value="<%=msg%>" />
</jsp:forward>
<%
}
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");



String password=request.getParameter("password");
String confirmpassword=request.getParameter("confirmPassword");

String question=request.getParameter("hintQuestion");
String answer=request.getParameter("hintAnswer");


String pyear=request.getParameter("yy");
String pdate=request.getParameter("dd");
String pmonth=request.getParameter("mm");

String dob=pmonth+"-"+pdate+"-"+pyear;





         int i=0;
if(password.equals(confirmpassword))
{
                      
	PreparedStatement pst= con.prepareStatement("insert into reg_user(name,gender,dob,address,city,state,userid,password,hint_question,hint_answer,regdate) values(?,?,?,?,?,?,?,?,?,?,?)");
 	pst.setString(1,name);
	pst.setString(2,gender);                
	pst.setString(3,dob);                
	pst.setString(4,address);                
	pst.setString(5,city);                
	pst.setString(6,state);                
	pst.setString(7,userid);               
	pst.setString(8,password);               
	pst.setString(9,question);                 
	pst.setString(10,answer);
	pst.setString(11,regDate);             
            i=pst.executeUpdate();
%>

<hr>
<% if(i!=0)	{
%>
	<p><i><font face="Arial Black" size="6" color="#FF00FF">Congratulation!</font></i></p>
	<p><i><font face="Arial Black">You have registered:</font></i></p>
	<p><font face="Arial Black">Login Id:</font><font face="Arial Black" color="red"> <%=userid%></font></p>
	<p><font face="Arial Black">Password:</font><font face="Arial Black" color="red"> <%=password%></font></p>
	<hr>
	<p><i><font face="Arial Black"><a href="login.jsp">Login </a></font></i></p>

<%
	}else{
%>
	<p><i><font face="Arial Black">Sorry: Registration unsuccessfull<font></i></p>

<%
	}
}else{
	String msg="New Password & Confirm Password are different. Try Again";
%>
	<jsp:forward page="newReg.jsp" >
	<jsp:param name="msg" value="<%=msg%>" />
	</jsp:forward>
<%}%> 

</body>
</html>