<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay.aspx.vb" Inherits="SAPBATSTS.MsgDisplay" %>

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
<script language= "javascript">

function uploadstatsap()
{
debugger
    PopUpWidth=400
    PopUpHeight=250
    PopUpLeftTopY = 0
    PopUpLeftTopX = 0
    var pageURL = "../SAPBATSTS/SAPTroubleshootpop.aspx?BaseId=" + <%=Request.QueryString("BaseID")%>
    var features = "height="+ PopUpHeight + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY + ",left=" + PopUpLeftTopX
    window.open(pageURL,'SamplingUpdation',features)
    //window.close()

}

uploadstatsap()

</script>

</html>
