<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Report2.aspx.vb" Inherits="ReportConfig.Report2"  EnableEventValidation="false"%>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html  >
<head id="Head1" runat="server">
   
        <script src="../JScript/jquery.min.js" type="text/javascript"></script>

     <script type="text/javascript" src="../JScript/Common2.js"></script>

    <link rel="stylesheet" href="../TRIMS.css">
    <link rel="stylesheet" href="MaskStyles.css" />

    <script language="javascript" src="MaskJScript.js" type="text/javascript"></script>
       <script src="../JScript/jquery-1.6.3.min.js" type="text/javascript"></script>
     <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
                        <script type='text/javascript' src='../JScript/jquery.simplemodal.js'></script>

    <script language="vbscript" type="text/vbscript" src="../JScript/MsWordScript.vbs"></script>

  <script language="javascript"  type="text/javascript">
      var MainApplicationURL = ''

  </script>
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
    border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11;
    }
    .ReportNextRow{
    border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11; 
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
//alert(num & " " &  unit)
dim Today
Today=now
dim DateStr
    select case unit

        case 1  ' day
            DateStr=dateAdd("d",num,Today)
        case 2  ' week
            DateStr=dateAdd("ww",num,Today)

        case 3  ' month
            DateStr=dateAdd("m",num,Today)

        case 4 ' year
             DateStr=dateAdd("yyyy",num,Today)

    end select 

fnDateFormat=FormatDateTime(DateStr,2)

End Function


sub fnSetDateDiffValues(RowCnt, PreFix)
dim Today
Today=now
dim SelDateValue
SelDateValue = document.getElementById(PreFix + "DateStr" + RowCnt).value
dim DayDiff
DayDiff=DateDiff("y",Today,SelDateValue)

document.getElementById(PreFix + "Days_" + RowCnt).value= DayDiff 
 
document.getElementById(PreFix + "Unit_" + RowCnt).value=1  ' day

End sub


Function ValidDate(DateStr)

ValidDate="No"
  if IsDate(DateStr)=true then
  ValidDate= FormatDateTime(DateStr,2)
  end if
End Function

</script>

    <script language="javascript">

        var DateNoteFlag = false

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
            var ToDayUnit =  document.getElementById("ToUnit_" + RowCnt).value
            var ToDate = fnDateFormat(ToDays, ToDayUnit)

            document.getElementById("FromDateStr" + RowCnt).value = FromDate
            document.getElementById("ToDateStr" + RowCnt).value = ToDate

            DateNoteFlag = true
            //  document.getElementById("lblDateDisplay" + RowCnt).innerHTML = "<span style='background-color:lightblue' >From Date: " + FromDate + " </span>&nbsp; &nbsp;<span style='background-color:lightgreen' > To Date: " + ToDate + " </span>&nbsp; &nbsp;(mm/dd/yy)"


        }


        function ChkDate(RowCnt, PreFix) {
            DateValue = document.getElementById(PreFix + "DateStr" + RowCnt).value
            if (DateValue == "") {
                alert("Enter Valid Date in 'm/d/yy' format")
                fnSetDate(RowCnt, PreFix)
                return
            }

            var DateAry = new Array()
            DateAry = DateValue.split("/")
            if (DateAry.length != 3) {
                alert("Enter Valid Date in 'm/d/yy' format")
                fnSetDate(RowCnt, PreFix)
                return
            }

            var DateStr = ValidDate(DateValue)
            if (DateStr == "No") {
                alert("Enter Valid Date in 'm/d/yy' format")
                fnSetDate(RowCnt, PreFix)
                return
            } else {

                document.getElementById(PreFix + "DateStr" + RowCnt).value = DateStr
            }


            fnSetDateDiffValues(RowCnt, PreFix)
        }


        function fnSetDate(RowCnt, PreFix) {
            DateObj = document.getElementById(PreFix + "DateStr" + RowCnt)
            var Days = document.getElementById(PreFix + "Days_" + RowCnt).value
            if (isNaN(Days) == true || Days == '') {
                Days = -1
                document.getElementById(PreFix + "Days_" + RowCnt).value = '-1'
            }
            var Unit = document.getElementById(PreFix + "Unit_" + RowCnt).value
            DateObj.value = fnDateFormat(Days, Unit)
        }



        function Submit() {
            Form1.submit();
        }

        

        
    </script>
    
    
     
    <script language="javascript">

        function doSearch() {
            var searchText = document.getElementById('searchTerm').value;
            var targetTable = document.getElementById('IssueTab');
            var targetTableColCount;

            //Loop through table rows
            for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
                var rowData = '';

                //Get column count from header row
                if (rowIndex == 0) {
                    targetTableColCount = targetTable.rows.item(rowIndex).cells.length;
                    continue; //do not execute further code for header row.
                }

                //Process data rows. (rowIndex >= 1)
                for (var colIndex = 0; colIndex < targetTableColCount; colIndex++) {
                    rowData += targetTable.rows.item(rowIndex).cells.item(colIndex).innerText.replace(/ /g, '');
                }

                //If search term is not found in row data
                //then hide the row, else show
                rowData = rowData.toLowerCase();
                searchText = searchText.replace(/ /g, '');

                if (rowData.indexOf(searchText.toLowerCase()) == -1) {
                    targetTable.rows(rowIndex).className = 'HideRow';
                }
                else {
                    targetTable.rows(rowIndex).className = 'MainTD';
                }
            }
        }

       
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- Our activeX object -->
        <span style="display:none">
            <% Response.WriteFile("ActiveX.inc")
   %>
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
                            <asp:TableCell CssClass="MainTD"  Id="FIlterTD" runat="server">
                                <asp:Table ID="FilterTab" CssClass="SubTable" runat="server" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="left" BorderWidth="0">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>

                         <asp:TableRow>
                            <asp:TableCell CssClass="HideRow" ID="GroupTr"   runat="server" >
                                <asp:Table ID="GroupTab" CssClass="SubTable" runat="server" Width="700px" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="left" BorderWidth="0">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TopChsrtTr" CssClass="MainTD">
                            <asp:TableCell ID="TopChrtTd" CssClass="MainTD" Width="700px">
                          </asp:TableCell>                            
                        </asp:TableRow>

                          
                        
                        <asp:TableRow ID="TopChsrDetTr" CssClass="HideRow">
                           <asp:TableCell ID="TopChsrDetTD" style="overflow:auto;" CssClass="MainTD"   HorizontalAlign=left>
              
             	   <br /> Chart Local Configuration    <INPUT type=button title='Click here'  name=Popup class=RsnPUP Height="20px" id=BTN_Chart onclick=fnOpenChartConfig() >  
                          <br />
                        <asp:Label id="SummaryLbl" runat="server" style="color:Blue;cursor:hand;" CssClass="MainTD"  onClick="fnShowHideSummaryTab()"> Show / Hide Summary Table </asp:Label>
                        
             		 </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ChartExceptionMsgTr" runat="server"  CssClass="HideRow" HorizontalAlign=Center >
                       <asp:TableCell CssClass="MainTD" Font-Bold="true" ForeColor="Red" >Chart Combinations Are Not Compatible</asp:TableCell>
                       </asp:TableRow>
                      
                   <asp:TableRow ID="SummuryTR" CssClass="HideRow" runat="server" >
                         <asp:TableCell CssClass="MainTD">
                    <asp:Table ID="SummuryTab" runat="server" HorizontalAlign="left" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="700px" BackColor="white"  ></asp:Table>
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
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Width="700px" HorizontalAlign=Center >
                               Quick Local Search  <input type="text" id="searchTerm" onkeyup="doSearch()" class="UCTxtCls" style="width:200px" />
                            </asp:TableCell>
                            
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
     


