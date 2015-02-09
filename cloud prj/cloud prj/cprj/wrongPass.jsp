<jsp:include page="title.jsp" flush="true" />
<html >

<head>
<title>Login</title>
</head>
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

<body>

<form method="POST" action="checkLogin.jsp">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="684" id="AutoNumber1" height="195">
  <tr>
    <td width="331" height="32"><font color="#FF0000">Sorry you have entered 
    wrong password or ID</font></td>
    <td width="4" height="32">&nbsp;</td>
    <td width="104" height="32">&nbsp;</td>
    <td width="240" height="32">&nbsp;</td>
  </tr>
  <tr>
    <td width="331" height="44"><b>Try Again..</b></td>
    <td width="4" height="44">&nbsp;</td>
    <td width="104" height="44">User ID:</td>
    <td width="240" height="44"><input type="text" name="userid" size="20"></td>
  </tr>
  <tr>
    <td width="331" height="51">&nbsp;</td>
    <td width="4" height="51">&nbsp;</td>
    <td width="104" height="51">Password:</td>
    <td width="240" height="51">
    <input type="password" name="password" size="20"></td>
  </tr>
  <tr>
    <td width="331" height="1"></td>
    <td width="4" height="1"></td>
    <td width="104" height="1"></td>
    <td width="240" height="1">
  <p>
      <input type="button" value="Sign In" name="B3" onClick="check()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </p>
     

    <p>&nbsp;</td>
  </tr>
  <tr>
    <td width="331" height="46">&nbsp;</td>
    <td width="4" height="46">&nbsp;</td>
    <td width="104" height="46">&nbsp;</td>
    <td width="240" height="46">
    <a style="text-decoration: underline" href="forgetPass.jsp">Forget your ID or password
    </a></td>
  </tr>
  <tr>
    <td width="331" height="26">&nbsp;</td>
    <td width="4" height="26">&nbsp;</td>
    <td width="104" height="26">&nbsp;</td>
    <td width="240" height="26">
    <a style="text-decoration: underline" href="newReg.jsp">Don't have User ID</a></td>
  </tr>
  <tr>
    <td width="331" height="19">&nbsp;</td>
    <td width="4" height="19">&nbsp;</td>
    <td width="104" height="19">&nbsp;</td>
    <td width="240" height="19">&nbsp;</td>
  </tr>
  <tr>
    <td width="331" height="65">&nbsp;</td>
    <td width="4" height="65">&nbsp;</td>
    <td width="104" height="65">&nbsp;</td>
    <td width="240" height="65">&nbsp;</td>
  </tr>
  
</table>
    </form>

</body>

</html>