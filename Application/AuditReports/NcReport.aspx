<%@ Page Language="vb" AutoEventWireup="false" Codebehind="NcReport.aspx.vb" Inherits="AuditReports.NcReport" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx" %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx" %>
<%@ Register TagPrefix="uc11" TagName="PrintControl" Src="../AuditReports/PrintControl.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>ObsResponsePrint</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">

    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
    
         function FnOpenSummryRpt(RgsBaseId,RgsAulId,Type)
        {
            SetPopDimensions()
            var pageURL = "WrdFrmatRpt.aspx?RgsAId=" + RgsAulId + "&RgsBId=" + RgsBaseId + "&Type=" + Type
            var features = "height= 1000,width= 1000,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=180,left=150,fullscreen=no" 
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
        <asp:Table ID="Table0" runat=server border="1" CellSpacing="1" CellPadding="1" align="center"
            Width="900">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="HeaderTab" runat="server" HorizontalAlign="center" BorderWidth="0"
                        CellPadding="0" CellSpacing="1" Width="900">
                        <asp:TableRow>
                            <asp:TableCell Style="font-family: Verdana" HorizontalAlign="Center">
                                <uc1:header id="Header1" runat="server">
                                </uc1:header>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Style="font-family: Verdana" Font-Size="Medium" HorizontalAlign="Center"> 
                                <%=Caption%>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="Table1" runat="server" HorizontalAlign="center" class="MsoTableGrid"
                        BorderWidth="1" CellSpacing="0" CellPadding="0" Style="border-collapse: collapse;
                        border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184;
                        mso-padding-alt: 0in 5.4pt 0in 5.4pt; width: 900;">
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell Style="border: solid windowtext 1.0pt; mso-border-left-alt: solid windowtext .5pt;
                                mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; font-size: 9.0pt;
                                font-family: Verdana,sans-serif; mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Times New Roman">
                                Audit Code
                            </asp:TableCell>
                            <asp:TableCell Style="border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt;
                                mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; font-size: 9.0pt;
                                font-family: Verdana,sans-serif; mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Times New Roman"
                                ColumnSpan="6">
                                <asp:TextBox ID="SrchTxt" runat="server" CssClass="TxtCls" Width="200px" Text="%"
                                    MaxLength="25"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Style="border: solid windowtext 1.0pt; border-top: none; mso-border-left-alt: solid windowtext .5pt;
                                mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; font-size: 9.0pt;
                                font-family: Verdana,sans-serif; mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Times New Roman">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell Style="border: solid windowtext 1.0pt; border-top: none; border-left: none;
                                mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt;
                                padding: 0in 5.4pt 0in 5.4pt; font-size: 9.0pt; font-family: Verdana,sans-serif;
                                mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Times New Roman">
                                <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell Style="border: solid windowtext 1.0pt; border-top: none; border-left: none;
                                mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt;
                                padding: 0in 5.4pt 0in 5.4pt; font-size: 9.0pt; font-family: Verdana,sans-serif;
                                mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Times New Roman">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell Style="border: solid windowtext 1.0pt; border-top: none; border-left: none;
                                mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt;
                                padding: 0in 5.4pt 0in 5.4pt; font-size: 9.0pt; font-family: Verdana,sans-serif;
                                mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Times New Roman">
                                <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell Style="border: solid windowtext 1.0pt; border-top: none; border-left: none;
                                mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt;
                                padding: 0in 5.4pt 0in 5.4pt; font-size: 9.0pt; font-family: Verdana,sans-serif;
                                mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Times New Roman">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell Style="border: solid windowtext 1.0pt; border-top: none; border-left: none;
                                mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt;
                                padding: 0in 5.4pt 0in 5.4pt; font-size: 9.0pt; font-family: Verdana,sans-serif;
                                mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Times New Roman">
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="40px"
                                    MaxLength="5">1</asp:TextBox>
                                &nbsp;<input type="button" onclick="submit()" class='ButCls' onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'" value='Display'>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="FooterTab" runat="server" HorizontalAlign="center" CssClass="HideRow"
                        BorderWidth="0" CellPadding="0" CellSpacing="1" Width="99.3%">
                        <asp:TableRow>
                            <asp:TableCell Style="font-family: Verdana">Printed By: <%=PrintedBy %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="left" Style="font-family: Verdana">Printed On: <%=PrintedOn %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </asp:TableCell>
                            <asp:TableCell Style="font-family: Verdana" HorizontalAlign="Right">
                        Page: <span style="mso-field-code:  '  PAGE ' "><span style='mso-no-proof:yes'>1</span></span> of <span style="mso-field-code: ' NUMPAGES ' "><span style='mso-no-proof:yes'>1</span></span>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ID="DisTableTd" Width = 720px>
                    <asp:Table ID="DisTable" runat="server" HorizontalAlign="center" class="MsoTableGrid"
                        BorderWidth="1" CellSpacing="0" CellPadding="0" Style="border-collapse: collapse;
                        border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184;
                        mso-padding-alt: 0in 5.4pt 0in 5.4pt; width: 900;">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell class="HideRow" colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;Chart 
									Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT id="GraphSelect" name="GraphSelect" class="TxtCls" onchange="GraphSel()">
										<OPTION value="17" >Line</OPTION>
										<OPTION value="0">Column 3D</OPTION>
										<OPTION value="1" selected="selected">Column Clustered</OPTION>
										<OPTION value="2">Column Clustered 3D</OPTION>
										<OPTION value="3">Column Stacked</OPTION>
										<OPTION value="6">Column Stacked 3D</OPTION>
										<OPTION value="7">Bar 3D</OPTION>
										<OPTION value="8">Bar Clustered</OPTION>
										<OPTION value="9">Bar Clustered 3D</OPTION>
										<OPTION value="10">Bar Stacked</OPTION>
										<OPTION value="13">Bar Stacked3D
										</OPTION>
										<OPTION value="15">Doughnut</OPTION>
										<OPTION value="16">Doughnut Exploded</OPTION>
										<OPTION value="18">Line 3D</OPTION>
										<OPTION value="19">Line Markers</OPTION>
										<OPTION value="20">Line Overlapped 3D</OPTION>
										<OPTION value="21">Line Stacked</OPTION>
										<OPTION value="25">Line Stacked 3D</OPTION>
										<OPTION value="26">Line Stacked Markers</OPTION>
										<OPTION value="27">Pie</OPTION>
										<OPTION value="28">Pie 3D</OPTION>
										<OPTION value="29">Pie Exploded</OPTION>
										<OPTION value="30">Pie Exploded3D</OPTION>
										<OPTION value="31">Pie Stacked</OPTION>
										<OPTION value="32">Polar Line</OPTION>
										<OPTION value="33">Polar LineMarkers</OPTION>
										<OPTION value="34">Polar Markers</OPTION>
										<OPTION value="35">Polar SmoothLine</OPTION>
										<OPTION value="36">Polar Smooth Line Markers</OPTION>
										<OPTION value="37">Radar Line</OPTION>
										<OPTION value="38">Radar Line Filled</OPTION>
										<OPTION value="39">Radar Line Markers</OPTION>
										<OPTION value="40">Radar Smooth Line</OPTION>
										<OPTION value="41">Radar Smooth Line Markers</OPTION>
										<OPTION value="42">Scatter Line</OPTION>
										<OPTION value="43">Scatter Line Filled</OPTION>
										<OPTION value="44">Scatter Line Markers</OPTION>
										<OPTION value="45">Scatter Markers</OPTION>
										<OPTION value="46">Scatter Smooth Line</OPTION>
										<OPTION value="47">Scatter Smooth Line Markers</OPTION>
										<OPTION value="48">Smooth Line</OPTION>
										<OPTION value="49">Smooth Line Markers</OPTION>
										<OPTION value="50">Smooth Line Stacked</OPTION>
										<OPTION value="53">Smooth Line Stacked Markers
										</OPTION>
										<OPTION value="54">Stock HLC</OPTION>
										<OPTION value="55">Stock OHLC
										</OPTION>
									</SELECT></asp:TableCell>
                <asp:TableCell class="HideRow" Width="800">Width <input type="button" class="ButCls" width="30px" value="+" onclick="WidthIn()"><input type="button" width="30px" class="ButCls" value="-" onclick="WidthOut()">
									Height <input type="button" class="ButCls" width="30px" value="+" onclick="HeightIn()"><input type="button" width="30px" class="ButCls" value="-" onclick="HeightOut()">
									&nbsp; &nbsp;<input type="button" id="DispChartBtn" width="100px" class="HideRow" value="Display Chart" onclick="Process"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow class="HideRow">
                <asp:TableCell>
                    <%--<object id="CaliberOfficeViewer" classid="clsid:EFCF98EC-07DE-4127-97C2-76F3C2C4ECD5" style="height:600px;width:100%;"></object>--%>
                    
<%--                    <%
                        Response.WriteFile("../DMSManagement/ActiveX.inc")
                    %>--%>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="ChatrCompTr" Class="MainTD">
                <asp:TableCell Class="MainTD" Style="width: 900;">
						<div id="div1" style="POSITION: relative;BORDER-RIGHT: black 1pt solid; BORDER-TOP: black 1pt solid; BORDER-LEFT: black 1pt solid; WIDTH: 900; BORDER-BOTTOM: black 1pt solid; HEIGHT: 384px; background-color:white ; left: 0px; top: 0px;"
							align="center">
							<object id="ChartSpace1" style="background-color:#fff9eb ; height: 100%;" classid="clsid:0002E55D-0000-0000-C000-000000000046" width="900">
								<param name="XMLData" value='<xml xmlns:x="urn:schemas-microsoft-com:office:excel"> <x:WebChart><x:OWCVersion>11.0.0.5531</x:OWCVersion><x:Width>15239</x:Width><x:Height>10160</x:Height>  <x:Chart><x:PlotArea> <x:Graph><x:Type>Column</x:Type><x:SubType>Clustered</x:SubType><x:ScaleID>76618452</x:ScaleID><x:ScaleID>76618592</x:ScaleID><x:Overlap>0</x:Overlap><x:GapWidth>150</x:GapWidth><x:FirstSliceAngle>0</x:FirstSliceAngle></x:Graph> <x:Axis><x:AxisID>76618732</x:AxisID><x:ScaleID>76618592</x:ScaleID><x:Type>Value</x:Type>  <x:MajorGridlines></x:MajorGridlines><x:MajorTick>Outside</x:MajorTick><x:MinorTick>None</x:MinorTick><x:Placement>Left</x:Placement> </x:Axis><x:Axis>  <x:AxisID>76619128</x:AxisID><x:ScaleID>76618452</x:ScaleID><x:Type>Category</x:Type><x:MajorTick>Outside</x:MajorTick><x:MinorTick>None</x:MinorTick><x:Placement>Bottom</x:Placement> </x:Axis></x:PlotArea>  </x:Chart>  <x:Scaling><x:ScaleID>76618452</x:ScaleID>  </x:Scaling><x:Scaling><x:ScaleID>76618592</x:ScaleID></x:Scaling> </x:WebChart></xml>'>
								<param name="ScreenUpdating" value="-1">
								<param name="EnableEvents" value="-1">
							</object>
						</div>
					</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell align="left">
                    <input type="button" id="button3" value="Export To Excel" class="ButSelCls" language="javascript"
                        onclick="ExpDataToExcel()">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--                         <span id="PrinterOptSpan">
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

        BodyData=document.getElementById("DisTable").outerHTML;
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
                
                var PdfFilePath = HelloWorldControl1Ins.GetTempPath() + "Document.pdf";
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

        var BodyData = WordFormatCorrections("<center><b>" + $("#DisTableTd").html() + "</b></center>");
        
        var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
        var HeaderDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((HeaderData == "" ? "  " : HeaderData), "IH");
        var FooterDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((FooterData == "" ? "  " : FooterData), "IF");
        var BodyDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BodyData == "" ? "  " : BodyData), "PH");
        
        var TempDorPath = CaliberDocumentViewerIns.GetTempPath();
        var FileName = "Findings Report";
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

    <script language="javascript">
	    
