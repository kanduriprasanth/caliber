<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReportViewer.aspx.vb" Inherits="ReportConfig.ReportViewer" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>WorkitemReport</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
     <script src="../JScript/jquery.min.js" type="text/javascript"></script>

    <script type="text/javascript" src="../JScript/Common2.js"></script>

    <link rel="stylesheet" href="../TRIMS.css">
    <script language=javascript>
     function fnOpenPage(UrlVal) {
            // alert(UrlVal)

            
            
             var pageURL =UrlVal
                   
                    
                      var winHeight = 550
                      var winWidth = (screen.availWidth / 100) * 90;
                      var SpWinObj = window.open(pageURL, 'ReportPreviewPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
                      if (SpWinObj.opener == null) SpWinObj.opener = self;
                      SpWinObj.focus();

        }
           

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Literal ID="FrameLtrl" runat="server" ></asp:Literal>
    </div>
    </form>
</body>
</html>
