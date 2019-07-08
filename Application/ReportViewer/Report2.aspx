<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Report2.aspx.vb" Inherits="ReportViewer.Report2" %>


<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html  >
<head id="Head1" runat="server">
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
            var FromUnit = 4//document.getElementById("FromUnit_" + RowCnt).value
            var FromDate = fnDateFormat(FromDays, FromUnit)

            var ToDays = document.getElementById("ToDays_" + RowCnt).value

            if (isNaN(ToDays) == true || ToDays == '') {
                ToDays = -1
                document.getElementById("ToDays_" + RowCnt).value = -1
            }
            var ToDayUnit =4 // document.getElementById("ToUnit_" + RowCnt).value
            var ToDate = fnDateFormat(ToDays, ToDayUnit)

            document.getElementById("FromDateStr" + RowCnt).value = FromDate
            document.getElementById("ToDateStr" + RowCnt).value = ToDate

            DateNoteFlag=true
          //  document.getElementById("lblDateDisplay" + RowCnt).innerHTML = "<span style='background-color:lightblue' >From Date: " + FromDate + " </span>&nbsp; &nbsp;<span style='background-color:lightgreen' > To Date: " + ToDate + " </span>&nbsp; &nbsp;(mm/dd/yy)"

         
        }


        function ChkDate(RowCnt,PreFix) {
         DateValue = document.getElementById(PreFix + "DateStr" + RowCnt).value
         if (DateValue == "") {
                 alert("Enter Valid Date in 'm/d/yy' format")
                 fnSetDate(RowCnt,PreFix)
                  return 
              }

        var DateAry = new Array()
        DateAry = DateValue.split("/")
          if (DateAry.length != 3) {
              alert("Enter Valid Date in 'm/d/yy' format")
                fnSetDate(RowCnt,PreFix )
                return 
            }

            var DateStr = ValidDate(DateValue)
            if (DateStr == "No") {
                alert("Enter Valid Date in 'm/d/yy' format")
                fnSetDate(RowCnt,PreFix)
                return
            } else {

                document.getElementById(PreFix + "DateStr" + RowCnt).value = DateStr
            }


            fnSetDateDiffValues(RowCnt, PreFix)
       }


       function fnSetDate(RowCnt,PreFix) {
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

                         <asp:TableRow>
                            <asp:TableCell CssClass="HideRow" ID="GroupTr">
                                <asp:Table ID="GroupTab" CssClass="SubTable" runat="server" Width="700px" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="left" BorderWidth="0">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TopChsrtTr" CssClass="MainTD">
                            <asp:TableCell ID="TopChrtTd" CssClass="MainTD" Width="700px">
                           Chart Local Configuration    <INPUT type=button title='Click here'  name=Popup class=RsnPUP Height=20px id=BTN_Chart onclick=fnOpenChartConfig() >  
                          <br />
                        <asp:Label id="SummaryLbl" runat="server" style="color:Blue;cursor:hand;" CssClass="MainTD"  onclick="fnShowHideSummaryTab()"> Show / Hide Summary Table </asp:Label>
                           </asp:TableCell>                            
                        </asp:TableRow>

                            <asp:TableRow ID="SummuryTR" CssClass="MainTD" runat="server" >
                         <asp:TableCell CssClass="MainTD">
                    <asp:Table ID="SummuryTab" runat="server" HorizontalAlign="left" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="700px" BackColor="white"  ></asp:Table>
                        </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="TopChsrDetTr" CssClass="MainTd">
                           <asp:TableCell ID="TopChsrDetTD" style="overflow:auto;" CssClass="MainTD"   HorizontalAlign=left>
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
									</ChartAreas>
						</asp:chart>              </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ChartExceptionMsgTr" runat="server"  CssClass="HideRow" HorizontalAlign=Center >
                       <asp:TableCell CssClass="MainTD" Font-Bold="true" ForeColor="Red" >Chart Combinations Are Not Compatible</asp:TableCell>
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
                        <asp:TextBox runat="server" ID="FilterCnt"></asp:TextBox>
                          <asp:TextBox runat="server" ID="DrillDownCntTxt"></asp:TextBox>
                          <asp:TextBox runat="server" ID="GroupSetCntTxt"></asp:TextBox>
                         
                        
                            <asp:TextBox runat="server" ID="IsChartReConfig" Text=0></asp:TextBox>
                            <asp:TextBox runat="server" ID="ReConfigChartType" Text=Pie></asp:TextBox>
                            <asp:TextBox runat="server" ID="ReConfigChartAngle" Text=0></asp:TextBox>
                            <asp:TextBox runat="server" ID="ReConfigChart3D" Text=0></asp:TextBox>
                             <asp:TextBox runat="server" ID="ReConfigChartHeight"  Text=400></asp:TextBox>
                             <asp:TextBox runat="server" ID="ReConfigChartWidth"  Text=600></asp:TextBox>

                            
                  <asp:TextBox runat="server" ID="xCoordHolder"></asp:TextBox>
                    <asp:TextBox runat="server" ID="yCoordHolder"></asp:TextBox>
                  
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
    </div>
    </form>

     <script language="javascript">

       if (DateNoteFlag == true) {
                NoteLblObj = document.getElementById("NoteLbl") 
                NoteLblObj.innerHTML = NoteLblObj.innerHTML + "** Date values can be set either with ± duration w.r.t current date or Entering values in textboxes in 'm/d/yyyy' format"
                DateNoteFlag=true 
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
                      document.getElementById("FiltDefualtLbl" + RowCnt).innerHTML = LblValue
                      document.getElementById("FiltDefualtTxt" + RowCnt).value = LblValue
                      document.getElementById("FiltDefualtDataIDs" + RowCnt).value = TxtValue
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


                  function fnOpenPage(UrlVal) {
                      alert(UrlVal)
                      var callUrl = document.getElementById("callUrlTxt").value
                      var callUrlAry = new Array()
                      callUrlAry = callUrl.split('/')
                      var PreURLAry = new Array()
                      for (i = 0; i < callUrlAry.length - 2; i++) {
                          PreURLAry[i] = callUrlAry[i]
                      }
                      alert(callUrl)

                      var pageURL = PreURLAry.join('/') + UrlVal

                      alert(pageURL)
                      var winHeight = 400
                      var winWidth = (screen.availWidth / 100) * 90;
                      var SpWinObj = window.open(pageURL, 'ReportPreviewPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
                      if (SpWinObj.opener == null) SpWinObj.opener = self;
                      SpWinObj.focus();

                  }
                  ////---------------------------

//-->
    </script>

   <script language="javascript"> 
<!--
       function fnDrillDown(DDLCnt, ThisGroupCnt, trendCount,IndexVal) {
         //  alert(DDLCnt + ' ' + ThisGroupCnt + ' ' + trendCount + '  ' + IndexVal)
        
           IndexVal=IndexVal*1
           ThisGroupCnt=ThisGroupCnt*1
           DDLCnt=DDLCnt*1
           trendCount=trendCount*1

           var g = (DDLCnt*1) - 1
           var GroupDefualtLbl_ID
           var GroupDefualtTxt_ID
           var GroupDefualtDataIDs_ID
           var XIdCol_ID
           var XValCol_ID
           var h=0      
          
                  
           for (h = 0; h<ThisGroupCnt; h++) {
              
               GroupDefualtLbl_ID = "GroupDefualtLbl" + (g + 1) + "_" + (h + 1)
               GroupDefualtTxt_ID = "GroupDefualtTxt" + (g + 1) + "_" + (h + 1)
               GroupDefualtDataIDs_ID = "GroupDefualtDataIDs" + (g + 1) + "_" + (h + 1)

                XIdCol_ID= "XIdCol" + (IndexVal + 1) + "_" +  (h + 1)
                XValCol_ID = "XValCol" + (IndexVal + 1) + "_" +  (h + 1)

                document.getElementById(GroupDefualtDataIDs_ID).value = document.getElementById(XIdCol_ID).innerText
                document.getElementById(GroupDefualtTxt_ID).value = document.getElementById(XValCol_ID).innerText
                document.getElementById(GroupDefualtLbl_ID).innerText = document.getElementById(XValCol_ID).innerText

            }// for h
            
            var Trend_LblVal_ID
            var Trend_TdVal_ID
            var Yval_ID
            h=0 
            var t=0
            for (t = 0; t < trendCount; t++) {
             
                           Trend_LblVal_ID = "Trend_LblVal" + (g + 1) + "_" + (h + 1) + "_" + (t + 1)
                           Trend_TdVal_ID = "Trend_TdVal" + (g + 1 ) + "_" + (h + 1) + "_" + (t + 1)
                           Yval_ID=  "Yval" + (IndexVal + 1) + "_" + (t + 1)

                           document.getElementById(Trend_LblVal_ID).innerText = document.getElementById(Yval_ID).innerText
                         document.getElementById(Trend_TdVal_ID).value = document.getElementById(Yval_ID).innerText

            }//for t

       
       

        var  DrillDownCntTxtObj=document.getElementById("DrillDownCntTxt");
        DrillDownCntTxtObj.value = DDLCnt + 1
        var GroupSetCnt = parseInt(document.getElementById("GroupSetCntTxt").value)
        
        if (GroupSetCnt - DDLCnt > 0) {
            document.getElementById("GoBtn").click(); 
        } else {
            alert('This is Last Option')
        } //if
    } //function

    function fnGoToDrillDown(g, h, trendCount) {
   
        var GroupDefualtLbl_ID
        var GroupDefualtTxt_ID
        var GroupDefualtDataIDs_ID

        GroupDefualtLbl_ID = "GroupDefualtLbl" + (g ) + "_" + (h )
        GroupDefualtTxt_ID = "GroupDefualtTxt" + (g) + "_" + (h )
        GroupDefualtDataIDs_ID = "GroupDefualtDataIDs" + (g) + "_" + (h )

        document.getElementById(GroupDefualtDataIDs_ID).value = ""
        document.getElementById(GroupDefualtTxt_ID).value = ""
        document.getElementById(GroupDefualtLbl_ID).innerText = ""

        var Trend_LblVal_ID
        var Trend_TdVal_ID
        var Yval_ID
        trendCount = trendCount * 1
        
        var t = 0
        for (t = 0; t < trendCount; t++) {

            Trend_LblVal_ID = "Trend_LblVal" + (g ) + "_" + (h) + "_" + (t + 1)
            Trend_TdVal_ID = "Trend_TdVal" + (g ) + "_" + (h ) + "_" + (t + 1)
           
            document.getElementById(Trend_LblVal_ID).innerText = ""
            document.getElementById(Trend_TdVal_ID).value = ""

        } //for t




        document.getElementById("DrillDownCntTxt").value = g
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

         document.forms[0].xCoordHolder.value = scrollX;
         document.forms[0].yCoordHolder.value = scrollY;
     }

     function sstchur_SmartScroller_Scroll() {
         var x = document.forms[0].xCoordHolder.value;
         var y = document.forms[0].yCoordHolder.value;
         window.scrollTo(x, y);
     }

     window.onload = sstchur_SmartScroller_Scroll;
     window.onscroll = sstchur_SmartScroller_GetCoords;
     window.onkeypress = sstchur_SmartScroller_GetCoords;
     window.onclick = sstchur_SmartScroller_GetCoords;
   


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
</body>
</html>