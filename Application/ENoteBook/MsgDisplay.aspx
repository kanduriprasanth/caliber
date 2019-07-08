<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay.aspx.vb" Inherits="ENoteBook.MsgDisplay" %>
<%@ Register TagPrefix="uc1" TagName="MessageDisplay" Src="../CaliberCommonCtrls/MessageDisplay.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>MsgDisplay</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<uc1:MessageDisplay id="MessageDisplay1" runat="server"></uc1:MessageDisplay>
		</form>
	</body>
</HTML>
