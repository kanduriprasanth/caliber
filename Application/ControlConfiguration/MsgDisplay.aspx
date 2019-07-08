<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay.aspx.vb" Inherits="ControlConfiguration.MsgDisplay" %>

<%@ Register TagPrefix="uc1" TagName="MessageDisplay" Src="../CaliberCommonCtrls/MessageDisplay.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>MsgDisplay</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <uc1:MessageDisplay id="MessageDisplay1" runat="server">
        </uc1:MessageDisplay>
    </form>
</body>
</html>