<div id="DisplayValueDiv" runat="server" style="width: 20%; height: 10%" class="HideRow">
    <asp:Table ID="PrintSeltab" CssClass="SubTable" runat="server" Width="15%" Height='10%'>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
          
            <span id="Span1" >
                <select id="PrinterSelList" >
                 <option value=""> [ Select ] </option>
                 </select>
            </span>

            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
             <input id="SubmitBtn" type="button" value="Submit" onmouseover="this.className='ButOCls'"
        class='ButCls'  onmouseout="this.className='ButCls'"   onclick="CheckData()"/>
        
         <input id="CanCelBtn" type="button" value="Cancel" onmouseover="this.className='ButOCls'"
        class='ButCls' onmouseout="this.className='ButCls'"   onclick="CancelPrint()"/> 
        
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</div>
<input id="SelPrintTD" type="button" value="Print" onmouseover="this.className='ButexOCls'"
    class='HideRow' onmouseout="this.className='ButexCls'" onclick="Print()" />
 <input id="Button3" type="button" value="Export To Excel" onmouseover="this.className='ButexOCls'"
    class='HideRow' onmouseout="this.className='ButexCls'" onclick="ExportToExcel()" />
 <input id="Button4" type="button" value="Export To PDF" onmouseover="this.className='ButexOCls'"
    class='HideRow' onmouseout="this.className='ButexCls'" onclick="ExportToPDF()" />
  <input id="Button5" type="button" value="Export To Word" onmouseover="this.className='ButexOCls'"
    class='HideRow' onmouseout="this.className='ButexCls'" onclick="ExportToWord()" />
    
    


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
                      
                        <asp:TextBox runat="server" ID="FilterCnt"></asp:TextBox>
                          <asp:TextBox runat="server" ID="DrillDownCntTxt"></asp:TextBox>
                          <asp:TextBox runat="server" ID="GroupSetCntTxt"></asp:TextBox>
                           <asp:TextBox runat="server" ID="ThisGroupCntTxt"></asp:TextBox>
                           <asp:TextBox runat="server" ID="TrendCntTxt"></asp:TextBox>

                 <asp:TextBox runat="server" ID="ChartTitleTxt"></asp:TextBox>
                 <asp:TextBox runat="server" ID="SeriesNamesTxt"></asp:TextBox>
                 <asp:TextBox runat="server" ID="X_AxisTitleTxt"></asp:TextBox>
                 <asp:TextBox runat="server" ID="Y_AxisTitleTxt"></asp:TextBox>

                        
                            <asp:TextBox runat="server" ID="IsChartReConfig" Text=0></asp:TextBox>
                            <asp:TextBox runat="server" ID="ReConfigChartType" Text=Pie></asp:TextBox>
                            <asp:TextBox runat="server" ID="ReConfigChartAngle" Text=15></asp:TextBox>
                            <asp:TextBox runat="server" ID="ReConfigChart3D" Text=1></asp:TextBox>
                             <asp:TextBox runat="server" ID="ReConfigChartHeight"  Text=400></asp:TextBox>
                             <asp:TextBox runat="server" ID="ReConfigChartWidth"  Text=700></asp:TextBox>

                            
                  <asp:TextBox runat="server" ID="xCoordHolder"></asp:TextBox>
                    <asp:TextBox runat="server" ID="yCoordHolder"></asp:TextBox>
     
     <asp:TextBox runat="server" ID="UserIDTxt"></asp:TextBox>
                  <asp:TextBox runat="server" ID="PlantCodeTxt"></asp:TextBox>
             
                   <asp:TextBox runat="server" ID="ExistingReportID"></asp:TextBox>
                 
                
                 <asp:TextBox runat="server" ID="CatIDListTxt"></asp:TextBox>
                 <asp:TextBox runat="server" ID="SubReportIDListTxt"></asp:TextBox>
                  <asp:TextBox runat="server" ID="MainReportIdTxt"></asp:TextBox>
                   <asp:TextBox runat="server" ID="IsSubReportTxt"></asp:TextBox>
                <asp:TextBox runat="server" ID="MainReportDrillCntTxt"></asp:TextBox>
               
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
    </div>
    
          
    </form>

     <script language="javascript">

         if (DateNoteFlag == true) {
             NoteLblObj = document.getElementById("NoteLbl")
             NoteLblObj.innerHTML = NoteLblObj.innerHTML + "** Date values can be set either with ± duration w.r.t current date or Entering values in textboxes in 'm/d/yyyy' format"
             DateNoteFlag = true
         }

            </script>

              <script language="javascript">
