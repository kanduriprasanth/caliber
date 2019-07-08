<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay1.aspx.vb" Inherits="SelfInspection.MsgDisplay1" %>
<LINK href="../TRIMS.CSS" rel="stylesheet">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MsgDisplay</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

   

</head>
<body>
   <form id="f1" name="f1" method="post" runat="server">
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
   
<TABLE class="maintable" id="Table1" cellSpacing="0" style="HEIGHT:150px; width:520px"
	align="center">
	<tr class="MainHead">
		<td align="left" colSpan="4">&nbsp;<asp:label id="Label1" runat="server"  Font-Names="Verdana" Font-Size="15px" ForeColor="black">&nbsp;Caliber BRM</asp:label>&nbsp;<asp:label id="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="12px"
				ForeColor="black"></asp:label></td>
	</tr>
	<TR class="MainTD"   >
		<TD align="left" width="16%" >&nbsp;
			<asp:image id="img1" BorderStyle="None" Runat="server"></asp:image></TD>
		<TD align="left" width="100%"><asp:label id="lblMessage" Font-Size="Small"   runat="server"></asp:label>&nbsp;&nbsp;</TD>
	</TR>
	<tr height="25"  class="MainFoot">
		<TD class="maintd1" colSpan="4">
			<div align="left">
				<asp:Button id="Button2" runat="server" Text="Home" Width="55px" CssClass="butcls"></asp:Button>&nbsp;
				<asp:Button id="Button1" runat="server" Text="Next" Width="55px" CssClass="butcls"></asp:Button>&nbsp;
				</div>
				
		</TD>
	</tr>
</TABLE>
</form> 
</body>
</html>