//	    function ExpDataToExcel()
//	    
//	    {
//	     
//	     try
//	       {
//	         
//	         var flag=CreateExcel();
//	         if(flag==false)
//	               {
//	                  alert('No Records Are Availabe To Export')
//	               }
//	        }
//	      catch(ex)
//	         {
//	               alert('You need to have Excel Installed and Active-X Components Enabled on your System.')
//	               return(false);
//	         } 
//	    }

   function ExpDataToExcel() {

        try {
            var ExcelType=0
            var flag = CreateExcel(ExcelType); //ExcelType required for if any chart export is there else 0
            if (flag == false) {
                alert('No Records Are Availabe To Export')
            }
        }
        catch (ex) {
            alert('You need to have Excel Installed and Active-X Components Enabled on your System.')
            return (false);
        }
    }

    </script>

    <script language="jscript">
    
    	function GraphSel(){
		HtmlStr=""

		HtmlStr="<TABLE  style='WIDTH:100%' BORDER='1' CELLSPACING='1' CELLPADDING='1' class='MainTable' align='center' width='100%'>"
	 									 
		 handleOnLoad()
		 HtmlStr=HtmlStr +   " </TABLE>"
		 /*StatDisplayTab.innerHTML=HtmlStr */
		}
		
		function WidthIn(){
		  if((parseInt(div1.style.width)>2000)){return(false)}
			div1.style.width= parseInt(div1.style.width) + 50
 	    }
		
	    function WidthOut(){
	      if((parseInt(div1.style.width)<700)){return(false)}
		    div1.style.width= parseInt(div1.style.width) - 50
	    }
	    
	    function HeightIn(){
		  if((parseInt(div1.style.height)>2000)){return(false)}
		     div1.style.height= parseInt(div1.style.height) + 50		
		}
		
	    function HeightOut(){
	      if((parseInt(div1.style.height)<100)){return(false)}
 	    div1.style.height= parseInt(div1.style.height) - 50	    
	    }