<!--

                  function Filter_Popup(RowCnt, ControlId, DataType, ObjectType) {
                      var pageURL = ""

                      switch (parseInt(DataType)) {
                          case 1:  // Popup
                              pageURL = "ChkListPopup.aspx"
                              break;
                          case 2: // DropDown
                              pageURL = "DepartmentList.aspx?"
                              break;
                          case 3: //Check bOx
                              pageURL = "ChkListPopup.aspx?"
                              break;
                          case 4: // Radi Button
                              pageURL = "ChkListPopup.aspx?"
                              break;
                          case 17: // Multi Object  Reference
                              pageURL = "MultirefObjPopup.aspx?"
                              break;
                      }

                      var FilAName = document.getElementById("FiltAliasCap" + RowCnt).value

                      var Parmstr = "RowCnt=" + RowCnt + "&ControlId=" + ControlId + "&ObjectType=" + ObjectType + "&FilAName=" + FilAName //+ "DataType=" + DataType
                      pageURL = pageURL + Parmstr

                      var winHeight = 450
                      var winWidth = (screen.availWidth / 100) * 60;
                      var SpWinObj = window.open(pageURL, 'FilterPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
                      if (SpWinObj.opener == null) SpWinObj.opener = self;
                      SpWinObj.focus();


                  }


                  function SetDefaultValue(RowCnt, LblValue, TxtValue) {
                      document.getElementById("FiltDefualtLbl" + RowCnt).innerHTML = LblValue.replace("&amp;","&")
                      document.getElementById("FiltDefualtTxt" + RowCnt).value = LblValue.replace("&amp;", "&")
                      document.getElementById("FiltDefualtDataIDs" + RowCnt).value = TxtValue.replace("&amp;", "&")
                  }


                  function fnCheckSortSeqNo(SortSeqNoID) {
                      var SortSeqNo = document.getElementById(SortSeqNoID).value
                      var SelectCntVal = document.getElementById("SelectCnt").value
                      if (isNaN(SortSeqNo) == true) {
                          alert("Enter Integer Value From 1 To " + SelectCntVal)
                          document.getElementById(SortSeqNoID).focus()
                      }
                  }

                  ////----------------------

                  function System_Fld_Popup(RowCnt, ControlId, DataType, ObjectType) {
                      var pageURL = "Sys_ChkListPopup.aspx?"

                      var FilAName = document.getElementById("FiltAliasCap" + RowCnt).value
                      var Parmstr = "RowCnt=" + RowCnt + "&ControlId=" + ControlId + "&ObjectType=" + ObjectType + "&FilAName=" + FilAName + "&DataType=" + DataType
                      pageURL = pageURL + Parmstr

                      var winHeight = 450
                      var winWidth = (screen.availWidth / 100) * 60;
                      var SpWinObj = window.open(pageURL, 'FilterPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
                      if (SpWinObj.opener == null) SpWinObj.opener = self;
                      SpWinObj.focus();


                  }

                 
                  function fnOpenPage(InputValue, SrcType) {
                   
                       var Guid=''
                      var ErrorMsg=''
                      var UserID = document.getElementById("UserIDTxt").value
                      var PlantCode = document.getElementById("PlantCodeTxt").value 
                      var paramString = MakeParameterList(["InputValue", InputValue, "SrcType", SrcType, "UserID", UserID, "PlantCode", PlantCode])

                      $.ajax({
                          type: "POST",
                          url: "Proxy_Ajax.aspx/GetGuID",
                          data: paramString,
                          contentType: "application/json; charset=utf-8",
                          dataType: "json",
                          success: function (response) {
                              Guid = response.d;
                              OpenCommonPopup(Guid);
                          },
                          failure: function (msg) {
                              ErrorMsg = msg;
                          }
                      });
                     

//                      var callUrl = document.getElementById("callUrlTxt").value
//                      var callUrlAry = new Array()
//                      callUrlAry = callUrl.split('/')
//                      var PreURLAry = new Array()
//                      for (i = 0; i < callUrlAry.length - 2; i++) {
//                          PreURLAry[i] = callUrlAry[i]
//                      }
//                      alert(callUrl)

//                      var pageURL = PreURLAry.join('/') + UrlVal

//                      alert(pageURL)
//                      var winHeight = 400
//                      var winWidth = (screen.availWidth / 100) * 90;
//                      var SpWinObj = window.open(pageURL, 'ReportPreviewPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
//                      if (SpWinObj.opener == null) SpWinObj.opener = self;
//                      SpWinObj.focus();

                  }
                  ////---------------------------

                  var ProxyWinObj=null

                  function OpenCommonPopup(Guid) {
                 
                      if (ProxyWinObj != null)
                          ProxyWinObj.close();

                      var winHeight = 800
                            var UserID = document.getElementById("UserIDTxt").value
                            var PC = document.getElementById("PlantCodeTxt").value
                            
                      var pageURL = MainApplicationURL + 'ReportConfig/ReportProxy.aspx?Uid='+ UserID + '&PC=' + PC + '&Skey=' + Guid   
                       
                            var winWidth = (screen.availWidth / 100) * 90;
                              ProxyWinObj = window.open(pageURL, 'ReportPreviewPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
                            if (ProxyWinObj.opener == null) ProxyWinObj.opener = self;
                            ProxyWinObj.focus();
                }

//-->
    </script>

   <script language="javascript"> 
<!--

       function GetSubReportID(SelCatID) {
           var SubReportID = 0
      
           var CatIDList = document.getElementById("CatIDListTxt").value
           
           var SubReportIDList = document.getElementById("SubReportIDListTxt").value
           if ((CatIDList == '') || (SubReportIDList == '')) {
               return SubReportID
               
         }
         var CatIDListAry = new Array
         CatIDListAry = CatIDList.split(',')
         var SubReportIDListAry = new Array
         SubReportIDListAry = SubReportIDList.split(',')
         for (i = 0; i < CatIDListAry.length; i++) {
             if (CatIDListAry[i] == SelCatID) {
                 SubReportID = SubReportIDListAry[i]
                  break;
             }
         }
         return SubReportID
          

       }
       function fnDrillDown(DDLCnt, ThisGroupCnt, trendCount, IndexVal, InegrationChk) {
           var UserID = document.getElementById("UserIDTxt").value
           var PlantCode = document.getElementById("PlantCodeTxt").value
           var MainReport
           var MainReportID = document.getElementById("MainReportIdTxt").value
            if (MainReportID != '') {
               DDLCnt = DDLCnt*1
               var MainReportDrillCnt = parseInt(document.getElementById("MainReportDrillCntTxt").value)
               if (DDLCnt - MainReportDrillCnt < 1) {
                  document.getElementById("form1").action = "Report3.aspx?Uid=" + UserID + "&RptId=" + MainReportID + "&PC=" + PlantCode + ""
              }
           }     
            IndexVal = IndexVal * 1
           ThisGroupCnt = ThisGroupCnt * 1
           DDLCnt = DDLCnt * 1
           trendCount = trendCount * 1

           var g = (DDLCnt * 1) - 1
           var GroupDefualtLbl_ID
           var GroupDefualtTxt_ID
           var GroupDefualtDataIDs_ID
           var XIdCol_ID
           var XValCol_ID
           var h = 0

                   
           for (h = 0; h < ThisGroupCnt; h++) {

               GroupDefualtLbl_ID = "GroupDefualtLbl" + (g + 1) + "_" + (h + 1)
               GroupDefualtTxt_ID = "GroupDefualtTxt" + (g + 1) + "_" + (h + 1)
               GroupDefualtDataIDs_ID = "GroupDefualtDataIDs" + (g + 1) + "_" + (h + 1)

               XIdCol_ID = "XIdCol" + (IndexVal + 1) + "_" + (h + 1)
               XValCol_ID = "XValCol" + (IndexVal + 1) + "_" + (h + 1)

               document.getElementById(GroupDefualtDataIDs_ID).value = document.getElementById(XIdCol_ID).innerText
               document.getElementById(GroupDefualtTxt_ID).value = document.getElementById(XValCol_ID).innerText
               document.getElementById(GroupDefualtLbl_ID).innerText = document.getElementById(XValCol_ID).innerText

           } // for h

           var Trend_LblVal_ID
           var Trend_TdVal_ID
           var Yval_ID
           h = 0
           var t = 0
           for (t = 0; t < trendCount; t++) {

               Trend_LblVal_ID = "Trend_LblVal" + (g + 1) + "_" + (h + 1) + "_" + (t + 1)
               Trend_TdVal_ID = "Trend_TdVal" + (g + 1) + "_" + (h + 1) + "_" + (t + 1)
               Yval_ID = "Yval" + (IndexVal + 1) + "_" + (t + 1)

               document.getElementById(Trend_LblVal_ID).innerText = document.getElementById(Yval_ID).innerText
               document.getElementById(Trend_TdVal_ID).value = document.getElementById(Yval_ID).innerText

           } //for t




           var DrillDownCntTxtObj = document.getElementById("DrillDownCntTxt");
           DrillDownCntTxtObj.value = DDLCnt + 1
           var GroupSetCnt = parseInt(document.getElementById("GroupSetCntTxt").value)

         
           if (GroupSetCnt - DDLCnt > 0) {
               
           //    document.getElementById("form1").action = "Report3.aspx?Uid=" + UserID + "&RptId=" + ReportId + "&PC=" + PlantCode + ""
               document.getElementById("GoBtn").click();
           } else {
               var CatID = document.getElementById(GroupDefualtDataIDs_ID).value
               var SubReportID =0
               if (InegrationChk == 1) {
                   var SubReportID = GetSubReportID(CatID);
                  
               }
               if (!SubReportID >0) {
                   alert('This is Last Option')
               } else {
                   document.getElementById("form1").action = "Report3.aspx?Uid=" + UserID + "&RptId=" + SubReportID + "&PC=" + PlantCode + ""
               document.getElementById("GoBtn").click();
           
               }
           } //if
       } //function

       function fnGoToDrillDown(g, h, trendCount, InegrationChk) {

           var UserID = document.getElementById("UserIDTxt").value
           var PlantCode = document.getElementById("PlantCodeTxt").value
           var MainReport
           var MainReportID = document.getElementById("MainReportIdTxt").value
            if (MainReportID != '') {
              var DDLCnt = g * 1
               var MainReportDrillCnt = parseInt(document.getElementById("MainReportDrillCntTxt").value)
               if (DDLCnt - MainReportDrillCnt < 1) {
                   document.getElementById("form1").action = "Report3.aspx?Uid=" + UserID + "&RptId=" + MainReportID + "&PC=" + PlantCode + ""
               }
           }     
           var GroupDefualtLbl_ID
           var GroupDefualtTxt_ID
           var GroupDefualtDataIDs_ID

           GroupDefualtLbl_ID = "GroupDefualtLbl" + (g) + "_" + (h)
           GroupDefualtTxt_ID = "GroupDefualtTxt" + (g) + "_" + (h)
           GroupDefualtDataIDs_ID = "GroupDefualtDataIDs" + (g) + "_" + (h)

           document.getElementById(GroupDefualtDataIDs_ID).value = ""
           document.getElementById(GroupDefualtTxt_ID).value = ""
           document.getElementById(GroupDefualtLbl_ID).innerText = ""

           var Trend_LblVal_ID
           var Trend_TdVal_ID
           var Yval_ID
           trendCount = trendCount * 1

           var t = 0
           for (t = 0; t < trendCount; t++) {

               Trend_LblVal_ID = "Trend_LblVal" + (g) + "_" + (h) + "_" + (t + 1)
               Trend_TdVal_ID = "Trend_TdVal" + (g) + "_" + (h) + "_" + (t + 1)

               document.getElementById(Trend_LblVal_ID).innerText = ""
               document.getElementById(Trend_TdVal_ID).value = ""

           } //for t




           document.getElementById("DrillDownCntTxt").value = g

       //   document.getElementById("form1").action = "Report3.aspx?Uid=" + UserID + "&RptId=" + ReportId + "&PC=" + PlantCode + ""
                var CatID = document.getElementById(GroupDefualtDataIDs_ID).value
               var SubReportID =0
               if (InegrationChk == 1) {
                   var SubReportID = GetSubReportID(CatID);
               }
               if (SubReportID > 0) {
                       document.getElementById("form1").action = "Report3.aspx?Uid=" + UserID + "&RptId=" + SubReportID + "&PC=" + PlantCode + ""
                 }
           document.getElementById("GoBtn").click();
       }

//-->
    </script>

 <script language="javascript"> 
<!--
     function sstchur_SmartScroller_GetCoords() {
         var scrollX, scrollY;

         if (document.all) {
             if (!document.documentElement.scrollLeft)
                 scrollX = document.body.scrollLeft;
             else
                 scrollX = document.documentElement.scrollLeft;

             if (!document.documentElement.scrollTop)
                 scrollY = document.body.scrollTop;
             else
                 scrollY = document.documentElement.scrollTop;
         }
         else {
             scrollX = window.pageXOffset;
             scrollY = window.pageYOffset;
         }

         document.getElementById('xCoordHolder').value = scrollX;
        document.getElementById('yCoordHolder').value = scrollY;
     }

     function sstchur_SmartScroller_Scroll() {
         var x = document.getElementById('xCoordHolder').value;
         var y = document.getElementById('yCoordHolder').value;
         window.scrollTo(x, y);
     }

     window.onload = sstchur_SmartScroller_Scroll;
     window.onscroll = sstchur_SmartScroller_GetCoords;
     window.onkeypress = sstchur_SmartScroller_GetCoords;
     window.onclick = sstchur_SmartScroller_GetCoords;
   


//-->
    </script>
    
    <script language="javascript"> 
    
    <!--
        function AjaxLoadChart() {
 
            var ParameString = ""

            //ReConfigChartType.Text = Request.Form("ReConfigChartType").ToString
            //                ReConfigChartAngle.Text = Request.Form("ReConfigChartAngle").ToString
            //                ReConfigChart3D.Text = Request.Form("ReConfigChart3D").ToString
            //                ReConfigChartHeight.Text = Request.Form("ReConfigChartHeight").ToString
            //                ReConfigChartWidth.Text = Request.Form("ReConfigChartWidth").ToString


            var ChartHeight = document.getElementById("ReConfigChartHeight").value
            ParameString += MakeParameterList2(["ChartHeight", ChartHeight])

            var ChartWidht = document.getElementById("ReConfigChartWidth").value
            ParameString += ',';
            ParameString += MakeParameterList2(["ChartWidht", ChartWidht])

            var ChartTitle = "DEMO"
            ChartTitle = ChartTitle.replace(",", " ").replace(":", " ")
            ParameString += ',';
            ParameString += MakeParameterList2(["ChartTitle", ChartTitle])

            var SeriesNames = "A#*#B"
            SeriesNames = SeriesNames.replace(",", " ").replace(":", " ")
            ParameString += ',';
            ParameString += MakeParameterList2(["SeriesNames", SeriesNames])

            var ChartTypeNames = "Column"
            ParameString += ',';
            ParameString += MakeParameterList2(["ChartTypeNames", ChartTypeNames])


            var X_AxisTitle = "X Axis"
            X_AxisTitle = X_AxisTitle.replace(",", " ").replace(":'", " ")
            ParameString += ',';
            ParameString += MakeParameterList2(["X_AxisTitle", X_AxisTitle])


            var Y_AxisTitle = "Y Axis"
            Y_AxisTitle = Y_AxisTitle.replace(",", " ").replace(":'", " ")
            ParameString += ',';
            ParameString += MakeParameterList2(["Y_AxisTitle", Y_AxisTitle])


            var IsChart3D = document.getElementById("ReConfigChart3D").value
            ParameString += ',';
            ParameString += MakeParameterList2(["IsChart3D", IsChart3D])

            var ChartInclination = document.getElementById("ReConfigChartAngle").value
            ParameString += ',';
            ParameString += MakeParameterList2(["ChartInclination", ChartInclination])

            var DrillDownCnt = document.getElementById("DrillDownCntTxt")
            ParameString += ',';
            ParameString += MakeParameterList2(["DrillDownCnt", DrillDownCnt])

            var ThisGroupCnt = document.getElementById("ThisGroupCntTxt")
            ParameString += ',';
            ParameString += MakeParameterList2(["ThisGroupCnt", ThisGroupCnt])


            var TrendCount = document.getElementById("TrendCntTxt")
            ParameString += ',';
            ParameString += MakeParameterList2(["TrendCount", TrendCount])

            var IsPereto = 0
            ParameString += ',';
            ParameString += MakeParameterList2(["IsPereto", IsPereto])

            var Pereto_Y = 1
            ParameString += ',';
            ParameString += MakeParameterList2(["Pereto_Y", Pereto_Y])

            var UnitType = 2
            ParameString += ',';
            ParameString += MakeParameterList2(["UnitType", UnitType])

            var XY_XMLString

            XY_XMLString = ""
            XY_XMLString += "<Ds>"
            XY_XMLString += "<TB>"
            XY_XMLString += "<XI1>1.1</XI1>"
            XY_XMLString += "<XV1>D1.1</XV1>"
            XY_XMLString += "<XI2>1.2</XI2>"
            XY_XMLString += "<XV2>D1.2</XV2>"
            XY_XMLString += "<Y1>5</Y1>"
            XY_XMLString += "<Y2>10</Y2>"
            XY_XMLString += "</TB>"

            for (i = 2; i < 20; i++) {
                XY_XMLString += "<TB>"
                XY_XMLString += "<XI1>" + i + "</XI1>"
                XY_XMLString += "<XV1>D" + i + "</XV1>"
                XY_XMLString += "<XI2>" + i + ".2</XI2>"
                XY_XMLString += "<XV2>D" + i + ".2</XV2>"
                XY_XMLString += "<Y1>" + Math.random(100) + "</Y1>"
                XY_XMLString += "<Y2>" + Math.random(78) + "</Y2>"
                XY_XMLString += "</TB>"
            }

            XY_XMLString += "</Ds>"

            XY_XMLString = XY_XMLString.replace(",", " ").replace(":'", " ")

            ParameString += ',';
            ParameString += MakeParameterList2(["XY_XMLString", XY_XMLString])


            ParameString = "{" + ParameString + "}";

            //http://localhost/CaliberReportService/ReportViewer/
            // alert(ParameString)
            // var url2 = "http:" + "//" + "localhost/CaliberReportService/ReportViewer/" + "ChartRender.aspx" + "/ChartHTML3"
            //
            var url2 = "http:" + "//" + "localhost:55744/Reportviewer/" + "ChartRender.aspx" + "/ChartHTML2"

            $.ajax({
                type: "POST",
                url: url2,
                data: ParameString,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $('#RSSContent').removeClass('loading');
                    $('#RSSContent').text(response.d);
                },
                failure: function (msg) {
                    $('#RSSContent').html(msg);
                }
            });
        }


        function MakeParameterList2(paramArray) {

            //-------------------------------------------------------------------------+

            // Create list of parameters in the form:                                  |

            // {"paramName1":"paramValue1","paramName2":"paramValue2"}                 |

            //-------------------------------------------------------------------------+

            var paramList = '';

            if (paramArray.length > 0) {

                for (var i = 0; i < paramArray.length; i += 2) {

                    if (paramList.length > 0) paramList += ',';

                    paramList += '"' + paramArray[i] + '":"' + paramArray[i + 1] + '"';

                }

            }



            return paramList;

        }
//-->
    </script>
    <script language="javascript">


        function fnOpenChartConfig() {
            var pageURL

            pageURL = "ChartConfiguration.aspx?"

            pageURL += "chartType=" + document.getElementById("ReConfigChartType").value
            pageURL += "&ChartAngle=" + document.getElementById("ReConfigChartAngle").value
            pageURL += "&Chart3D=" + document.getElementById("ReConfigChart3D").value
            pageURL += "&Height=" + document.getElementById("ReConfigChartHeight").value
            pageURL += "&Width=" + document.getElementById("ReConfigChartWidth").value


            var winHeight = 600
            var winWidth = (screen.availWidth / 100) * 80;
            var SpWinObj = window.open(pageURL, 'ChartTesterPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();


        }

        function SetChartConfigValues2(chartType, ChartAngle, Chart3D, ChartHeight, ChartWidth) {
            document.getElementById("IsChartReConfig").value = 1
            document.getElementById("ReConfigChartType").value = chartType
            document.getElementById("ReConfigChartAngle").value = ChartAngle
            document.getElementById("ReConfigChart3D").value = Chart3D
            document.getElementById("ReConfigChartHeight").value = ChartHeight
            document.getElementById("ReConfigChartWidth").value = ChartWidth
            document.getElementById("GoBtn").click();
        }

        function fnShowHideSummaryTab() {
            var SummaryTRObj = document.getElementById("SummuryTR")
            if (SummaryTRObj.className == "MainTD") {
                SummaryTRObj.className = "HideRow"
            } else {
                SummaryTRObj.className = "MainTD"
            }
        }
    </script>
    
    
<script language="javascript">

   

    (function ($) {
        $(window).unload(function () {
            var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
            if (CaliberDocumentViewerIns != null) {
                if (CaliberDocumentViewerIns.IsDocumentLoaded == true) {
                    CaliberDocumentViewerIns.CloseControl();
                }
            }
        });
    })(jQuery);

    function ExportToExcel() {
        ShowMask();
        var Styles = "<style type=\"text/css\"> .ReportSubTable{  border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;  color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;background:#54a2cc; } .ReportHeaderTd{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11 color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px; } .ReportFirstRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11 } .ReportNextRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11 }   .MsoTableGrid Td   {color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MsoNormal  {color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MainSubTD  {color :#Black; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;border-color:#ffffff;border-bottom-color:#ffffff;border-top-color:#5fa8cf;border-right-color:#5fa8cf;border-left-color:#5fa8cf;  }    .ChangeColor  {Background-color:#eefce6;border:solid #c8e3b8 1 pt;  }    .OldColor  {Background-color:#5fa8cf;border:solid #5fa8cf 1 pt;  }    </style> <style type=\"text/css\"> .ReportSubTable{  border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;  color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;background:#54a2cc; } .ReportHeaderTd{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11 color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px; } .ReportFirstRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11; } .ReportNextRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11;  }   .MsoTableGrid Td   {color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MsoNormal  {color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MainSubTD  {color :#Black; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;border-color:#ffffff;border-bottom-color:#ffffff;border-top-color:#5fa8cf;border-right-color:#5fa8cf;border-left-color:#5fa8cf;  }    .ChangeColor  {Background-color:#eefce6;border:solid #c8e3b8 1 pt;  }    .OldColor  {Background-color:#5fa8cf;border:solid #5fa8cf 1 pt;  }    </style>"

        var FileName = "IssueReport";
        var TempDorPath = CaliberDocumentViewerIns.GetTempPath();
        var FilePath = "c:\\" + FileName + ".xls";
        var PDFFilePath = "c:\\" + FileName + ".pdf";

        var BData = Styles + document.getElementById("IssueTab").outerHTML;
        var BDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BData == "" ? "  " : BData), "BD");
        CaliberDocumentViewerIns.LoadExcelDocument(BDataPath);

        //  CaliberDocumentViewerIns.ExcelInstance.ExcelWorkBook.PageSetup.PaperSize = "Ledger"
        //SetPageDimentions()
        // CaliberDocumentViewerIns.ExportDocumentToPDF(PDFFilePath)

        var oBook = CaliberDocumentViewerIns.ExcelWorkBook;

        oBook.WorkSheets(1).Protect("caliber_09")
        HideMask();
        oBook.Application.Dialogs(5).Show(FilePath);
         CaliberDocumentViewerIns.CloseControl();
        // CaliberDocumentViewerIns.SaveExcelSharedFile(FilePath);
        //  HideMask();

        //LoadExcelDocument
    }


    function ExportToPDF() {
        ShowMask();
        var Styles = "<style type=\"text/css\"> .ReportSubTable{  border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;  color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;background:#54a2cc; } .ReportHeaderTd{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11 color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px; } .ReportFirstRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11 } .ReportNextRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11 }   .MsoTableGrid Td   {color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MsoNormal  {color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MainSubTD  {color :#Black; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;border-color:#ffffff;border-bottom-color:#ffffff;border-top-color:#5fa8cf;border-right-color:#5fa8cf;border-left-color:#5fa8cf;  }    .ChangeColor  {Background-color:#eefce6;border:solid #c8e3b8 1 pt;  }    .OldColor  {Background-color:#5fa8cf;border:solid #5fa8cf 1 pt;  }    </style> <style type=\"text/css\"> .ReportSubTable{  border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;  color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;background:#54a2cc; } .ReportHeaderTd{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11 color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px; } .ReportFirstRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11; } .ReportNextRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11;  }   .MsoTableGrid Td   {color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MsoNormal  {color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MainSubTD  {color :#Black; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;border-color:#ffffff;border-bottom-color:#ffffff;border-top-color:#5fa8cf;border-right-color:#5fa8cf;border-left-color:#5fa8cf;  }    .ChangeColor  {Background-color:#eefce6;border:solid #c8e3b8 1 pt;  }    .OldColor  {Background-color:#5fa8cf;border:solid #5fa8cf 1 pt;  }    </style>"

        var HData = Styles + "Header Lines" ///document.getElementById("HDataTd").innerHTML;
        var BData = Styles + document.getElementById("IssueTab").outerHTML;
        var FData = Styles + "Footer Lines"//document.getElementById("FDataTd").innerHTML;

        var HDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((HData == "" ? "  " : HData), "HD");
        var BDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BData == "" ? "  " : BData), "BD");
        var FDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((FData == "" ? "  " : FData), "FD");

        var TemplatePath = "C:\\caliberAX\\Template.dot" //getTemplatePath();
        var Orientation = 2;
        CaliberDocumentViewerIns.LoadDocument(TemplatePath, true);


        if (CaliberDocumentViewerIns.IsDocumentLoaded == false) {
            alert("File Not Loaded");
            CaliberDocumentViewerIns.CloseControl();
            HideMask();
            return;
        }
        CaliberDocumentViewerIns.InsertFilesInSection(BDataPath, HDataPath, FDataPath, Orientation, 1);

        var FileName = "WordReport";
        var TempDorPath = "C:\\"   //CaliberDocumentViewerIns.GetTempPath();
        var FilePath = TempDorPath + FileName + ".doc";
        CaliberDocumentViewerIns.Save(FilePath);
        var PDFFilePath = "c:\\" + "PDFReport" + ".pdf";

        CaliberDocumentViewerIns.ExportDocumentToPDF(PDFFilePath)
        HideMask();

        CaliberDocumentViewerIns.CloseControl();


    }
    function SetPageDimentions() {
        
        var TopMargin = 0.5;
        var BottomMargin = 0.5;
        var LeftMargin = 0.5;
        var RightMargin = 0.5;
        var PaperSize = 41;
        var HeaderDistance = 0.5;
        var FooterDistance = 0.5;

        //    if(document.getElementById("TopMarginTxt")){if(document.getElementById("TopMarginTxt").value != ""){TopMargin = document.getElementById("TopMarginTxt").value;}}
        //    if(document.getElementById("BottomMarginTxt")){if(document.getElementById("BottomMarginTxt").value != ""){BottomMargin = document.getElementById("BottomMarginTxt").value;}}
        //    if(document.getElementById("LeftMarginTxt")){if(document.getElementById("LeftMarginTxt").value != ""){LeftMargin = document.getElementById("LeftMarginTxt").value;}}
        //    if(document.getElementById("RightMarginTxt")){if(document.getElementById("RightMarginTxt").value != ""){RightMargin = document.getElementById("RightMarginTxt").value;}}
        //    if(document.getElementById("PageWidthTxt")){if(document.getElementById("PageWidthTxt").value != ""){PageWidth = document.getElementById("PageWidthTxt").value;}}
        //    if(document.getElementById("PageHeightTxt")){if(document.getElementById("PageHeightTxt").value != ""){PageHeight = document.getElementById("PageHeightTxt").value;}}
        //    if(document.getElementById("PaperSizeTxt")){if(document.getElementById("PaperSizeTxt").value != ""){PaperSize = document.getElementById("PaperSizeTxt").value;}}
        //    if(document.getElementById("HeaderDistanceTxt")){if(document.getElementById("HeaderDistanceTxt").value != ""){HeaderDistance = document.getElementById("HeaderDistanceTxt").value;}}
        //    if(document.getElementById("FooterDistanceTxt")){if(document.getElementById("FooterDistanceTxt").value != ""){FooterDistance = document.getElementById("FooterDistanceTxt").value;}}

        //CaliberDocumentViewerIns.SetPageMargins(TopMargin, BottomMargin, LeftMargin, RightMargin)
        //CaliberDocumentViewerIns.SetHeaderFooterDistance(HeaderDistance,FooterDistance);
        //CaliberDocumentViewerIns.SetPageDimensions(PageWidth,PageHeight,PaperSize);
        var PageWidth = 30;
        var PageHeight = 10;

        //Worddocument.PageSetup.PaperSize = PaperSize;
        //Worddocument.PageSetup.PageWidth = WordInstance.InchesToPoints(PageWidth);
        //Worddocument.PageSetup.PageHeight = WordInstance.InchesToPoints(PageHeight);

    }


    function _printDocumentCall() {

        //        if(CaliberDocumentViewerIns.IsDocumentLoaded ==true)
        //        {
        //            CaliberDocumentViewerIns.PrintDocument1(PrinterName);
        //            return;
        //        }


        var Styles = "<style type=\"text/css\"> .ReportSubTable{  border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;  color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;background:#54a2cc; } .ReportHeaderTd{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11 color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px; } .ReportFirstRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11 } .ReportNextRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11 }   .MsoTableGrid Td   {color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MsoNormal  {color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MainSubTD  {color :#Black; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;border-color:#ffffff;border-bottom-color:#ffffff;border-top-color:#5fa8cf;border-right-color:#5fa8cf;border-left-color:#5fa8cf;  }    .ChangeColor  {Background-color:#eefce6;border:solid #c8e3b8 1 pt;  }    .OldColor  {Background-color:#5fa8cf;border:solid #5fa8cf 1 pt;  }    </style> <style type=\"text/css\"> .ReportSubTable{  border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;  color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;background:#54a2cc; } .ReportHeaderTd{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11 color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px; } .ReportFirstRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11; } .ReportNextRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11;  }   .MsoTableGrid Td   {color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MsoNormal  {color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MainSubTD  {color :#Black; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;border-color:#ffffff;border-bottom-color:#ffffff;border-top-color:#5fa8cf;border-right-color:#5fa8cf;border-left-color:#5fa8cf;  }    .ChangeColor  {Background-color:#eefce6;border:solid #c8e3b8 1 pt;  }    .OldColor  {Background-color:#5fa8cf;border:solid #5fa8cf 1 pt;  }    </style>"

        var HData = Styles + "Header Lines" ///document.getElementById("HDataTd").innerHTML;
        var BData = Styles + document.getElementById("IssueTab").outerHTML;
        var FData = Styles + "Footer Lines"//document.getElementById("FDataTd").innerHTML;

        var HDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((HData == "" ? "  " : HData), "HD");
        var BDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BData == "" ? "  " : BData), "BD");
        var FDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((FData == "" ? "  " : FData), "FD");

        var TemplatePath = "C:\\caliberAX\\Template.dot" //getTemplatePath();
        var Orientation = 2;
        CaliberDocumentViewerIns.LoadDocument(TemplatePath, true);


        if (CaliberDocumentViewerIns.IsDocumentLoaded == false) {
            alert("File Not Loaded");
            CaliberDocumentViewerIns.CloseControl();
            HideMask();
            return;
        }
        CaliberDocumentViewerIns.InsertFilesInSection(BDataPath, HDataPath, FDataPath, Orientation, 1);

        var FileName = "IssueReport";
        var PageWidth = 22;
        var PageHeight = 10;
        var PaperSize = 41
        var Worddocument = CaliberDocumentViewerIns.WordInstance.ActiveDocument
        var WordInstance = CaliberDocumentViewerIns.WordInstance
        Worddocument.PageSetup.PaperSize = PaperSize;
        Worddocument.PageSetup.PageWidth = WordInstance.InchesToPoints(PageWidth);
        Worddocument.PageSetup.PageHeight = WordInstance.InchesToPoints(PageHeight);




        var TempDorPath = CaliberDocumentViewerIns.GetTempPath();

        var FilePath = TempDorPath + FileName + ".doc";

        CaliberDocumentViewerIns.Save(FilePath);
        CaliberDocumentViewerIns.PrintDocument1(PrinterName)
        HideMask();


    }

    function ExportToWord() {

        ShowMask();
      
        var Styles = "<style type=\"text/css\"> .ReportSubTable{  border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;  color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;background:#54a2cc; } .ReportHeaderTd{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11 color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px; } .ReportFirstRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11 } .ReportNextRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11 }   .MsoTableGrid Td   {color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MsoNormal  {color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MainSubTD  {color :#Black; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;border-color:#ffffff;border-bottom-color:#ffffff;border-top-color:#5fa8cf;border-right-color:#5fa8cf;border-left-color:#5fa8cf;  }    .ChangeColor  {Background-color:#eefce6;border:solid #c8e3b8 1 pt;  }    .OldColor  {Background-color:#5fa8cf;border:solid #5fa8cf 1 pt;  }    </style> <style type=\"text/css\"> .ReportSubTable{  border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;  color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;background:#54a2cc; } .ReportHeaderTd{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#54a2cc;font-weight:bold;font-size:11 color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px; } .ReportFirstRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#FFFFFF;font-weight:normal;font-size:11; } .ReportNextRow{ border:solid #5fa8cf 1 pt;font-family:Calibri(Body);background:#dcebf2;font-weight:normal;font-size:11;  }   .MsoTableGrid Td   {color :Black; font-weight:600; Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MsoNormal  {color :#fcfceb; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;  }    .MainSubTD  {color :#Black; font-weight:600; font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;border-color:#ffffff;border-bottom-color:#ffffff;border-top-color:#5fa8cf;border-right-color:#5fa8cf;border-left-color:#5fa8cf;  }    .ChangeColor  {Background-color:#eefce6;border:solid #c8e3b8 1 pt;  }    .OldColor  {Background-color:#5fa8cf;border:solid #5fa8cf 1 pt;  }    </style>"

        var HData = Styles + "Header Lines" ///document.getElementById("HDataTd").innerHTML;
        var BData = Styles + document.getElementById("IssueTab").outerHTML;
        var FData = Styles + "Footer Lines"//document.getElementById("FDataTd").innerHTML;

        var HDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((HData == "" ? "  " : HData), "HD");
        var BDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BData == "" ? "  " : BData), "BD");
        var FDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((FData == "" ? "  " : FData), "FD");

        var TemplatePath = "C:\\caliberAX\\Template.dot" //getTemplatePath();
        var Orientation = 2;
        CaliberDocumentViewerIns.LoadDocument(TemplatePath, true);


        if (CaliberDocumentViewerIns.IsDocumentLoaded == false) {
            alert("File Not Loaded");
            CaliberDocumentViewerIns.CloseControl();
            HideMask();
            return;
        }
 
        CaliberDocumentViewerIns.InsertFilesInSection(BDataPath, HDataPath, FDataPath, Orientation, 1);

        var FileName = "IssueReport";
        var PageWidth = 22;
        var PageHeight = 10;
        var PaperSize = 41
        var Worddocument = CaliberDocumentViewerIns.WordInstance.ActiveDocument
        var WordInstance = CaliberDocumentViewerIns.WordInstance
        Worddocument.PageSetup.PaperSize = PaperSize;
        Worddocument.PageSetup.PageWidth = WordInstance.InchesToPoints(PageWidth);
        Worddocument.PageSetup.PageHeight = WordInstance.InchesToPoints(PageHeight);




        var TempDorPath = CaliberDocumentViewerIns.GetTempPath();

        var FilePath = "C:\\" + FileName + ".doc";
        HideMask()
        //document.execCommand("saveas",false,FilePath);
        CaliberDocumentViewerIns.Save(FilePath);
        //  Worddocument.SaveAs(FilePath)
        // WordInstance.Documents.Save(false)
        WordInstance.Dialogs(84).Show();
        alert("l")

        CaliberDocumentViewerIns.CloseControl();

    }
                    
     
