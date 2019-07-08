<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AprvdVendrList.aspx.vb" Inherits="ApprovedVendor.AprvdVendrList" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx" %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx" %>

<%@ Register TagPrefix="uc11" TagName="PrintControl" Src="../ApprovedVendor/PrintControl.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Approved Vendor List</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
				
        <script language="javascript" src="../JScript/jquery.min.js"></script>
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language=javascript>
		    function FnOpenAUdit(AvrId)
		    {
		        var pageURL = "AvrAudit.aspx?AvrId=" + AvrId;
                var features = "height= 450,width= 850,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
                var SpWinObj = window.open(pageURL,'BRMPopup1',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
		    }
		    
		    function FnOpenRgsAudit(AulId,BaseId)
		    {
		        var pageURL = "../AuditReports/WrdFrmatRpt.aspx?RgsAId=" + AulId + "&RgsBId=" + BaseId ;
                var features = "height= 1000,width= 1000,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
                var SpWinObj = window.open(pageURL,'BRMPopup2',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
		    }
		</script>
	</HEAD>
    <body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <span style="display: none;">
            <%
                Response.WriteFile("../DMSManagement/ActiveX.inc")
            %>
        </span>
       <asp:Table ID="Table1" runat="server" HorizontalAlign="center" Width="750px" BorderWidth="3"
            CellSpacing="0" CellPadding="0">
           <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="HeaderTab" runat="server" HorizontalAlign="center" BorderWidth="0"
                        CellPadding="0" CellSpacing="1" Width="1000px">
                        <asp:TableRow>
                            <asp:TableCell style="font-family:Verdana" HorizontalAlign="Center">
                                <uc1:header id="Header1" runat="server">
                                </uc1:header>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell style="font-family:Verdana" ID="HeadingTd"  Font-Size="Medium" HorizontalAlign="Center">
                                
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="Table2" runat="server" HorizontalAlign="center" class="MsoTableGrid" BorderWidth=1 cellspacing=0 cellpadding=0
                                    style="border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
                                    mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt; width: 1000px;">
                        <asp:TableRow>
                        <asp:TableCell style="border:solid windowtext 1.0pt;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">Search By</asp:TableCell>
                        <asp:TableCell style="border:solid windowtext 1.0pt;border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">
                            <asp:RadioButtonList ID="SrchRD" CssClass="HideRow" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">Vendor Qualification Number</asp:ListItem>
                                <asp:ListItem Value="2">Business Associate</asp:ListItem>
                                <asp:ListItem Value="4">Item Type</asp:ListItem>
                                <asp:ListItem Value="3">Approved By</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:DropDownList ID="SrchDDL" runat="server" Width="200px">
                            <asp:ListItem Value="1">Vendor Qualification Number</asp:ListItem>
                                <asp:ListItem Value="2">Vendor Name</asp:ListItem>
                              <%--  <asp:ListItem Value="4">Item Type</asp:ListItem>--%>
                                <%--<asp:ListItem Value="3">Approved By</asp:ListItem>--%>
                            </asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell style="border:solid windowtext 1.0pt;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">Search Text</asp:TableCell>
                        <asp:TableCell style="border:solid windowtext 1.0pt;border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman" ID="SrchTxtID" ColumnSpan="4">
                          <asp:TextBox ID="SrchTxt" runat="server" Width="200px" CssClass="TxtCls" Text="%" MaxLength="25"></asp:TextBox>
                        </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell style="border:solid windowtext 1.0pt;border-top:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell style="border:solid windowtext 1.0pt;border-top:none;border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">
                                <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell style="border:solid windowtext 1.0pt;border-top:none;border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell style="border:solid windowtext 1.0pt;border-top:none;border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">
                                <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px">20</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell style="border:solid windowtext 1.0pt;border-top:none;border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell style="border:solid windowtext 1.0pt;border-top:none;border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                                    MaxLength="5">1</asp:TextBox>
                            </asp:TableCell>
                               <asp:TableCell style="border:solid windowtext 1.0pt;border-top:none;border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;padding:0in 5.4pt 0in 5.4pt;font-size:9.0pt;font-family:Verdana,sans-serif;mso-fareast-font-family:Times New Roman;mso-bidi-font-family:Times New Roman">
                               <asp:Button ID="DispBtn" runat="server" Text="Display" onMouseOver="this.className='ButOCls'" CssClass="ButCls" onMouseOut="this.className='ButCls'" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID = "DisTable1Td" ColumnSpan="7">
                                <asp:Table ID="DisTable1" runat="server" HorizontalAlign="center" class="MsoTableGrid" BorderWidth=1 cellspacing=0 cellpadding=0
                                    style="border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
                                    mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt; width:1000px;">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow CssClass="HideRow">
                <asp:TableCell>
                    <%--<object id="CaliberOfficeViewer" classid="clsid:EFCF98EC-07DE-4127-97C2-76F3C2C4ECD5" style="height:600px;width:100%;"></object>--%>
                    
<%--                    <%
                        Response.WriteFile("../DMSManagement/ActiveX.inc")
                    %>--%>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="FooterTab" runat="server" HorizontalAlign="center" CssClass="HideRow"
                        BorderWidth="0" CellPadding="0" CellSpacing="1" Width="1000px">
                        <asp:TableRow>
                            <asp:TableCell  style="font-family:Verdana">Printed By: <%=PrintedBy %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </asp:TableCell>
                            <asp:TableCell  HorizontalAlign="left" style="font-family:Verdana">Printed On: <%=PrintedOn %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </asp:TableCell>
                            <asp:TableCell style="font-family:Verdana" HorizontalAlign="Right">
                        Page: <span style="mso-field-code:  '  PAGE ' "><span style='mso-no-proof:yes'>1</span></span> of <span style="mso-field-code: ' NUMPAGES ' "><span style='mso-no-proof:yes'>1</span></span>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table3" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="BtnTr">
                            <asp:TableCell HorizontalAlign="Center">
<%--                             <span id="PrinterOptSpan">
                                    <select id="PrinterSelList" style="width:150px">
                                        <option value=""> [ Select ] </option>
                                    </select>
                                    <input id="BtnPrint" type="button" value="Print" onmouseover="this.className='ButOCls'"
                                    class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="FnCreateHtmlToPdf();PrintDocument()"/>
                            </span>--%>
                                <asp:TableCell ID="PrintTD" HorizontalAlign="Right" Width="40%">
                                    <span id="PrinterOptSpan">
                                        <input id="Button1" type="button" value="Print" onmouseover="this.className='ButOCls'"
                                            class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="_printDocument()" />
                                    </span>
                                </asp:TableCell>
                                <asp:TableCell ID="PrintCtrlTD" HorizontalAlign="Right" Width="40%">
                                    <uc11:PrintControl ID="PrintCtrl" runat="server"></uc11:PrintControl>
                                </asp:TableCell>     
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="HideRow" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
    <script language="javascript">
	
	
	function FnCreateHtmlToPdf()
    {
        var HeaderData="";
        var FooterData="";
        var BodyData="";
        var FilePathArr = [];
    
        var HelloWorldControl1Ins = document.getElementById("CaliberOfficeViewer");

        BodyData=document.getElementById("DisTable1").outerHTML;
        HeaderData=document.getElementById("HeaderTab").outerHTML;
        FooterData=document.getElementById("FooterTab").outerHTML;
        
        HeaderData=WordFormatCorrections(HeaderData);
        
        var BodyFilePath=HelloWorldControl1Ins.GenerateHtmlFile(BodyData,"BodyData");
        var HeaderFilePath=HelloWorldControl1Ins.GenerateHtmlFile(HeaderData,"HeaderData");
        var FooterFilePath=HelloWorldControl1Ins.GenerateHtmlFile(FooterData,"FooterData");
        
        FilePathArr[i]= HeaderFilePath + "," + BodyFilePath + "," + FooterFilePath;
          
        var FilePath1 = GenerateData(FilePathArr[i]);
    }
    
    function WordFormatCorrections(WordContent)
    {
        WordContent = WordContent.replace(/<(\w[^>]*) src="\s*([^/IMAGES]*)([^>]*)/gi, "<$1 src=\""+window.location.href.substring(0, window.location.href.indexOf(window.location.pathname)) + '/' + window.location.pathname.substring(1,window.location.pathname.substring(1).indexOf("/")+1) +"$3") ;
        return WordContent;
    }
    
    function GenerateData(FilePath) {
    
            var HelloWorldControl1Ins = document.getElementById("CaliberOfficeViewer");
            var WrdFilePathArr = new Array;
            var FilePathArr = [];
            var FileSubPathArr = [];
            var PDFFilePathArr = [];
            
            var FileSubPath="";
            FilePathArr=FilePath.split("#*#");
            var TempPath = HelloWorldControl1Ins.GetTempPath();
            var TemplatePath = getTemplatePath(FilePath);
           
            HelloWorldControl1Ins.LoadDocument(TemplatePath);
            var DocTPath = TempPath + "\SampleDoc.doc"
            
            for(var i=0; i<FilePathArr.length; i++)
            {
                var FileSubPathArr = [];
                var FileSubPath="";
//              var PdfFilePath = TempPath + "\sdfDocLogin" + i + ".pdf";
//              var WrdFilePath = TempPath + "\efdfDocLogin" + i + ".doc";
                var PdfFilePath = TempPath + "\Document" + i + ".pdf";
                var WrdFilePath = TempPath + "\Document" + i + ".doc";
                PDFFilePathArr[i] = PdfFilePath;
 
                FileSubPath=FilePathArr[i];
                FileSubPathArr=FileSubPath.split(",");
                
                HelloWorldControl1Ins.InsertFilesInSection(FileSubPathArr[1],FileSubPathArr[0],FileSubPathArr[2],2,1);
                HelloWorldControl1Ins.ExportDocumentToPDF(PdfFilePath);
                HelloWorldControl1Ins.SaveDocument(WrdFilePath);
                                
                HelloWorldControl1Ins.SetPassword("Caliber_09");
                HelloWorldControl1Ins.PreviewDocument(3);
                
//                var PdfFilePath = HelloWorldControl1Ins.GetTempPath() + "DocLogin.pdf";
                var PdfFilePath = HelloWorldControl1Ins.GetTempPath() + "ApprovedVendors.pdf";
                HelloWorldControl1Ins.ExportDocumentToPDF(PdfFilePath)
                
            }
        
        return PdfFilePath
    }
    
    function getTemplatePath(FilePath) {

        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.split("/");

        for (var i = 0; i < THrefArr.length - 2; i++) {
            HrefArr[i] = THrefArr[i];
        }

        for (var i = 0; i < THrefArr.length - 3; i++) {
            HrefArr1[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        var Href1 = HrefArr1.join("/");
        FilePath = Href + "/HtmlFiles/SampleTemplate.dot";

        return FilePath;
    }
    
    </script>

    <script type="text/javascript">
//    function LoadPrinters() {
//        try {
//            var ActiveXObjeIns = document.CaliberOfficeViewer
//            if (ActiveXObjeIns.IsWordInstalled() == true) {
//                var PrintestList = new Array();
//                PrintestList = ActiveXObjeIns.ReadPrinters().split("#*#");
//                var PrinterSelObj = document.getElementById("PrinterSelList");
//                for (var k = 0; k < PrintestList.length; k++) {
//                    var oOption = document.createElement("OPTION");
//                    oOption.text = PrintestList[k];
//                    oOption.value = PrintestList[k];
//                    PrinterSelObj.add(oOption)
//                }
//            }
//        }
//        catch (e) {
//            alert("ActiveX Component Not Installed!");
//            return false;
//        }
//    }

//    var ActiveXObjeIns = document.CaliberOfficeViewer

//    LoadPrinters()

//    function PrintDocument() {
//        if (document.getElementById("PrinterSelList").value != "") {
//            var ActiveXObjeIns = document.getElementById("CaliberOfficeViewer");
//            var PrntSts = ActiveXObjeIns.PrintDocument1(document.getElementById("PrinterSelList").value);
//            if (PrntSts == true) {
//                alert('Print Completed Successfully');
//            }
//        }
//        else {
//            alert('Select Printer');
//        }
//    }

function _printDocumentCall()
{
    var r = confirm("Save all the open word files before printing \n Click Ok to Continue \n Click Cancel to Save");
    if (r == true) 
    {
        var Orientation = 1
        var HeaderData = WordFormatCorrections("<center><b>" + $("#HeaderTab").html() + "</b></center>");
        var FooterData = WordFormatCorrections("<center><b>" + $("#FooterTab").html() + "</b></center>");
        
//        var BodyDataArr = [];
//            BodyDataArr[0]=$("#SetData_"+i).html();
//            BodyDataArr[1]=$("#SetData_"+i).html();
//        var BodyData = WordFormatCorrections(BodyDataArr.join(""););

        var BodyData = WordFormatCorrections("<center><b>" + $("#DisTable1Td").html() + "</b></center>");
        
        var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
        var HeaderDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((HeaderData == "" ? "  " : HeaderData), "IH");
        var FooterDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((FooterData == "" ? "  " : FooterData), "IF");
        var BodyDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BodyData == "" ? "  " : BodyData), "PH");
        
        var TempDorPath = CaliberDocumentViewerIns.GetTempPath();
        var FileName = "Approved Vendor List";
        var TemplatePath = getTemplatePath();
        CaliberDocumentViewerIns.LoadDocument(TemplatePath,false); // CaliberDocumentViewerIns.LoadDocument(TemplatePath,true);
        if(CaliberDocumentViewerIns.IsDocumentLoaded ==false)
        {
            alert("File Not Loaded");
            return;
        }
        var FilePath = TempDorPath + FileName + ".doc";
        DeleteFiles[DeleteFilesCnt] = FilePath;
        DeleteFilesCnt +=1;
        CaliberDocumentViewerIns.InsertFilesInSection(BodyDataPath,HeaderDataPath,FooterDataPath,Orientation,1);
        for(var i=1;i<CaliberDocumentViewerIns.WordInstance.ActiveDocument.Tables.Count+1;i++)
        {
            CaliberDocumentViewerIns.WordInstance.ActiveDocument.Tables(i).AutoFitBehavior (1)
        }

        CaliberDocumentViewerIns.Save(FilePath);
        CaliberDocumentViewerIns.PrintDocument1(PrinterName)
    } 
}
    </script>
    
    </body>
</HTML>