var ExcelTypeAry=new Array()
var OldValue;
var OldSelection = null;
var OldSelectionType = -1;
var bOld = false;

var ota = new Array();
var ota2 = new Array();

function handleOnLoad()
{
debugger
	var TableObjId= "DisTable"
	var r,n
	var rCount=document.all(TableObjId).rows.length
	if(rCount<2){ return(false)}
	var  ColCount=parseInt(document.all(TableObjId).rows(0).cells.length)

	var txtCol="<%=txtColval%>"
	var numColList="<%=numColListval%>"
	
	if((numColList=='')||(txtCol=='')){
//	alert("Enter Column Value(s) & Not More Than Total Columns: " + ColCount)
//	return(false)
	}
	if(isNaN(txtCol)) {
//	alert("Enter Numeric Value For Label Column & Not More Than Total Columns: " + ColCount)
//	return(false)
	}
	
	var numColAry=new Array() 
	var ColNameAry=new Array() 

	var ColName='Status,AF. Category'
	ColNameAry=ColName.split(',')
	var StschartCol="<%=Stschartval%>"
	var CatchartCol="<%=Catchartval%>"
	
	var ChartCol=StschartCol + '#*#' + CatchartCol
	numColAry=ChartCol.split('#*#')
	
	txtCol=parseInt(txtCol)-1
	if((txtCol-ColCount>0)){
//	alert("Enter Column Value & Not More Than Total Columns: " + ColCount)
//	return(false)
	}
	if((txtCol< 0)){
//	alert("Enter Column Value Not Less Than 1")
//	return(false)
	}
	var numCol
	for(n=0;n<numColAry.length;n++){
	numCol=numColAry[n]
	   if(isNaN(numCol)){
//		alert("Enter Numeric Value For Value Column & Not More than Total Columns: " + ColCount)
//		return(false)
	   }
	   numCol=parseInt(numCol)
		if((numCol-ColCount>0)){
//		alert("Enter Column Value & Not More than Total Columns: " + ColCount)
//		return(false)
		}
		if((numCol< 0)){
//		alert("Enter Column Value Not Less Than 1")
//		return(false)
		}
	}

////////////////////////////
	var categories=new Array();
	var values;
	var ChartObj = document.getElementById("ChartSpace1")
	var c = ChartObj.Constants;
	var CharTypeAry=new Array()
	CharTypeAry[0]=c.chChartTypeColumn3D 
	CharTypeAry[1]=c.chChartTypeColumnClustered 
	CharTypeAry[2]=c.chChartTypeColumnClustered3D 
	CharTypeAry[3]=c.chChartTypeColumnStacked 
	CharTypeAry[4]=c.chChartTypeColumnStacked100 
	CharTypeAry[5]=c.chChartTypeColumnStacked1003D 
	CharTypeAry[6]=c.chChartTypeColumnStacked3D 
	CharTypeAry[7]=c.chChartTypeBar3D 
	CharTypeAry[8]=c.chChartTypeBarClustered 
	CharTypeAry[9]=c.chChartTypeBarClustered3D 
	CharTypeAry[10]=c.chChartTypeBarStacked 
	CharTypeAry[11]=c.chChartTypeBarStacked100 
	CharTypeAry[12]=c.chChartTypeBarStacked1003D 
	CharTypeAry[13]=c.chChartTypeBarStacked3D  
CharTypeAry[14]=c.chChartTypeCombo3D 
CharTypeAry[15]=c.chChartTypeDoughnut 
CharTypeAry[16]=c.chChartTypeDoughnutExploded 
CharTypeAry[17]=c.chChartTypeLine 
CharTypeAry[18]=c.chChartTypeLine3D 
CharTypeAry[19]=c.chChartTypeLineMarkers 
CharTypeAry[20]=c.chChartTypeLineOverlapped3D 
CharTypeAry[21]=c.chChartTypeLineStacked 
CharTypeAry[22]=c.chChartTypeLineStacked100 
CharTypeAry[23]=c.chChartTypeLineStacked1003D 
CharTypeAry[24]=c.chChartTypeLineStacked100Markers 
CharTypeAry[25]=c.chChartTypeLineStacked3D 
CharTypeAry[26]=c.chChartTypeLineStackedMarkers 
CharTypeAry[27]=c.chChartTypePie 
CharTypeAry[28]=c.chChartTypePie3D 
CharTypeAry[29]=c.chChartTypePieExploded 
CharTypeAry[30]=c.chChartTypePieExploded3D 
CharTypeAry[31]=c.chChartTypePieStacked 
CharTypeAry[32]=c.chChartTypePolarLine 
CharTypeAry[33]=c.chChartTypePolarLineMarkers 
CharTypeAry[34]=c.chChartTypePolarMarkers 
CharTypeAry[35]=c.chChartTypePolarSmoothLine 
CharTypeAry[36]=c.chChartTypePolarSmoothLineMarkers 
CharTypeAry[37]=c.chChartTypeRadarLine 
CharTypeAry[38]=c.chChartTypeRadarLineFilled 
CharTypeAry[39]=c.chChartTypeRadarLineMarkers 
CharTypeAry[40]=c.chChartTypeRadarSmoothLine 
CharTypeAry[41]=c.chChartTypeRadarSmoothLineMarkers 
CharTypeAry[42]=c.chChartTypeScatterLine 
CharTypeAry[43]=c.chChartTypeScatterLineFilled 
CharTypeAry[44]=c.chChartTypeScatterLineMarkers 
CharTypeAry[45]=c.chChartTypeScatterMarkers 
CharTypeAry[46]=c.chChartTypeScatterSmoothLine 
CharTypeAry[47]=c.chChartTypeScatterSmoothLineMarkers 
CharTypeAry[48]=c.chChartTypeSmoothLine 
CharTypeAry[49]=c.chChartTypeSmoothLineMarkers 
CharTypeAry[50]=c.chChartTypeSmoothLineStacked 
CharTypeAry[51]=c.chChartTypeSmoothLineStacked100 
CharTypeAry[52]=c.chChartTypeSmoothLineStacked100Markers 
CharTypeAry[53]=c.chChartTypeSmoothLineStackedMarkers 
CharTypeAry[54]=c.chChartTypeStockHLC 
CharTypeAry[55]=c.chChartTypeStockOHLC 

 // build an assoc array of object types

ota["chSelectionAxis"] = c.chSelectionAxis;
ota["chSelectionCategoryLabel"] = c.chSelectionCategoryLabel;
ota["chSelectionChart"] = c.chSelectionChart;
ota["chSelectionChartSpace"] = c.chSelectionChartSpace;
ota["chSelectionDataLabel"] = c.chSelectionDataLabel;
ota["chSelectionDataLabels"] = c.chSelectionDataLabels;
ota["chSelectionDropZone"] = c.chSelectionDropZone;
ota["chSelectionErrorbars"] = c.chSelectionErrorbars;
ota["chSelectionField"] = c.chSelectionField;
ota["chSelectionGridlines"] = c.chSelectionGridlines;
ota["chSelectionLegend"] = c.chSelectionLegend;
ota["chSelectionLegendEntry"] = c.chSelectionLegendEntry;
ota["chSelectionNone"] = c.chSelectionNone;
ota["chSelectionPlotArea"] = c.chSelectionPlotArea;
ota["chSelectionPoint"] = c.chSelectionPoint;
ota["chSelectionSeries"] = c.chSelectionSeries;
ota["chSelectionSurface"] = c.chSelectionSurface;
ota["chSelectionTitle"] = c.chSelectionTitle;
ota["chSelectionTrendline"] = c.chSelectionTrendline;
ota["chSelectionUserDefined"] = c.chSelectionUserDefined;

ota2[c.chSelectionAxis] = "chSelectionAxis";
ota2[c.chSelectionCategoryLabel] = "chSelectionCategoryLabel";
ota2[c.chSelectionChart] = "chSelectionChart";
ota2[c.chSelectionChartSpace] = "chSelectionChartSpace";
ota2[c.chSelectionDataLabel] = "chSelectionDataLabel";
ota2[c.chSelectionDataLabels] = "chSelectionDataLabels";
ota2[c.chSelectionDropZone] = "chSelectionDropZone";
ota2[c.chSelectionErrorbars] = "chSelectionErrorbars";
ota2[c.chSelectionField] = "chSelectionField";
ota2[c.chSelectionGridlines] = "chSelectionGridlines";
ota2[c.chSelectionLegend] = "chSelectionLegend";
ota2[c.chSelectionLegendEntry] = "chSelectionLegendEntry";
ota2[c.chSelectionNone] = "chSelectionNone";
ota2[c.chSelectionPlotArea] = "chSelectionPlotArea";
ota2[c.chSelectionPoint] = "chSelectionPoint";
ota2[c.chSelectionSeries] = "chSelectionSeries";
ota2[c.chSelectionSurface] = "chSelectionSurface";
ota2[c.chSelectionTitle] = "chSelectionTitle";
ota2[c.chSelectionTrendline] = "chSelectionTrendline";
ota2[c.chSelectionUserDefined] = "chSelectionUserDefined";


	        ChartObj.Clear();
	        ChartObj.Charts.Add();
	        
		    for(r=1;r<rCount;r++)
		    {
			    categories[r-1]=document.all(TableObjId).rows(r).cells(txtCol).innerText	
		    } 
		    
		    var yVal
		    var ColAry=new Array() 
			for(n=0;n<numColAry.length;n++)
			{
			
	         numCol=numColAry[n]
	         ColAry=numCol.split(',')
	 
	 	        ChartObj.Charts(0).SeriesCollection.Add();
	         
                var ColHeader  = ColNameAry[n]//document.all(TableObjId).rows(0).cells(numCol).innerText;
                ChartObj.Charts(0).SeriesCollection(n).Caption=ColHeader;
                var valuesAry=new Array();
               
                 for(r=0;r<ColAry.length;r++)
                 {
                    yVal=ColAry[r]//document.all(TableObjId).rows(r).cells(numCol).innerText
                    if(yVal==''){yVal=0}
                    if(isNaN(yVal)){yVal=0}
                    valuesAry[r]=yVal	
				 } //for-r
					
                ChartObj.Charts(0).Axes(1).HasTitle = true
                ChartObj.Charts(0).Axes(1).Title.Font.Size = 7
                ChartObj.Charts(0).Axes(1).Font.Size = 7
                           
                ChartObj.Charts(0).SeriesCollection(n).SetData (c.chDimValues, c.chDataLiteral, valuesAry);
                ChartObj.Charts(0).SeriesCollection(n).SetData (c.chDimCategories, c.chDataLiteral, categories); 
                         
	            ChartObj.Charts(0).HasLegend = true;	
	            ChartObj.Charts(0).Legend.Font.Size = 7	
	            ChartObj.Charts(0).Axes(0).Font.Size = 7		
                var valList=valuesAry.join(',')
//                AddStatRow(ColHeader,valList)
                               
             } //for-n
             	 	 
            ChartObj.Charts(0).Axes(1).CategoryLabels.Parent.Title.Caption = "Status, AF Category"
	        ChartObj.Charts(0).HasLegend = true;
	        
	        ChartObj.Charts(0).Type =CharTypeAry[document.getElementById('GraphSelect').value];
	
	
}
    </script>

    <script language="javascript" id="clientEventHandlersJS">
