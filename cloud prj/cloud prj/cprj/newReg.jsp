<jsp:include page="title.jsp" flush="true" />
<html>
<HEAD><TITLE>User ID</TITLE>
</HEAD>
<BODY bgColor=#ffffff background="">
<%
String msg=request.getParameter("msg");
if(msg!=null){%> 
    <font size="4" color="#FF3300"><%=msg%></font>
     <%}%>



<P><table width="100%"><tr><td width="91%"><B>Fill the form:</B></td>
<td width="9%"><a href="login.jsp">Home</a></td>
</tr></table>
</P>
<FORM action=regConfirm.jsp method=post>
<TABLE height="581">
  <TBODY>
  <TR>
    <TD width="22%" height=19>&nbsp;</TD>
    <TD width="78%" height=19>&nbsp;</TD></TR>
  <TR>
    <TD width="22%" height=48><B>Name</B></TD>
    <TD width="78%" height=48><B><INPUT name=name size="20"></B></TD></TR>
  <TR>
    <TD width="22%" height=29><B>Gender</B></TD>
    <TD width="78%" height=29><SELECT size=1 name=gender> <OPTION 
        selected>male</OPTION> <OPTION>female</OPTION></SELECT></TD></TR>
  <TR>
    <TD width="22%" height=51><B>DOB </B>&nbsp;&nbsp; <B>(m\d\y)</B></TD>
    <TD width="78%" height=51><SELECT size=1 name=mm> <OPTION 
        selected>jan</OPTION> <OPTION>feb</OPTION> <OPTION>mar</OPTION> 
        <OPTION>apr</OPTION> <OPTION>may</OPTION> <OPTION>jun</OPTION> 
        <OPTION>jul</OPTION> <OPTION>aug</OPTION> <OPTION>sep</OPTION> 
        <OPTION>oct</OPTION> <OPTION>nov</OPTION> 
      <OPTION>dec</OPTION></SELECT><SELECT size=1 name=dd> <OPTION 
        selected>01</OPTION> <OPTION>02</OPTION> <OPTION>03</OPTION> 
        <OPTION>04</OPTION> <OPTION>05</OPTION> <OPTION>06</OPTION> 
        <OPTION>07</OPTION> <OPTION>08</OPTION> <OPTION>09</OPTION> 
        <OPTION>10</OPTION> <OPTION>11</OPTION> <OPTION>12</OPTION> 
        <OPTION>13</OPTION> <OPTION>14</OPTION> <OPTION>15</OPTION> 
        <OPTION>16</OPTION> <OPTION>17</OPTION> <OPTION>18</OPTION> 
        <OPTION>19</OPTION> <OPTION>20</OPTION> <OPTION>21</OPTION> 
        <OPTION>22</OPTION> <OPTION>23</OPTION> <OPTION>24</OPTION> 
        <OPTION>25</OPTION> <OPTION>26</OPTION> <OPTION>27</OPTION> 
        <OPTION>28</OPTION> <OPTION>29</OPTION> <OPTION>30</OPTION> 
        <OPTION>31</OPTION></SELECT><B><INPUT size=8 name=yy></B></TD></TR>
  <TR>
    <TD width="22%" height=34><B>Address</B></TD>
    <TD width="78%" height=34><B><INPUT name=address size="20"></B></TD></TR>
  <TR>
    <TD width="22%" height=42><B>City</B></TD>
    <TD width="78%" height=42><B><INPUT name=city size="20"></B></TD></TR>
  <TR>
    <TD width="22%" height=40><B>State</B></TD>
    <TD width="78%" height=40><B><INPUT size=10 name=state></B></TD></TR>
  <TR>
    <TD width="22%" height=38><B>User ID</B></TD>
    <TD width="78%" height=38><B><INPUT size=37 
      name=userid>&nbsp;</B></TD></TR>
  <TR>
    <TD width="22%" height=39><B>Password&nbsp;</B></TD>
    <TD width="78%" height=39><B><INPUT type=password name=password size="20"></B></TD></TR>
  <TR>
    <TD width="22%" height=38><B>Confirm Password</B></TD>
    <TD width="78%" height=38><B>
    <INPUT type=password 
    name=confirmPassword size="20"></B></TD></TR>
  <TR>
    <TD width="22%" height=43><B>Select a Question</B></TD>
    <TD width="78%" height=43><SELECT size=1 name=hintQuestion> <OPTION 
        selected>youe pet's name</OPTION> <OPTION>your native place</OPTION> 
        <OPTION>your favourite color</OPTION></SELECT></TD></TR>
  <TR>
    <TD width="22%" height=49><B>Answer</B></TD>
    <TD width="78%" height=49><B><INPUT name=hintAnswer size="20"></B></TD></TR>
  <TR>
    <TD width="22%" height=28>&nbsp;</TD>
    <TD width="78%" height=28>(<FONT style="FONT-SIZE: 1px">Re</FONT><FONT 
      size=2>Remember this answer in case you forget your password</FONT>)</TD></TR>
  <TR>
    <TD width="22%" height=27>&nbsp;</TD>
    <TD width="78%" height=27><B>&nbsp;<INPUT type=submit value=Submit name=B5></B><INPUT type=reset value=Reset name=B4></TD></TR></TBODY></TABLE>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B></P></FORM></BODY></HTML>