</script>       
            
    <script language="javascript">

        function LoadPrinters(ActiveXId, PrinterSelddlId) {
            try {
                var ActiveXObjeIns = document.getElementById(ActiveXId);
                if (ActiveXObjeIns.IsWordInstalled() == true) {
                    var PrintestList = new Array();
                    PrintestList = ActiveXObjeIns.ReadPrinters().split("#*#");
                    var PrinterSelObj = document.getElementById(PrinterSelddlId);
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
        LoadPrinters("CaliberDocumentViewer", "PrinterSelList");

        function getDocFilePath(DocFilePath) {
            var THrefArr = [];
            var HrefArr = [];
            var HrefArr1 = [];
            THrefArr = window.location.href.substring(0, window.location.href.lastIndexOf(".")).split("/")
            for (var i = 0; i < THrefArr.length - 2; i++) {
                HrefArr[i] = THrefArr[i];
            }
            var Href = HrefArr.join("/");
            return Href + DocFilePath.replace("..", "");
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

            return Href1 + "/HtmlFiles/Template.dot"; //HtmlFiles/Template.dot"; ///HtmlFiles/SampleTemplate.dot";
        }





        var DriverName;


        function _printDocument() {


            //   DriverName=DriverNameVal();
            //  PrinterName=PrinterNameVal();
            if (PrinterName != "") {
                ShowMask();
                setTimeout("_printDocumentCall()", 1000);
            }
            else {
                alert("Select Printer")
            }
        }
    
   
</script>


   


<script language="javascript">
    function CloseDocument() {
        if (IsActiveXInstalled() == true) {
            if (CaliberDocumentViewerIns.IsDocumentLoaded == true) {
                CaliberDocumentViewerIns.CloseControl();
            }
        }
    }

    function IsActiveXInstalled() {
        if (typeof (CaliberDocumentViewerIns.RedApplicationPath) == "undefined") {
            alert("ActiveX Not Installed");
            return false; ;
        }
        return true;
    }

    function OnError(Oevent) {

        alert(Oevent);
    }

    var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
    CaliberDocumentViewerIns.ScriptCallbackObjectForErrors = OnError;

    (function ($) {
        $(window).unload(function () {
            CloseDocument();
            DeleteTempDocument();
        });
    })(jQuery);



    var DeleteFiles = [];
    var DeleteFilesCnt = 0;

    function DeleteTempDocument() {
        if (DeleteFiles.length > 0) {
            CaliberDocumentViewerIns.DeleteHTMLFiles(DeleteFiles.join("#*#"));
            DeleteFiles.length = 0;
        }
    }

    function MakeParameterList(paramArray) {

        var paramList = '';

        if (paramArray.length > 0) {

            for (var i = 0; i < paramArray.length; i += 2) {

                if (paramList.length > 0) paramList += ',';

                paramList += '"' + paramArray[i] + '":"' + paramArray[i + 1] + '"';

            }

        }

        paramList = "{" + paramList + "}";

        return paramList;

    }

    var PrinterName;

    function CheckData() {
        PrinterName = document.getElementById("PrinterSelList").value;

        if (PrinterName != '') {
            document.getElementById("SelPrintTD").className = "HideRow"
            document.getElementById("DisplayValueDiv").className = "HideRow";
            _printDocument();

        }
        else {
            alert("Select Printer")
        } //if

    } //CheckData




    function CancelPrint() {
        document.getElementById("DisplayValueDiv").className = "HideRow";
        //$.modal.close();
    }

    function Print() {
        document.getElementById("DisplayValueDiv").className = "MainTD"
        $('#DisplayValueDiv').modal();
    }
     
</script>
</body>
</html>