<!--
 

function ChartSpace1_SelectionChange() {
ChartSpaceSelChange()
}

//-->
    </script>

    <script language="javascript" event="SelectionChange" for="ChartSpace1">
<!--
 ChartSpace1_SelectionChange()
//-->
    </script>

    <script language="jscript">
 function ChartSpaceSelChange(){
     var ChartObj = document.getElementById("ChartSpace1")
	
	var c = ChartObj.constants;

	if (bOld) {
		switch (OldSelectionType) {
			case c.chSelectionPoint:
			case c.chSelectionPlotArea:
			case c.chSelectionLegend:
			case  c.chSelectionChart:
				OldSelection.Interior.Color = OldValue;
				break;
			case c.chSelectionSeries:
			case c.chSelectionGridlines:
				OldSelection.Line.Color = OldValue;
				break;
			case c.chSelectionLegendEntry:
			case c.chSelectionAxis:
			case c.chSelectionTitle:
				OldSelection.Font.Color = OldValue;
				break;
			case c.chSelectionCategoryLabel:
				OldSelection.Parent.Font.Color = "red";
				break;
		}
	}

	switch (ChartObj.SelectionType) {
	case c.chSelectionPoint:
		 OldValue = ChartObj.Selection.Interior.Color;
		 window.status = ChartObj.Selection.GetValue(c.chDimValues) + " " + ChartObj.Selection.GetValue(c.chDimCategories);
		 ChartObj.Selection.Interior.Color = "red";
    	 break;
	case c.chSelectionPlotArea:
		case c.chSelectionLegend:
		case c.chSelectionChart:
			OldValue = ChartObj.Selection.Interior.Color;
			ChartObj.Selection.Interior.Color = "gray";
			break;
		case c.chSelectionSeries:
		case c.chSelectionGridlines:
			OldValue = ChartObj.Selection.Line.Color;
			ChartObj.Selection.Line.Color = "red";
			break;
		case c.chSelectionLegendEntry:
		case c.chSelectionAxis:
		case c.chSelectionTitle:
			OldValue = ChartObj.Selection.Font.Color;
			ChartObj.Selection.Font.Color = "red";
			break;
		case c.chSelectionCategoryLabel:
			ChartObj.Selection.Parent.Font.Color = "red";
			break;
	}
	// Store the current selection so that the settings can be
	// later restored when a new selection is made
	if (ChartObj.SelectionType != c.chSelectionChartSpace) {
		OldSelection = ChartObj.Selection;
		OldSelectionType = ChartObj.SelectionType;
		bOld = true;
	}
}


