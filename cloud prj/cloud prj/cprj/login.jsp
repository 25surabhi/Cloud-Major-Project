<html>
<head>
<title>Login</title>
<script language="JavaScript">
function check()
{
var s1=document.f.userid.value
var s2=document.f.password.value

if (s1.charAt(0)==" " || s1=="")
{
window.alert (" Enter Userid  ")
}
else if (s2.charAt(0)==" " || s2=="")
{
window.alert (" Enter Password ")
}
else
{
document.f.submit()
}
}
</script>

</head>

<body>

<jsp:include page="title.jsp" flush="true" />
<form name="f" method="POST" action="checkLogin.jsp">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="680" id="AutoNumber1" height="19">
  <tr>
    <td width="168" height="19">&nbsp;</td>
    <td width="163" height="19"><b>Sign in....</b></td>
    <td width="84" height="19">&nbsp;</td>
    <td width="260" height="19">&nbsp;</td>
  </tr>
  <tr>
    <td width="168" height="44">&nbsp;</td>
    <td width="163" height="44">&nbsp;</td>
    <td width="84" height="44">User ID:</td>
    <td width="260" height="44"><input type="text" name="userid" size="20"></td>
  </tr>
  <tr>
    <td width="168" height="51">&nbsp;</td>
    <td width="163" height="51">&nbsp;</td>
    <td width="84" height="51">Password:</td>
    <td width="260" height="51">
    <input type="password" name="password" size="20"></td>
  </tr>
  <tr>
    <td width="168" height="1"></td>
    <td width="163" height="1"></td>
    <td width="84" height="1"></td>
    <td width="260" height="1">
   
      
      <input type="button" value="Sign In" name="B3" onClick="check()">&nbsp;&nbsp;&nbsp;&nbsp;
      </td>
  </tr>
  <tr>
    <td width="168" height="31">&nbsp;</td>
    <td width="163" height="31">&nbsp;</td>
    <td width="84" height="31">&nbsp;</td>
    <td width="260" height="31">
    <a style="color: #FF0000; text-decoration: underline" href="forgetPass.jsp">Forget your ID or password
    </a></td>
  </tr>
  <tr>
    <td width="168" height="26">&nbsp;</td>
    <td width="163" height="26">&nbsp;</td>
    <td width="84" height="26">&nbsp;</td>
    <td width="260" height="26">
    <a style="color: #FF0000; text-decoration: underline" href="newReg.jsp">Don't have User ID</a></td>
  </tr>
  <tr>
    <td width="168" height="19">&nbsp;</td>
    <td width="163" height="19">&nbsp;</td>
    <td width="84" height="19">&nbsp;</td>
    <td width="260" height="19">&nbsp;</td>
  </tr>
  <tr>
    <td width="168" height="65">&nbsp;</td>
    <td width="163" height="65">&nbsp;</td>
    <td width="84" height="65">&nbsp;</td>
    <td width="260" height="65">&nbsp;</td>
  </tr>
  
</table>

</form>
<p>&nbsp;</p>
<p>&nbsp;</p>

</body>

</html>