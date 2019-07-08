<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PrintConfirm.aspx.vb" Inherits="Admin.PrintConfirm"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>PrintConfirm</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
    
  </head>
  <body MS_POSITIONING="GridLayout">

   <form id="Form1" method="post" runat="server">
     <TABLE WIDTH=100% height=100% align=center BORDER=0 CELLSPACING=0 CELLPADDING=0 ID="Table1">
	<TR bgcolor=#006699 style="color:white;font-family:MS Serif;font-size:16;height:60%;">
		<TD align=center>Successfully Printed</TD>
	</TR>
	<TR bgcolor=#cccccc>
		<TD align=center>
		<input type=button class=b1 onmouseover="className='b2'" onmouseout="className='b1'" onClick="CloseWin()" value="OK" ID="Button1" NAME="Button1">
		</TD>
	</TR>
</TABLE>
    </form>
<script language=javascript>
<!--
function CloseWin()
{
//	opener.GoMain();			
	window.self.close()
}
//-->
</script>
  </body>
</html>