GraphSel()

    </script>

    <script language="vbscript">
Sub QuickSort(list, min , max )
Dim med_value 
Dim hi 
Dim lo 
Dim i 

 ' If the list has no more than CutOff elements,
 ' finish it off with SelectionSort.
 If max <= min Then Exit Sub

 ' Pick the dividing value.
 i = Int((max - min + 1) * Rnd + min)
 med_value = cdbl(list(i))

 ' Swap it to the front.
 list(i) = cdbl(list(min))

 lo = min
 hi = max
 Do
 ' Look down from hi for a value < med_value.
 Do While cdbl(list(hi)) - cdbl(med_value) >=0
 hi = hi - 1
 If hi <= lo Then Exit Do
 Loop
 If hi <= lo Then
 list(lo) =cdbl(med_value)
 Exit Do
 End If

 ' Swap the lo and hi values.
 list(lo) = list(hi)
 
 ' Look up from lo for a value >= med_value.
 lo = lo + 1
 Do While list(lo) < med_value
 lo = lo + 1
 If lo >= hi Then Exit Do
 Loop
 If lo >= hi Then
 lo = hi
 list(hi) =cdbl(med_value)
 Exit Do
 End If
 
 ' Swap the lo and hi values.
 list(hi) = list(lo)
 Loop
 
 ' Sort the two sublists.
 QuickSort list, min, lo - 1
 QuickSort list, lo + 1, max
