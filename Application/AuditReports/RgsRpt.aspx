<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RgsRpt.aspx.vb" Inherits="AuditReports.RgsRpt" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx" %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx" %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>T</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

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
        
    </script>
    
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
    
        <asp:Table ID="Table1" runat="server" HorizontalAlign="center" CssClass="MainTable" Width="98%"
            BorderWidth="1" CellSpacing="0" CellPadding="0">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainTD">
                    <uc1:header id="Header1" runat="server">
                    </uc1:header>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                        <asp:Table ID="Table2" runat="server" BorderWidth="1" CssClass="SubTable" HorizontalAlign="center" CellPadding="0" 
                            CellSpacing="1" Width="100%">
                            <asp:TableRow>
                                <asp:TableCell id="PTd"  CssClass="SubHead" HorizontalAlign="Center">
                                    <asp:Literal ID="MainTitleLtrl" runat="server">Proposal Details</asp:Literal>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="7">
                                    <asp:Table ID="RgsTable" BorderWidth="1" runat="server" HorizontalAlign="center" CssClass="SubTable" CellPadding="0"
                                         CellSpacing="1" Width="100%">
                                    </asp:Table>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="SubHead" HorizontalAlign="Center">
                                    <asp:Literal ID="Literal1" runat="server">Observation Details</asp:Literal>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="7">
                                    <asp:Table ID="ObsTable" BorderWidth="1" runat="server" HorizontalAlign="center" CellPadding="0"
                                        CssClass="SubTable" CellSpacing="1" Width="100%">
                                    </asp:Table>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="SubHead" HorizontalAlign="Center">
                                    <asp:Literal ID="Literal2" runat="server">Response Details</asp:Literal>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="7">
                                    <asp:Table ID="RspTable" BorderWidth="1" runat="server" HorizontalAlign="center" CellPadding="0"
                                        CssClass="SubTable" CellSpacing="1" Width="100%">
                                    </asp:Table>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="SubHead" HorizontalAlign="Center">
                                    <asp:Literal ID="Literal3" runat="server">Closure Details</asp:Literal>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow  ID="ClsTr">
                                <asp:TableCell ColumnSpan="7">
                                    <asp:Table ID="ClsTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                        CssClass="SubTable" CellSpacing="1" Width="100%">
                                    </asp:Table>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="HideRow">
                            <asp:TableCell>
                                <object id="CaliberOfficeViewer" classid="clsid:EFCF98EC-07DE-4127-97C2-76F3C2C4ECD5" style="height:600px;width:100%;"></object>
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
                                <%--<asp:Button ID="PrntBtn"  runat="Server" Text="Save as PDF" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" />--%>
                                   <%-- <span id="PrinterOptSpan">
                                    <select id="PrinterSelList" style="width:150px">
                                        <option value=""> [ Select ] </option>
                                    </select>--%>
                                     <input id="BtnPrint" type="button" value="Print" onmouseover="this.className='ButOCls'"
                                    class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="Print()"/>
                            <%--</span>--%>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="HideRow" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow CssClass="HideRow" ID="FtrTR">
                            <asp:TableCell HorizontalAlign="Left" CssClass="MainTD" >
                                Printed By: Jhansi. Lakshmi
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right" CssClass="MainTD" >
                                Printed On: 27-11-2012 5:24PM
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
    <script language="javascript">
    
            function isWordInstalled() {
                try {
                    var ActiveXObjeIns = document.getElementById("CaliberOfficeViewer");
                    if (ActiveXObjeIns.IsWordInstalled() == false) {
                        //alert("MS Word Not Installed!")
                        return false;
                    }
                }
                catch (e) {
                    alert("ActiveX Component Not Installed");
                    return false;
                }
                return true;
            }


            function FnCreateHtmlToPdf()
            {
                var BodyData="";
                var FilePathArr = [];
            
                var HelloWorldControl1Ins = document.getElementById("CaliberOfficeViewer");

                BodyData=document.getElementById("Table1").outerHTML;
                var BodyFilePath=HelloWorldControl1Ins.GenerateHtmlFile(BodyData,"BodyData");
             
                var FilePath1 = CheckFileType(BodyFilePath);
            }
            
            function CheckFileType(FilePath) 
            {
                
                 return GenerateData(FilePath);
                
            }
            
            function GenerateData(FilePath)
            {
       
                var HelloWorldControl1Ins = document.getElementById("CaliberOfficeViewer");
                             
                var TempPath = HelloWorldControl1Ins.GetTempPath();
                var TemplatePath = getTemplatePath(FilePath);
                HelloWorldControl1Ins.LoadDocument(TemplatePath);
   
                var PdfFilePath = TempPath + "\sdfDocLogin" + i + ".pdf";
                var WrdFilePath = TempPath + "\efdfDocLogin" + i + ".doc";
//                
                HelloWorldControl1Ins.InsertFilesInSection(FilePath,"","",false,1);
                HelloWorldControl1Ins.ExportDocumentToPDF(PdfFilePath);
                    
//                HelloWorldControl1Ins.CloseControl();

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
    function LoadPrinters() {
        try {
            var ActiveXObjeIns = document.CaliberOfficeViewer
            if (ActiveXObjeIns.IsWordInstalled() == true) {
                var PrintestList = new Array();
                PrintestList = ActiveXObjeIns.ReadPrinters().split("#*#");
                var PrinterSelObj = document.getElementById("PrinterSelList");
                for (var k = 0; k < PrintestList.length; k++) {
                    var oOption = document.createElement("OPTION");
                    oOption.text = PrintestList[k];
                    oOption.value = PrintestList[k];
                    PrinterSelObj.add(oOption)
                }
            }
        }
        catch (e) {
            alert("ActiveX Component Not Installed!");
            return false;
        }
    }

    var ActiveXObjeIns = document.CaliberOfficeViewer

    LoadPrinters()

    function PrintDocument() {
        if (document.getElementById("PrinterSelList").value != "") {
            var ActiveXObjeIns = document.getElementById("CaliberOfficeViewer");
            var PrntSts = ActiveXObjeIns.PrintDocument1(document.getElementById("PrinterSelList").value);
            if (PrntSts == true) {
//                opener.FnCallAjax(document.getElementById("BdyChldId").value, document.getElementById("cntTxt").value, document.getElementById("RgsId").value, document.getElementById("BdyId").value);
                alert('Print Completed Successfully');
                window.close();
            }
        }
        else {
            alert('Select Printer');
        }
    }
    
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
   
    </script>
    
</body>
</html>
