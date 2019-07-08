<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay1.aspx.vb" Inherits="AuditResponse.MsgDisplay1" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>MsgDisplay</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
<body>
   <form id="f1" name="f1" method="post" runat="server">
       <br />
<%--       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />--%>
   
<TABLE class="maintable" id="Table1" cellSpacing="0" style="HEIGHT:150px; width:520px"
	align="center">
	<tr class="MainHead">
		<td align="left" colSpan="4">&nbsp;<asp:label id="Label1" runat="server"  Font-Names="Verdana" Font-Size="15px" ForeColor="black">&nbsp;Caliber QAMS</asp:label>&nbsp;<asp:label id="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="12px"
				ForeColor="black"></asp:label></td>
	</tr>
	<TR class="MainTD"   >
		<TD align="left" width="16%" >&nbsp;
			<asp:image id="img1" BorderStyle="None" Runat="server"></asp:image></TD>
		<TD align="left" width="100%"><asp:label id="lblMessage" Font-Size="X-Small"  runat="server"></asp:label>&nbsp;&nbsp;</TD>
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