End Sub

sub AddStatRow(ColName,valoresList)
dim valores
valores=split(valoresList,",")
dim MinValue,MaxValue,AvgValue,SdValue,RsdValue
QuickSort valores,lbound(valores),ubound(valores)
   
MinValue=valores(0)
MaxValue=valores(ubound(valores))

       for k=0 to ubound(valores)
		sum=sum+ valores(k)
		next
		AvgValue=sum/(ubound(valores)+1)
		sqrsum=0
		for k=0 to ubound(valores)
	 	sqrsum=sqrsum + (AvgValue-valores(k))^2
		next
		'Response.Write join(deviationList,",")
		if sqrsum>0 then SdValue=(sqrsum/(ubound(valores)))^(0.5)
		'Response.Write std
		if AvgValue>0 then RsdValue=(SdValue/AvgValue)*100

AvgValue=round(AvgValue,4)
SdValue=round(SdValue,4)
RsdValue=round(RsdValue,4)
  
HtmlStr=HtmlStr & "<TR>"
HtmlStr=HtmlStr & "<TD  class=MainTD><b>" & ColName & "</TD>" 
HtmlStr=HtmlStr & "<TD  class=MainTD><b>Min</TD><td   class=MainTD style='Background-Color:white'>" & MinValue & "</TD>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Max</TD><td    class=MainTD style='Background-Color:white'>" & MaxValue & "</TD>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Avg</TD><td    class=MainTD style='Background-Color:white'>" & AvgValue & "</TD>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Sd</TD><td    class=MainTD style='Background-Color:white'>" & SdValue & "</TD>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Rsd</TD><td   class=MainTD  style='Background-Color:white'>" & RsdValue & "</TD>"
HtmlStr=HtmlStr & "</TR>" 
end sub
    </script>

    <%--   <script language="vbscript">

function CreateExcel()
        
        DIM Path, Obook,oExcel, fso, filePath ,oChart ,cNumCols ,cNumRows,r,c,startAdd,EndAdd,ColCnt,Range1,Range2, FontSelection, SubNumRows, PicPath
        
        If document.all("DisTable").rows.length <> 0 then
            
            cNumCols=document.all("DisTable").rows(0).cells.length
            cNumRows=document.all("DisTable").rows.length

'            sHTML = document.all("DisTable").outerHTML 
                      
'            SET fso = CreateObject("Scripting.FileSystemObject") 
            
            SET oExcel = CreateObject("Excel.Application") 
            
'            if fso.FolderExists("c:\Excel") then
'                fso.DeleteFolder("c:\Excel")           
'            end if
'            
'            SET Path = fso.CreateFolder("c:\Excel")
'            filePath = Path & "\" & "<%=Caption%>" & ".xls"
'            fso.CreateTextFile(filePath).Write(sHTML)
'                            
'            DIM i 
'            i = 0 
'                   
'            DO WHILE err.number > 0 
'                err.Clear() 
'                filePath = fso.GetSpecialFolder(1) & "\MyExportedExcel" & i & ".xls" 
'                fso.CreateTextFile(filePath).Write(sHTML) 
'                i = i + 1 
'            LOOP 

            SET Obook = oExcel.Workbooks.Add() 
          	
'      	    set Obook = oExcel.Workbooks.open(filePath) 
'            oExcel.ActiveWindow.DisplayGridlines = True

            Obook.WorkSheets(1).Rows("1:1").Insert
            Obook.WorkSheets(1).Rows("2:2").Insert
            Obook.WorkSheets(1).Rows("3:3").Insert
            Obook.WorkSheets(1).Rows("4:4").Insert
            Obook.WorkSheets(1).Rows("5:5").Insert
            Obook.WorkSheets(1).Rows("6:6").Insert
            Obook.WorkSheets(1).Rows("7:7").Insert
            PicPath="<%=HttpPath%>/" & "<%=AdcockImag%>"
            With Obook.WorkSheets(1).Pictures.Insert(PicPath)
                With .ShapeRange
                    .LockAspectRatio = msoTrue
                    .Width = 40
                    .Height = 40
                End With
                .Left = Obook.WorkSheets(1).Cells(1, 2).Left
                .Top = Obook.WorkSheets(1).Cells(1, 2).Top
                .Placement = 1
                .PrintObject = True
            End With
            PicPath="<%=HttpPath%>/" & "<%=AdcockCaption%>"
            With Obook.WorkSheets(1).Pictures.Insert(PicPath)
                With .ShapeRange
                    .LockAspectRatio = msoTrue
                    .Width = 80
                    .Height = 15
                End With
                .Left = Obook.WorkSheets(1).Cells(4, 2).Left
                .Top = Obook.WorkSheets(1).Cells(4, 2).Top
                .Placement = 1
                .PrintObject = True
            End With
            With Obook.WorkSheets(1).Pictures.Insert(PicPath)
                With .ShapeRange
                    .LockAspectRatio = msoTrue
                    .Width = 80
                    .Height = 15
                End With
                .Left = Obook.WorkSheets(1).Cells(3, 4).Left
                .Top = Obook.WorkSheets(1).Cells(3, 4).Top
                .Placement = 1
                .PrintObject = True
            End With
            Obook.WorkSheets(1).cells(4,4).FormulaR1C1="<%=Session("CompanyAddr") %>"
            Obook.WorkSheets(1).cells(4,4).Font.Bold=true
            Obook.WorkSheets(1).cells(4,4).Font.Size = "14"
            Obook.WorkSheets(1).cells(r+8,c+1).Font.Name = "Calibri"
            Obook.WorkSheets(1).cells(7,4).FormulaR1C1="<%=Caption%>"
            Obook.WorkSheets(1).cells(7,4).Font.Bold=true
            Obook.WorkSheets(1).cells(7,4).Font.Size = "14"
            Obook.WorkSheets(1).cells(r+8,c+1).Font.Name = "Calibri"
            
