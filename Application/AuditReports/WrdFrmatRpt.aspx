<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WrdFrmatRpt.aspx.vb" Inherits="AuditReports.WrdFrmatRpt" %>

<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx" %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx" %>

<%@ Register TagPrefix="uc11" TagName="PrintControl" Src="../AuditReports/PrintControl.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Audit Summary Reports</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">
    <link href="WordStyle.css" rel="stylesheet">
    
    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
        
             
        function OpenDocument(DocId) 
		    {
			    var yval = parseInt(screen.availHeight) - 250
			    var xval = screen.availWidth-500

			    var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
			    SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
			    if (SpWinObj.opener == null) SpWinObj.opener = self;
			    SpWinObj.focus();
		    }
		    
		    
		    function FnOpenRpt(NCID,BdyId,IsuTypeId,IsuLogID)
            {
              
                SetPopDimensions()
                var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + IsuLogID + "&IsuTypeId=" + IsuTypeId  + "&PrsType=2" ;
                var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
                SpWinObj = window.open(pageURL,'SpecCodes',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
                
            }
            
            function FnOpenAudit(AulId)
            {               
                var pageURL = "ShowAudit.aspx?RgsCode=" + AulId;
                var features = "height= 450,width= 850,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
                var SpWinObj = window.open(pageURL,'BRMPopup1',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
            }
        
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <span style="display: none;">
            <%
                Response.WriteFile("../DMSManagement/ActiveX.inc")
            %>
        </span>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="center" Width="98%" BorderWidth="1"
            CellSpacing="0" CellPadding="0">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="HeaderTab" runat="server" HorizontalAlign="center" BorderWidth="0"
                        CellPadding="0" CellSpacing="1" Width="99.3%">
                        <asp:TableRow>
                            <asp:TableCell Font-Bold="true" HorizontalAlign="Center">
                                <uc1:header id="Header1" runat="server">
                                </uc1:header>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="SubHdTd" Font-Bold="true" Font-Size="Medium" HorizontalAlign="Center">
                                <%=Caption%>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="Table2" runat="server" HorizontalAlign="center" Style='width: 100%;
                        border-collapse: collapse; border: none; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;
                        mso-border-insideh: none; mso-border-insidev: none' BorderWidth="1" CellPadding="0"
                        CellSpacing="1" Width="100%">
                        <%-- <asp:TableRow Style='mso-yfti-irow: 0; mso-yfti-firstrow: yes'>
                            <asp:TableCell ID="PTd" HorizontalAlign="Center" Style='width: 100.0%; padding: 0in 5.4pt 0in 5.4pt;
                                border-bottom: none'>
                                <asp:Table ID="PTab" Style='width: 100.0%; mso-cellspacing: .7pt; border: solid black 1.0pt;
                                    mso-border-alt: solid black .75pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in'
                                    runat="server" HorizontalAlign="center" CellPadding="0" CellSpacing="1" Width="100%">
                                    <asp:TableRow Style='mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes;
                                        height: 20.45pt'>
                                        <asp:TableCell Font-Bold="true" HorizontalAlign="Center" Style='border: none; padding: 0in 0in 0in 0in'>
										<b>Proposal Details</b></asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow Style='mso-yfti-irow: 0; mso-yfti-firstrow: yes'>
                            <asp:TableCell Style='width: 100.0%; padding: 0in 5.4pt 0in 5.4pt'>
                                <asp:Table ID="RgsTable" runat="server" Style='width: 100.0%; border-collapse: collapse;
                                    border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184;
                                    mso-padding-alt: 0in 5.4pt 0in 5.4pt' HorizontalAlign="center" BorderWidth="1"
                                    CellPadding="0" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%-- <asp:TableRow Style='mso-yfti-irow: 2'>
                            <asp:TableCell HorizontalAlign="Center" Style='width: 100.0%; padding: 0in 5.4pt 0in 5.4pt'>
                                <asp:Table ID="OTab" runat="server" Style='width: 100.0%; mso-cellspacing: .7pt;
                                    border: solid black 1.0pt; mso-border-alt: solid black .75pt; mso-yfti-tbllook: 1184;
                                    mso-padding-alt: 0in 0in 0in 0in' HorizontalAlign="center" BorderWidth="0" CellPadding="0"
                                    CellSpacing="1" Width="100%">
                                    <asp:TableRow Style='mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes;
                                        height: 20.45pt'>
                                        <asp:TableCell Style='border: none; padding: 0in 0in 0in 0in' Font-Bold="true" HorizontalAlign="Center">
										<b>Observation Details</b></asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow Style='mso-yfti-irow: 2'>
                            <asp:TableCell Style='width: 100.0%; padding: 0in 5.4pt 0in 5.4pt'>
                                <asp:Table ID="ObsTable" runat="server" Style='width: 100.0%; border-collapse: collapse;
                                    border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184;
                                    mso-padding-alt: 0in 5.4pt 0in 5.4pt' HorizontalAlign="center" BorderWidth="1"
                                    CellPadding="0" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow Style='mso-yfti-irow: 2'>
                            <asp:TableCell Style='width: 100.0%; padding: 0in 5.4pt 0in 5.4pt'>
                                <asp:Table ID="VendTbl" runat="server" Style='width: 100.0%; border-collapse: collapse;
                                    border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184;
                                    mso-padding-alt: 0in 5.4pt 0in 5.4pt' HorizontalAlign="center" BorderWidth="1"
                                    CellPadding="0" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Style='mso-yfti-irow: 2'>
                            <asp:TableCell Style='width: 100.0%; padding: 0in 5.4pt 0in 5.4pt'>
                                <asp:Table ID="RspTable" runat="server" Style='width: 100.0%; border-collapse: collapse;
                                    border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184;
                                    mso-padding-alt: 0in 5.4pt 0in 5.4pt' HorizontalAlign="center" BorderWidth="1"
                                    CellPadding="0" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow  CssClass="HideRow">
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
                        BorderWidth="0" CellPadding="0" CellSpacing="1" Width="99.3%">
                        <asp:TableRow>
                            <asp:TableCell Font-Bold="true">Printed By: <%=PrintedBy%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </asp:TableCell>
                            <asp:TableCell Font-Bold="true" HorizontalAlign="left">Printed On: <%=PrintedOn%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </asp:TableCell>
                            <asp:TableCell Font-Bold="true" HorizontalAlign="Right">
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
                            <%--<span id="PrinterOptSpan">
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
    
 function Print()
    {
       document.getElementById("BtnTr").className="HideRow"
       document.getElementById("FtrTR").className=""
       document.getElementById("Table1").className=""
       document.getElementById("Table2").className=""
       window.print();
       document.getElementById("BtnTr").className="MainFoot"
       document.getElementById("FtrTR").className="HideRow"
       document.getElementById("Table1").className="MainTable"
       document.getElementById("Table2").className="SubTable"
    }
	
	
	function FnCreateHtmlToPdf()
    {
        var HeaderData="";
        var FooterData="";
        var BodyData="";
        var FilePathArr = [];
    
        var HelloWorldControl1Ins = document.getElementById("CaliberOfficeViewer");

        BodyData=document.getElementById("Table2").outerHTML;
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
//                var PdfFilePath = TempPath + "\sdfDocLogin" + i + ".pdf";
//                var WrdFilePath = TempPath + "\efdfDocLogin" + i + ".doc";
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
                var PdfFilePath = HelloWorldControl1Ins.GetTempPath() + "SummaryReport.pdf";
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
////                opener.FnCallAjax(document.getElementById("BdyChldId").value, document.getElementById("cntTxt").value, document.getElementById("RgsId").value, document.getElementById("BdyId").value);
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

        var BodyData = WordFormatCorrections("<center><b>" + $("#Table2").html() + "</b></center>");
        
        var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
        var HeaderDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((HeaderData == "" ? "  " : HeaderData), "IH");
        var FooterDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((FooterData == "" ? "  " : FooterData), "IF");
        var BodyDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BodyData == "" ? "  " : BodyData), "PH");
        
        var TempDorPath = CaliberDocumentViewerIns.GetTempPath();
        var FileName = "Summary Report";
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
            CaliberDocumentViewerIns.WordInstance.ActiveDocument.Tables(i).AutoFitBehavior (0)
        }

        CaliberDocumentViewerIns.Save(FilePath);
        CaliberDocumentViewerIns.PrintDocument1(PrinterName)
    } 
}
    </script>

</body>
</html>
