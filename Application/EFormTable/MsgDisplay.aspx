<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay.aspx.vb" Inherits="EFormTable.MsgDisplay" %>
<%@ Register TagPrefix="uc1" TagName="MessageDisplay" Src="../CaliberCommonCtrls/MessageDisplay.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>


		<title>MsgDisplay</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
	
	<script language="javascript">		
		
		setTimeout("PageNavigate()",3000)
		
		function PageNavigate()
		{
//		  var Message="<%= Session("MessageString") %>"
//		   if ( Message.indexOf("AType=M") !=-1 || Message.indexOf("AType=C") !=-1 )
		     location.reload("../BodyHome.aspx")
		}
		</script>	
		
			
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<uc1:MessageDisplay id="MessageDisplay1" runat="server"></uc1:MessageDisplay>
		</form>
	</body>
</HTML>
