<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Report.aspx.vb" Inherits="ReportViewer.Report" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html  >
<head runat="server">
    <title></title>

        <script src="../JScript/jquery.min.js" type="text/javascript"></script>

     <script type="text/javascript" src="JScript/Common2.js"></script>

    <link rel="stylesheet" href=TRIMS.css>
    <link rel="stylesheet" href="MaskStyles.css" />

    <script language="javascript" src="MaskJScript.js" type="text/javascript"></script>

    <style type="text/css">
    .ReportSubTable{
     border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;
     color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            background:#54a2cc;
            
    }
    .ReportHeaderTd{
    border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11
    color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
    }
    .ReportFirstRow{
    border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11
    }
    .ReportNextRow{
    border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11
    }
    
        .MsoTableGrid Td 
        {
            color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MsoNormal
        {
            color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MainSubTD
        {
            color :#Black; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            border-color:#ffffff;
            border-bottom-color:#ffffff;
            border-top-color:#5fa8cf;
            border-right-color:#5fa8cf;
            border-left-color:#5fa8cf;
        }
        
        .ChangeColor
        {
            Background-color:#eefce6;
            border:solid #c8e3b8 1 pt;
        }
        
        .OldColor
        {
            Background-color:#5fa8cf;
            border:solid #5fa8cf 1 pt;
        }
    
        
    </style>

    <style type="text/css">
    .ReportSubTable{
     border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;
     color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            background:#54a2cc;
            
    }
    .ReportHeaderTd{
    border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11
    color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
    }
    .ReportFirstRow{
    border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11
    }
    .ReportNextRow{
    border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11
    }
    
        .MsoTableGrid Td 
        {
            color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MsoNormal
        {
            color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MainSubTD
        {
            color :#Black; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            border-color:#ffffff;
            border-bottom-color:#ffffff;
            border-top-color:#5fa8cf;
            border-right-color:#5fa8cf;
            border-left-color:#5fa8cf;
        }
        
        .ChangeColor
        {
            Background-color:#eefce6;
            border:solid #c8e3b8 1 pt;
        }
        
        .OldColor
        {
            Background-color:#5fa8cf;
            border:solid #5fa8cf 1 pt;
        }
    
        
    </style>


<script language="vbscript">
Function fnDateFormat(num,unit)
dim Today
Today=now
dim DateStr
    select case unit

        case 1  ' day
            DateStr=dateAdd("y",num,Today)
        case 2  ' week
            DateStr=dateAdd("ww",num,Today)

        case 3  ' month
            DateStr=dateAdd("m",num,Today)

        case 4 ' year
             DateStr=dateAdd("yyyy",num,Today)

    end select 

fnDateFormat=FormatDateTime(DateStr,2)

End Function

</script>

    <script language="javascript">
        function fnDisplayDates(RowCnt) {
            var FromDays = document.getElementById("FromDays_" + RowCnt).value
            if (isNaN(FromDays) == true || FromDays == '') {
                FromDays = -1
                document.getElementById("FromDays_" + RowCnt).value = '-1'
            }
            var FromUnit = document.getElementById("FromUnit_" + RowCnt).value
            var FromDate = fnDateFormat(FromDays, FromUnit)

            var ToDays = document.getElementById("ToDays_" + RowCnt).value

            if (isNaN(ToDays) == true || ToDays == '') {
                ToDays = -1
                document.getElementById("ToDays_" + RowCnt).value = -1
            }
            var ToDayUnit = document.getElementById("ToDayUnit_" + RowCnt).value
            var ToDate = fnDateFormat(ToDays, ToDayUnit)

            document.getElementById("FromDateStr" + RowCnt).value = FromDate
            document.getElementById("ToDateStr" + RowCnt).value = ToDate


            document.getElementById("lblDateDisplay" + RowCnt).innerHTML = "<span style='background-color:lightblue' >From Date: " + FromDate + " </span>&nbsp; &nbsp;<span style='background-color:lightgreen' > To Date: " + ToDate + " </span>&nbsp; &nbsp;(mm/dd/yy)"
        }

        function Submit() {
            Form1.submit();
        }

        function ShowControl(RowCnt) {
            if (document.getElementById("Chk_" + RowCnt).checked == true) {
                document.getElementById("CtrlTd_" + RowCnt).className = "MainSubTD"
            }
            else {
                document.getElementById("CtrlTd_" + RowCnt).className = "HideRow"
            }
            //       SetColSpan(<%=NewRwCnt %>,2);
        }

        function SetColSpan(TotalRow, TotalCol) {
            for (var i = 0; i < TotalRow; i++) {
                for (var j = 0; j < TotalCol; j++) {
                    if (document.getElementById("Chk_" + i).checked == false) {
                        if (j == 1) {
                            document.getElementById("CapTD_" + i).setAttribute("colSpan", "6");
                        }
                    }
                    else {
                        document.getElementById("CapTD_" + i).removeAttribute("colSpan", "0");
                    }
                }
            }
        }

        function fnOpenMulPopUp(RowCnt, SourceType, CtrlId) {
            //SetPopDimensions()
            var pageURL = "MulObjPopup.aspx?RowCnt=" + RowCnt + "&SourceType=" + SourceType + "&CtrlId=" + CtrlId
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function fnCrSetMulPopUpCode(RowCnt, KfLableVal, KdIdVal, KdCodeVal) {
            document.getElementById("FlierCtrl_" + RowCnt).value = KdIdVal;
            document.getElementById("FlierValue_" + RowCnt).innerHTML = KfLableVal;
            document.getElementById("FlierCtrlVal_" + RowCnt).value = KfLableVal;
        }


        function fnOpenPopUp(BaseId, CtrlID) {
            //SetPopDimensions()
            var pageURL = "../IssueLogin/PopupPage.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID + "&Type=1"
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function fnCrSetToCode(BaseId, CtrlID, FldVAlArr, GenericCode) {
            if (FldVAlArr != '') {
                document.getElementById("SrchTxt_" + BaseId).value = FldVAlArr[1] + "%" //FldVAlArr[0]+ "/" + FldVAlArr[1];
            }
            else {
                document.getElementById("SrchTxt_" + BaseId).value = '%'
            }

        }

        function fnCrformSubmit() { }


        function fnOpenPopUp(BaseId, CtrlID) {
            //SetPopDimensions()
            var pageURL = "../IssueLogin/PopupPage.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function fnCrSetToCode(RowCnt, CtrlID, FldVAlArr, GenericCode) {
            if (FldVAlArr != '') {
                document.getElementById("FlierCtrl_" + RowCnt).value = FldVAlArr[0]
                document.getElementById("FlierValue_" + RowCnt).innerHTML = FldVAlArr[1]
            }
            else {
                document.getElementById("FlierCtrl_" + RowCnt).value = ''
                document.getElementById("FlierValue_" + RowCnt).innerHTML = ''
            }
        }
        
     

        
    </script>
    
    <script language=javascript >
        // Export  To Excel
        function ExpDataToExcel() {

            ShowMask();

            try {
                var ExcelType1 = ""//ExcelTypeAry[document.getElementById("GraphSelect").selectedIndex]
                if (ExcelType1 == "undefined") {
                    ExcelType = 1
                }
                if (document.getElementById("IssueTab") != null) {
                    write_to_excel(ExcelType1);
                }
                else {
                    alert('No Records Are Availabe For Export')
                }

            }
            catch (ex) {
                alert('You need to have Excel Installed and Active-X Components Enabled on your System.')
                return (false);
            }
        }
        function getTemplatePath() {
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

            return Href1 + "/HtmlFiles/ExportTplt.xlsx";
        }




        function write_to_excel(ExcelType1) {

            var ExcelType = ExcelType1;

            try {
                str = "";
                var mytable = document.getElementById("IssueTab");
                var rowCount = mytable.rows.length;
                var colCount = mytable.rows(1).cells.length;
                var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
                CaliberDocumentViewerIns.LoadDocument(getTemplatePath(), false, 1);

                var oBook = CaliberDocumentViewerIns.ExcelWorkBook;
                var oSheet = CaliberDocumentViewerIns.ExcelWorkBook.Worksheets(1);

                var val = 0;

                for (var i = 0; i < rowCount; i++) {
                    for (var j = 0; j < colCount; j++) {
                        if (i == 0) {
                            str = mytable.rows[i].cells[j].innerText;
                            if (str == "Time Elapsed (Days)") {
                                val = j;
                            }
                            if (j == 0) {
                                oBook.WorkSheets(1).cells(i + 1, j + 1).ColumnWidth = 16.14;
                            }
                            else {
                                oBook.WorkSheets(1).cells(i + 1, j + 1).ColumnWidth = 23.14;
                            }
                            oBook.WorkSheets(1).cells(i + 1, j + 1).Font.Bold = true;
                            oBook.WorkSheets(1).cells(i + 1, j + 1).Name = "Calibri";
                            oBook.WorkSheets(1).cells(i + 1, j + 1).Font.Size = 11;
                            oBook.WorkSheets(1).cells(i + 1, j + 1).HorizontalAlignment = 3;
                            oBook.WorkSheets(1).cells(i + 1, j + 1).VerticalAlignment = 3;
                        }
                        else {
                            str = mytable.rows[i].cells[j].innerText;
                            if (j == 0) {
                                oBook.WorkSheets(1).cells(i + 1, j + 1).ColumnWidth = 16.14;
                            }
                            else {
                                oBook.WorkSheets(1).cells(i + 1, j + 1).ColumnWidth = 23.14;
                            }
                            oBook.WorkSheets(1).cells(i + 1, j + 1).Name = "Calibri";
                            oBook.WorkSheets(1).cells(i + 1, j + 1).Font.Size = 10;
                            oBook.WorkSheets(1).cells(i + 1, j + 1).HorizontalAlignment = 3;
                            oBook.WorkSheets(1).cells(i + 1, j + 1).VerticalAlignment = 3;
                        }
                        if (str.indexOf("=>") != -1) {
                            str = str.replace('=>', '[=>]');
                        }
                        oSheet.Cells(i + 1, j + 1).Value = str;
                        oBook.WorkSheets(1).cells(i + 1, j + 1).Borders.LineStyle = "1";
                        oBook.WorkSheets(1).cells(i + 1, j + 1).Borders.Weight = 2;

                        startAdd = oBook.WorkSheets(1).Cells(i + 1, j + 1).address(false, false);
                        EndAdd = oBook.WorkSheets(1).Cells(i + 1, j + 1).address(false, false);
                        oBook.WorkSheets(1).Range(startAdd, EndAdd).WrapText = true;
                    }
                }

                oSheet.autofit;

                oBook.WorkSheets(1).Protect("caliber_09")
                HideMask();
                oBook.Application.Dialogs(5).Show("C:\\" + "TestReport" + ".xlsx");
                CaliberDocumentViewerIns.CloseControl();

            }

            catch (ex) {
                alert(ex);
            }

        }
    
    </script>
    <script language="javascript">
  
    function fnDrilldown(x)
    {
    alert(x)
    }
    if (<%=NewRwCnt%>!=0)
    {
//       setTimeout("SetColSpan(" + <%=NewRwCnt%> + "," + 2 + ")", 10); 
    }
    
    
    function Filter_Popup(RowCnt,ControlId, DataType,ObjectType)
{
   var pageURL =""
   
    switch (parseInt(DataType))
    {
      case 1:  // Popup
           pageURL="ChkListPopup.aspx"
             break; 
      case 2: // DropDown
          pageURL="DepartmentList.aspx?"
             break;
      case 3: //Check bOx
             pageURL="ChkListPopup.aspx?"
             break;
      case 4: // Radi Button
            pageURL="ChkListPopup.aspx?"
             break;
      case 17: // Multi Object  Reference
            pageURL="MultirefObjPopup.aspx?"
             break;
    }
    
    var FilAName = document.getElementById("FilAName" + RowCnt).innerText
   
    var  Parmstr="RowCnt=" + RowCnt  + "&ControlId=" + ControlId + "&ObjectType=" + ObjectType   + "&FilAName=" + FilAName //+ "DataType=" + DataType
    pageURL= pageURL +  Parmstr
       
    var winHeight =450 
    var winWidth = (screen.availWidth/100)*60;   
    var SpWinObj = window.open(pageURL,'DMSPopUp',"height="+winHeight+",width="+winWidth+",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
                
                
}


function SetDefaultValue(RowCnt,LblValue, TxtValue)
{
   document.getElementById("SpclLbl_" + RowCnt ).innerHTML=LblValue
   document.getElementById("SpclValueTxt_" +  RowCnt).value=LblValue
   document.getElementById("SpclTxt_" + RowCnt).value=TxtValue
}

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- Our activeX object -->
        <span style="display:none">
            <% Response.WriteFile("ActiveX.inc")%>
        </span>
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%" BackColor="white">
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Table ID="FilterTab" CssClass="SubTable" runat="server" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="left" BorderWidth="0">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TopChsrtTr" CssClass="HideRow">
                            <asp:TableCell ID="TopChrtTd" CssClass="MainTD" Width="700px">

      </asp:TableCell>                             
                        </asp:TableRow>
                          <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Table ID="Reocrdtab" CssClass="SubTable" runat="server" Width="700px" BorderColor="black"
                                    CellPadding="0" CellSpacing="1" HorizontalAlign="left" BorderWidth="0">
                                    <asp:TableRow>
                                        <asp:TableCell BackColor="#fcfffa" HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Literal ID="MaxRecLtrl" runat="server">Total Records</asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell BackColor="#fcfffa" HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Literal ID="RecPerPageLtrl" runat="server">Records Per Page</asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:TextBox ID="RecPerPageTxt" MaxLength="3" runat="server" Width="30px" CssClass="TxtCls"
                                                AutoPostBack="False" onkeypress="return IsDigit1(event);">20</asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell BackColor="#fcfffa" HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Literal ID="PgNoLtrl" runat="server">Page No.</asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:TextBox ID="PgNoTxt" runat="server" Width="50px" MaxLength="5" CssClass="TxtCls"
                                                AutoPostBack="False" onkeypress="return IsDigit1(event);">1</asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell BackColor="#fcfffa" HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Button ID="GoBtn" runat="server"   Text="Display" Visible="TRUE">
                                            </asp:Button>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TopChsrDetTr" CssClass="MainTd">
                           <asp:TableCell ID="TopChsrDetTD" style="overflow:auto;" CssClass="MainTD" Height="350px" HorizontalAlign=Center>
             		<asp:chart id="Chart1" runat="server" Palette="BrightPastel" ImageType="Png" ImageUrl="~/TempImages/ChartPic_#SEQ(300,3)" BackColor="#D3DFF0" Width="412px" Height="296px" borderlinestyle="Solid" backgradientendcolor="White" backgradienttype="TopBottom" borderlinewidth="2" borderlinecolor="26, 59, 105">
							<Titles>
								<asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"   ForeColor="26, 59, 105"></asp:Title>
							</Titles>
							<Legends>
								<asp:Legend Name="Default" BackColor="Transparent" Font="Trebuchet MS, 8.25pt, style=Bold"></asp:Legend>
							</Legends>
							<BorderSkin SkinStyle="Emboss"></BorderSkin>
							<Series>
							 </Series>
							<ChartAreas>
								<asp:ChartArea Name="Default" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" BackSecondaryColor="White" BackColor="64, 165, 191, 228" ShadowColor="Transparent" BackGradientStyle="TopBottom">
								 
								</asp:ChartArea>
							</ChartAreas>
						</asp:chart>              </asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Table ID="IssueTab" CssClass="ReportSubTable" runat="server" Width="100%" BorderWidth=1 CellPadding=0 CellSpacing=1 >
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="BtmChartTr" CssClass="HideRow">
                            <asp:TableCell ID="BtmChrtTd" BackColor="white">
                                <iframe id="BtmChartFrame" runat="server" style="border:none;border:solid 1px black;" width=700px height="350px"></iframe>                                
                            </asp:TableCell>                            
                        </asp:TableRow>
                         <asp:TableRow ID="BtmChartDetTr" CssClass="HideRow">
                            <asp:TableCell ID="BtmChartDetTD" HorizontalAlign="Left">
                                
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0" >
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left">
                                 <input type="button" id="ExportBtn" value="Export To Excel"  language="javascript"
                                    runat="server" onclick="ExpDataToExcel()" name="ExportBtn">
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                 <input type="button" class="HideRow" id="PnlBtn" value="Action Plan Report" language="javascript"
                                    runat="server" onclick="OpenPopUp()" name="PnlBtn" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table> 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Button ID="Button1" runat="server" CausesValidation="false"></asp:Button>
                    
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
    </div>
    </form>
</body>
</html>
