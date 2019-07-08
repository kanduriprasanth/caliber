<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReportProxy.aspx.vb" Inherits="ReportConfig.ReportProxy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >

<html>
<head runat="server">
    <title>Untitled Page</title>
   <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
<script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    
    
    
    <script language =javascript >
    
    
    function fnAcpPreview(BaseId,CtrlId)
    {
        var pageURL = "../IssueLogin/EffectedDocpoup.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlId + "&AcpNamelst=" + '' + "&AcpTypelst=" + '' + "&StatusFlag=" + 2
        var PWidth=1000
        var PHeight=650
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
        SpWinObj = window.open(pageURL,'ReportPreviewPopUp',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
SpWinObj.focus();

    }
    
     function Fun_BatchSelPreview(BaseId,CtrlId,Type,IsuBaseID,ReqType,WorkItemId,FldValue)
    {
        var PWidth=800
        var PHeight=600
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        
        if(WorkItemId=='' || WorkItemId==undefined) { WorkItemId=0}

        var pageURL = "../PrsWorkFlow/BatchStatusPreview.aspx?IssuLogId="+ IsuBaseID + "&Type=" + Type + "&BaseID="+ BaseId + "&CtrlId=" + CtrlId + "&ReqType=" + ReqType + "&WorkItemId=" + WorkItemId + "&FldValue=" + FldValue
        var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();

    }
    
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:Table ID="ResTab" runat="server" CssClass="HideRow" width="50%" cellspacing="0" cellpadding="0">
             </asp:Table>
       
    </div>
    </form>
</body>
</html>
