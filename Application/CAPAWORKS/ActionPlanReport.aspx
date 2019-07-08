<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ActionPlanReport.aspx.vb" Inherits="CAPAWORKS.ActionPlanReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD  HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>Action Plan Report</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />

    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>

    <script language="vbscript" src="../JScript/MsWordScript.vbs"></script>

    <style type="text/css">
.InputFieldCss,.IFieldPreCss,.IFieldIssCss,.IFieldExeCss,.IFieldClsCss,.WorkIssuenceFieldCss,.WorkFlowFieldCss,.PlanFieldCss
{color:Blue;display:inline;font-size:11px;font-weight:normal;text-align:left;font-family:Verdana;font-style:oblique;text-indent: 0pt;
}

.MsoTableGrid
{
    mso-style-name:"Table Grid";
    mso-tstyle-rowband-size:0;
    mso-tstyle-colband-size:0;
    mso-style-priority:59;
    mso-style-unhide:no;
    border:solid windowtext 1.0pt;
    mso-border-alt:solid windowtext .5pt;
    mso-padding-alt:0in 5.4pt 0in 5.4pt;
    mso-border-insideh:.5pt solid windowtext;
    mso-border-insidev:.5pt solid windowtext;
    mso-para-margin:0in;
    mso-para-margin-bottom:.0001pt;
    mso-pagination:widow-orphan;
    font-size:11.0pt;
    font-family:"Calibri","sans-serif";
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
}
</style>

    <script language="javascript">
	<!--
	    RequestPrefix='<%=me.ClientID%>'
	//-->
    </script>

    <script language="javascript">

    function PrintTemplate()
    {
       if(document.getElementById("PrinterSelList").value == "")
        {
            alert("- Select Printer!");
            return false;
        }
      try
        {
            if(CaliberDocumentViewerIns.IsWordInstalled()==false)
            {
                //alert("MS Word Not Installed!")
                return false;
            }
        }
        catch (e)
        {
            alert("ActiveX Component Not Installed!");
            //HideMask();
            return false;
        }
        
        ShowMask();

        setTimeout("_printDocument()",1000);
    }

    var DeleteFiles = [];
    var DeleteFilesCnt =0;

    function DeleteTempDocument()
    {
        if(DeleteFiles.length > 0)
        {
            CaliberDocumentViewerIns.DeleteHTMLFiles(DeleteFiles.join("#*#"));
            DeleteFiles.length = 0;
        }
    }
     function getDocFilePath(DocFilePath) {
        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.substring(0,window.location.href.lastIndexOf(".")).split("/")
        for (var i = 0; i < THrefArr.length - 2; i++) {
            HrefArr[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        return Href + DocFilePath.replace("..", "");
    }
    function _printDocument()
    {
        if(CaliberDocumentViewerIns.IsDocumentLoaded == true)
        {
            var PrinterName = document.getElementById("PrinterSelList").value;
            CaliberDocumentViewerIns.PrintDocument1(PrinterName);
            HideMask();
            return;
        }
        var PageUrl = '../CAPAWORKS/WordFormatReport_Ajax.aspx' 
        var FileName = "IssueReport";
        CaliberDocumentViewerIns.CloseDocument();
        DeleteTempDocument()
        PageUrl += '?IsuTypeId=' + '<%=Request.QueryString("IsuTypeId") %>' + '&IsuLogID=' + '<%=Request.QueryString("IsuLogID") %>'+"&RptType=1&Type=2"+'&PreviewFlg=0';
        var indexPageOrientation=1; //1 portrait, 2 landscape
        CaliberDocumentViewerIns.ScriptCallbackObjectForErrors = OnError;

        var HeaderHtmFilePath= getDocFilePath(PageUrl + "&ReturnFlag=1");
        var BodyHtmFilePath  = getDocFilePath(PageUrl + "&ReturnFlag=2");
        var FooterHtmFilePath = getDocFilePath(PageUrl + "&ReturnFlag=3");
        
        var TempDorPath = CaliberDocumentViewerIns.GetTempPath();
        var WordHeaderHtmFilePath = TempDorPath + FileName + "_H" + ".doc";
        DeleteFiles[DeleteFilesCnt] = WordHeaderHtmFilePath;
        DeleteFilesCnt +=1;
        
        var WordBodyHtmFilePath = TempDorPath + FileName + "_B" + ".doc";
        DeleteFiles[DeleteFilesCnt] = WordHeaderHtmFilePath;
        DeleteFilesCnt +=1;

        var WordFooterHtmFilePath = TempDorPath + FileName + "_F" + ".doc";
        DeleteFiles[DeleteFilesCnt] = WordHeaderHtmFilePath;
        DeleteFilesCnt +=1;

        CaliberDocumentViewerIns.LoadWebDocument(HeaderHtmFilePath,false,WordHeaderHtmFilePath,false);
        CaliberDocumentViewerIns.LoadWebDocument(FooterHtmFilePath,false,WordFooterHtmFilePath,false);
        CaliberDocumentViewerIns.LoadWebDocument(BodyHtmFilePath,false,WordBodyHtmFilePath,false);

        var TemplatePath = getTemplatePath();
        CaliberDocumentViewerIns.LoadDocument(TemplatePath,false); // CaliberDocumentViewerIns.LoadDocument(TemplatePath,true);

        if(CaliberDocumentViewerIns.IsDocumentLoaded ==false)
        {
            alert("File Not Loaded");
            HideMask();
            return;
        }
        
        var FilePath = TempDorPath + FileName + ".doc";
        DeleteFiles[DeleteFilesCnt] = FilePath;
        DeleteFilesCnt +=1;

        CaliberDocumentViewerIns.InsertFilesInSection(WordBodyHtmFilePath,WordHeaderHtmFilePath,WordFooterHtmFilePath,indexPageOrientation,1);
        CaliberDocumentViewerIns.Save(FilePath);
        
        var PrinterName = document.getElementById("PrinterSelList").value;
        CaliberDocumentViewerIns.PrintDocument1(PrinterName)
        HideMask();
        //CaliberDocumentViewerIns.CloseDocument();
    }

    </script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <span style="display:none">
            <%
    Response.WriteFile("../DMSManagement/ActiveX.inc")
            %>
        </span>
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server" BackColor="white">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server"  Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="HideRow" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell  ColumnSpan="2" Style="background-color: White">
                            
                                <br />
                            
                                <asp:Panel ID="HeaderDiv" runat="server" 
                                    EnableViewState="False" Width="100%"  HorizontalAlign=Center >
                                </asp:Panel>
                                
                                <br />
                                
                                <asp:Panel ID="BodyDiv" runat="server"  Width="100%" EnableViewState="False"
                                 HorizontalAlign=Center >
                                </asp:Panel>
                                
                                <br />
                                
                                <asp:Panel ID="FooterDiv" runat="server"  EnableViewState="False"
                                    Width="100%"  HorizontalAlign=Center>
                                </asp:Panel>
                                
                                 <br />
                                
                            </asp:TableCell>
                        </asp:TableRow>
                     
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server"  Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table3" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell >
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Back"
                                    Width="70"></asp:Button>
                                    <input type="button" id="backBtn" runat="server" value="Back" visible="false" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Back"
                                    Width="70" onclick='javascript:window.history.back();' />
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                 <span id="PrinterOptSpan" >
                                    <select id="PrinterSelList" style="width:150px">
                                        <option value=""> [ Select ] </option>
                                    </select>
                                     <input id="Button1" type="button" value="Print" onmouseover="this.className='ButOCls'"
                                    class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="PrintTemplate()"/>
                            </span>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">

    function CloseDocument()
    {
        if(IsActiveXInstalled() == true)
        {
            if(CaliberDocumentViewerIns.IsDocumentLoaded ==true)
            {
                CaliberDocumentViewerIns.CloseControl();
            }
        }
    }

    function IsActiveXInstalled()
    {
        if(typeof(CaliberDocumentViewerIns.RedApplicationPath) == "undefined")
        {
            alert("ActiveX Not Installed");
            return false;;
        }
        return true;
    }

    function OnError(Oevent)
    {
        //$(document).progressDialog.hideDialog();
        alert(Oevent);
    }

    var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
    CaliberDocumentViewerIns.ScriptCallbackObjectForErrors = OnError;
    
    (function ($) {
        $(window).unload(function(){
            CloseDocument();
            DeleteTempDocument();
        });
    })(jQuery);

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

        return Href1 + "/HtmlFiles/Template.dot"; //HtmlFiles/Template.dot"; ///HtmlFiles/SampleTemplate.dot";
    }

    function LoadPrinters()
    {
        try
        {
            if(CaliberDocumentViewerIns.IsWordInstalled()==true)
            {
                var PrintestList = new Array();
                PrintestList = CaliberDocumentViewerIns.ReadPrinters().split("#*#");
                var PrinterSelObj = document.getElementById("PrinterSelList");
                for (var k =0;k<PrintestList.length;k++)
                {
                    var oOption = document.createElement("OPTION");
                    oOption.text= PrintestList[k];
                    oOption.value= PrintestList[k];
                    PrinterSelObj.add(oOption)
                }
            }
        }
        catch (e)
        {
            alert("ActiveX Component Not Installed!");
            return false;
        }
    }
    LoadPrinters()
   
</script>
</html>