'                for c=0 to cNumCols-1
'                
'                    if c=1 or c=2 Then
'                       Obook.WorkSheets(1).cells(1,c+1).ColumnWidth=30
'                    else
'                       Obook.WorkSheets(1).cells(1,c+1).ColumnWidth=15
'                    end if
'                    
'                next


            for r=0 to cNumRows-1
            
                if r=0 then
                    Obook.WorkSheets(1).rows(r+3).Font.Bold=true
                end if

                for c=0 to cNumCols-1
                    if c=0 then  
                        Obook.WorkSheets(1).cells(r+8,c+1).ColumnWidth=11
                    else
                        Obook.WorkSheets(1).cells(r+8,c+1).ColumnWidth=19
                    end if
                    Obook.WorkSheets(1).cells(r+8,c+1).FormulaR1C1=document.all("DisTable").rows(r).cells(c).innerText  
                    Obook.WorkSheets(1).cells(r+8,c+1).Borders.LineStyle = "1"
                    Obook.WorkSheets(1).cells(r+8,c+1).Borders.Weight = 2
                    Obook.WorkSheets(1).cells(r+8,c+1).Font.Size = "10" 
                    Obook.WorkSheets(1).cells(r+8,c+1).Font.Name = "Calibri"
                next

            next  
                
            SubNumRows=Obook.WorkSheets(1).UsedRange.Rows.Count
            
            Obook.WorkSheets(1).cells(SubNumRows+5,4).FormulaR1C1="Printed By: " & "<%=PrintedBy%> " & "    " & " Printed On: " & "<%=PrintedOn%>" 
            Obook.WorkSheets(1).cells(SubNumRows+5,4).Font.Bold=true 
            Obook.WorkSheets(1).cells(SubNumRows+5,4).Font.Size = "13"   
            Obook.WorkSheets(1).cells(r+8,c+1).Font.Name = "Calibri"      
            Obook.WorkSheets(1).Protect("caliber_09" )
           
            oExcel.Visible = true 
            Set fso = Nothing 
            CreateExcel=true 
                    
            Else
                 CreateExcel=false  
        End If

    End function 

    </script>--%>

    <script language="vbscript">

function CreateExcel(ExcelType)
    DIM Path, Obook,oExcel,NoOfTables,fso,cnt,cnt1,filePath ,oChart ,cNumCols ,cNumRows,r,c,startAdd,EndAdd,ColCnt,Range1,Range2,tbl,Flag,tblArr,ExcelVer,j,k,l,i, subcNumCols,subcNumRows, chartaxiscnt1,chartaxiscnt2
    NoOfTables=1
    ExcelVer=ExelStr
    i=0
    j=0
    k=0
    l=0
    r=0
    c=0

    Flag=0
    datarow=1
    colcnt=1
    excelrowcnt=1
        
    SET oExcel = CreateObject("Excel.Application") 
    SET Obook = oExcel.Workbooks.Add() 

    Obook.WorkSheets(1).Name = "Log Report" 
       
    for i=0 to NoOfTables-1

        if i=0 then
           tbl="DisTable"
        else
           tbl="" 
           tblArr=split(tbl,",")
        end If
        
        if i=0 then
            
            If document.getElementById(tbl).rows.length <> 0 then

                Flag=1
            
                subcNumCols=document.getElementById(tbl).rows(1).cells.length
                subcNumRows=document.getElementById(tbl).rows.length
                                               
                for r=0 to subcNumRows-1
            
                    if r=0 then
                        Obook.WorkSheets(1).rows(r+1).Font.Bold=true
                    end if

                    for c=0 to subcNumCols-1
                        if c=0 then  
                            Obook.WorkSheets(1).cells(r+1,c+1).ColumnWidth=18
                        else
                            Obook.WorkSheets(1).cells(r+1,c+1).ColumnWidth=30
                        end if
                        
                        if document.getElementById(tbl).rows(r).cells.length > 1 then
                         Obook.WorkSheets(1).cells(r+1,c+1).FormulaR1C1=document.getElementById(tbl).rows(r).cells(c).innerText 
                                      
                        elseif document.getElementById(tbl).rows(r).cells.length = 1 and c=0 then
                            Obook.WorkSheets(1).cells(r+1,c+4).FormulaR1C1=document.getElementById(tbl).rows(r).cells(c).innerText                          
                            Obook.WorkSheets(1).cells(r+1,c+1).Borders.LineStyle = "1"
                            Obook.WorkSheets(1).cells(r+1,c+1).Borders.Weight = 2
                            Obook.WorkSheets(1).cells(r+1,c+1).HorizontalAlignment = 3
                            EXIT for                             
                        end if
                        
                        Obook.WorkSheets(1).cells(r+1,c+1).Borders.LineStyle = "1"
                        Obook.WorkSheets(1).cells(r+1,c+1).Borders.Weight = 2
                        Obook.WorkSheets(1).cells(r+1,c+1).HorizontalAlignment = 3
                        
                        Obook.WorkSheets(1).cells(r+1,c+1).WrapText = True  'Added by P Suresh
                    next

                next  

            end If

        else
        
            for j=0 to UBound(tblArr)

                If document.getElementById(tblArr(j)).rows.length <> 0 then

                     cNumCols=document.getElementById(tblArr(j)).rows(1).cells.length
                     cNumRows=document.getElementById(tblArr(j)).rows.length
                                          
                     excelrowcnt=Obook.WorkSheets(1).UsedRange.Rows.Count
                     chartaxiscnt1=excelrowcnt+2
                     chartaxiscnt2=excelrowcnt+2

                     dim Titlename
                     
                    for r=0 to cNumRows-3
                        
                        if r=1 then
                             Obook.WorkSheets(1).rows(excelrowcnt+r+1).Font.Bold=true
                        end if

                        for c=0 to cNumCols-1
                            if c=0 then  
                                Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).ColumnWidth=11
                            else
                                Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).ColumnWidth=19
                            end if
                            Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).FormulaR1C1=document.getElementById(tblArr(j)).rows(r).cells(c).innerText  
                            Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).Borders.LineStyle = "1"
                            Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).Borders.Weight = 2
                            Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).HorizontalAlignment = 3
                            if r=0 then
