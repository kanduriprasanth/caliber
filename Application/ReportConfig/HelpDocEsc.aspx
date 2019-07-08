<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HelpDocEsc.aspx.vb" Inherits="ReportConfig.HelpDocEsc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Doc List</title>
    <script src="../JScript/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../JScript/Common2.js"></script>
      <link rel="stylesheet" href="../TRIMS.css">
       <link rel="stylesheet" href="MaskStyles.css" />
    <script language="javascript" src="MaskJScript.js"></script>
    
 <script type="text/javascript">

 function getTemplatePath()
    {
        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.split("/");

        for(var i=0;i< THrefArr.length - 2;i++)
        {
            HrefArr[i] = THrefArr[i];
        }

        for(var i=0;i< THrefArr.length - 3;i++)
        {
            HrefArr1[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        var Href1 = HrefArr1.join("/");

        return Href1 + "/HtmlFiles/Help Document.dot"; 
    }
 
    function FnCreatePdf()
    {  
        
        var HelloWorldControl1Ins = document.getElementById("CaliberOfficeViewer");

        TemPath =getTemplatePath()
        HelloWorldControl1Ins.LoadDocument(TemPath,true)
        HelloWorldControl1Ins.SetPassword("Caliber_09");
        HelloWorldControl1Ins.PreviewDocument(3);

    }
 
    setTimeout("FnCreatePdf()","500");
 </script>
 
</head>
<body ms_positioning="GridLayout">
    <form autocomplete="off" id="form1" runat="server">
        <object id="CaliberOfficeViewer" classid="clsid:EFCF98EC-07DE-4127-97C2-76F3C2C4ECD5" style="height:700px;width:930px;" ></object>
    </form>
</body>
</html>
