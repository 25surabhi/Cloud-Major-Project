<jsp:include page="title.jsp" flush="true" />
<%@ page errorPage="ErrorPage.jsp" %>


<HTML>
<HEAD>
    <TITLE>Login</TITLE>
    </HEAD>
<BODY>



<form method="POST" action="doforgetPass.jsp">
<p align="left">
<b> <a href="login.jsp">Back</a></b></p>
<center>
<table border="0" cellpadding="0" cellspacing="5" style="border-collapse: collapse" bordercolor="#111111" width="62%" id="AutoNumber1">
  <tr>
    <td width="39%">
    <p align="right"><font face="Times New Roman" size="4" color="#008000">
    Enter User ID <b>:&nbsp; </b> </font></td>
    <td width="83%"><b><font face="Times New Roman" size="4" color="#FF3300"> 
    <Input type=text name=userId size="23"></font></b></td>
  </tr>
  <tr>
          <td width="44%" align="right"><font face="Times New Roman" size="4" color="#008000">
          Hint Question :</font></td>
          <td width="74%"><SELECT size=1 name=hintQ> <OPTION 
        selected>youe pet's name</OPTION> <OPTION>your native place</OPTION> 
        <OPTION>your favourite color</OPTION></SELECT></td>
        </tr>
  <tr>
          <td width="44%" align="right"><font face="Times New Roman" size="4" color="#008000">
          Hint Answer :</font></td>
          <td width="74%"><font face="Times New Roman" size="4" color="#008000">
          <input name="hintA" size="39"></font></td>
        </tr>
  <tr>
    <td width="39%">&nbsp;</td>
    <td width="83%">&nbsp;</td>
  </tr>
  <tr>
    <td width="54%">
    <p align="left">&nbsp;</td>
    <td width="68%"><font color="#6600CC">
    <input type="submit" value="Submit" name="Submit" style="color: #9900FF; float:left">
    <input type="reset" value="Reset" name="Reset" style="color: #9900FF"></font></td>
  </tr>
  </table>
<center>
<p></p>
</form>
</BODY>
</HTML>&nbsp;