'                                Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).Columns.Style="Good"
                                Titlename=document.getElementById(tblArr(j)).rows(r).cells(c).innerText
                                exit for
                            elseif r=1 then
'                                Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).Columns.Style="Good"
                            end if
                        next

                    next

                    Range1=cNumCols-6
                    Range2=cNumCols-1
                    
                    excelrowcnt=Obook.WorkSheets(1).UsedRange.Rows.Count
                    startAdd=Obook.WorkSheets(1).Cells(excelrowcnt,Range1).address(false,false)
                    EndAdd=Obook.WorkSheets(1).Cells(excelrowcnt,Range2).address(false,false)
                    Set oChart=Obook.WorkSheets(1).chartObjects.Add(10, 318, 430, 250).Chart
                  
                    oChart.ChartType = ExcelType
                    oChart.ApplyLayout(4)
                    oChart.PlotArea.Interior.Pattern = 1 
                    oChart.ChartStyle = 10

                    if ExcelVer= "Excel.Application.11" then   ' W.R.To Excel 2003
            
                        With oChart     
                         .SetSourceData(Obook.WorkSheets(1).Range(startAdd,EndAdd)) 
                         .HasTitle = True      
                         .HasLegend = False  
                         .SeriesCollection(1).XValues = "='Occupancy Report'!R3C2:R" & chartaxiscnt1 & "C2"  
    '                      Obook.WorkSheets(1).Shapes("Chart 1").Height = 270   
              
                          With .ChartTitle            
                               .Characters.Text = "Occupancy Report"           
                               .Font.Size = 15              
                          End With
              
                        End With 

                    end if 

                    if ExcelVer= "Excel.Application.12" then   ' W.R.To Excel 2007
                          With oChart      
                             .SetSourceData(Obook.WorkSheets(1).Range(startAdd,EndAdd)) 
                             .HasTitle = True      
                             .HasLegend = True 
                             .SeriesCollection(1).XValues = "='Occupancy Report'!$c$" & chartaxiscnt1 & ":$H$" & chartaxiscnt1 
                 
                              With .ChartTitle            
                               .Characters.Text = "Occupancy Report - " & Titlename         
                               .Font.Size = 15              
                              End With
                          End With
                    end if

                    Obook.WorkSheets(1).Rows(excelrowcnt+1 & ":" & excelrowcnt+1).Insert
                    Obook.WorkSheets(1).Rows(excelrowcnt+1 & ":" & excelrowcnt+1).RowHeight = 255

                    Obook.WorkSheets(1).Shapes("Chart " & j+1).Left =  Obook.WorkSheets(1).Cells(excelrowcnt+1, 1).Left+2
                    Obook.WorkSheets(1).Shapes("Chart " & j+1).Top = Obook.WorkSheets(1).Cells(excelrowcnt+1, 1).Top+2
                    Obook.WorkSheets(1).Shapes("Chart " & j+1).Height = Obook.WorkSheets(1).Cells(excelrowcnt+1, 1).Height-5
                    
                    Obook.WorkSheets(1).Range("$A$2:$I$2").Font.FontStyle = "Bold"
                    Obook.WorkSheets(1).Range("$A$2:$I$2").Font.Bold = True
                    Obook.WorkSheets(1).Range("$A$2:$I$2").Font.Size = "11"

                 end if

            next
                               
        end if

    next
    
    dim ToatlRowCnt
    dim PreparedBy 
    dim PreparedOn
    PreparedBy="Printed By: " & "<%=PrintedBy%>"
    PreparedOn="Printed On: " & "<%=PrintedOn%>" 
    ToatlRowCnt=Obook.WorkSheets(1).UsedRange.Rows.Count
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,3).FormulaR1C1=PreparedBy
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,5).FormulaR1C1=PreparedOn
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,3).Font.Bold=true
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,5).Font.Bold=true
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,3).Font.Size = "14"
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,5).Font.Size = "14"
    Obook.WorkSheets(1).Protect("caliber_09")

    oExcel.Visible = true 
    Set fso = Nothing 
    CreateExcel=true 
    obook.Application.Dialogs(5).Show("C:\\Findings")        'Added by P Suresh
End function 

    </script>

</body>
</html>
