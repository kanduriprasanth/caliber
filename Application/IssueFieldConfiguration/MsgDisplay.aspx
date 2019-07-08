<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay.aspx.vb" Inherits="IssueFieldConfiguration.MsgDisplay" %>

<%@ Register TagPrefix="uc1" TagName="MessageDisplay" Src="../CaliberCommonCtrls/MessageDisplay.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>MsgDisplay</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    
   

		<%--Added for refreshing the screen of Modification and Status change Confirmation message--%>
		<script language=javascript >	
		debugger	
		setTimeout("PageNavigate()",3000)
		
		function PageNavigate()
		{
//		  var Message="<%= Session("MessageString") %>"
//		   if ( Message.indexOf("AType=M") !=-1 || Message.indexOf("AType=C") !=-1 )
		     location.reload("../BodyHome.aspx")
		}
		</script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <uc1:MessageDisplay id="MessageDisplay1" runat="server">
        </uc1:MessageDisplay>
    </form>
</body>
</html>
