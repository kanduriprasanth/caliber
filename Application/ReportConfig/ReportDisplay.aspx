<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReportDisplay.aspx.vb" Inherits="ReportConfig.ReportDisplay" %>

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
    <link rel="stylesheet" href="MaskStyles.css" />

    <script language="javascript" src="MaskJScript.js"></script>

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
    function fnDisplayDates(RowCnt){
        var FromDays =document.getElementById("FromDays_" + RowCnt).value 
            if(isNaN(FromDays)==true || FromDays==''){
                FromDays= -1
                document.getElementById("FromDays_" + RowCnt).value = '-1'
            }
        var FromUnit =document.getElementById("FromUnit_" + RowCnt).value 
        var FromDate= fnDateFormat(FromDays, FromUnit)
   
        var ToDays =document.getElementById("ToDays_" + RowCnt).value 

            if(isNaN(ToDays)==true || ToDays==''){
                ToDays= -1
                document.getElementById("ToDays_" + RowCnt).value = -1
            }
        var ToDayUnit =document.getElementById("ToDayUnit_" + RowCnt).value
        var ToDate=fnDateFormat(ToDays,ToDayUnit) 
   
   document.getElementById("FromDateStr" + RowCnt).value =FromDate
      document.getElementById("ToDateStr" + RowCnt).value =ToDate

   
   document.getElementById("lblDateDisplay" + RowCnt).innerHTML= "<span style='background-color:lightblue' >From Date: " + FromDate + " </span>&nbsp; &nbsp;<span style='background-color:lightgreen' > To Date: " + ToDate  +  " </span>&nbsp; &nbsp;(mm/dd/yy)"
    }
    
    function Submit()
    {
        Form1.submit();
    }
    
    function ShowControl (RowCnt)
    {
       if (document.getElementById("Chk_" + RowCnt).checked == true)
       { 
          document.getElementById("CtrlTd_" +RowCnt ).className ="MainSubTD"
       }
       else
       {
          document.getElementById("CtrlTd_" +RowCnt ).className ="HideRow"
       }
//       SetColSpan(<%=NewRwCnt %>,2);
    }
    
    function SetColSpan(TotalRow,TotalCol)
    {
        for(var i=0;i<TotalRow; i++)
        {
            for(var j=0;j<TotalCol; j++)
            {
                if(document.getElementById("Chk_" + i).checked == false)
                {
                   if(j==1)
                   {
                        document.getElementById("CapTD_" + i).setAttribute("colSpan", "6");
                   }
                }    
                else
                {
                    document.getElementById("CapTD_" + i).removeAttribute("colSpan", "0");
                }
            }       
        }
    }
    
        function fnOpenMulPopUp(RowCnt,SourceType,CtrlId)
        {
            //SetPopDimensions()
            var pageURL = "MulObjPopup.aspx?RowCnt="+ RowCnt + "&SourceType="+SourceType + "&CtrlId=" + CtrlId
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
        function fnCrSetMulPopUpCode(RowCnt,KfLableVal,KdIdVal,KdCodeVal)
        {
             document.getElementById("FlierCtrl_" + RowCnt).value=KdIdVal;
             document.getElementById("FlierValue_" + RowCnt).innerHTML=KfLableVal;     
             document.getElementById("FlierCtrlVal_" + RowCnt).value=KfLableVal;                  
        }
        
    
     function fnOpenPopUp(BaseId,CtrlID)
        {
            //SetPopDimensions()
            var pageURL = "../IssueLogin/PopupPage.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID + "&Type=1"
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
         function fnCrSetToCode(BaseId,CtrlID,FldVAlArr,GenericCode)
        {
            if( FldVAlArr != '')
            {
             document.getElementById("SrchTxt_"+BaseId).value=FldVAlArr[1] + "%" //FldVAlArr[0]+ "/" + FldVAlArr[1];
            }
            else
            {
             document.getElementById("SrchTxt_"+BaseId).value='%'
            } 
            
        }
        
              function fnCrformSubmit(){}
        
        
         function fnOpenPopUp(BaseId,CtrlID)
        {
            //SetPopDimensions()
            var pageURL = "../IssueLogin/PopupPage.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
        function fnCrSetToCode(RowCnt,CtrlID,FldVAlArr,GenericCode)
        {
            if( FldVAlArr != '')
            {
            document.getElementById("FlierCtrl_" + RowCnt).value=FldVAlArr[0] 
            document.getElementById("FlierValue_" + RowCnt).innerHTML=FldVAlArr[1] 
            }
            else
            {
             document.getElementById("FlierCtrl_" + RowCnt).value=''
             document.getElementById("FlierValue_" + RowCnt).innerHTML=''
            } 
        }
        
     

        
    </script>
    
    <script language=javascript >   
        // Export  To Excel
        function ExpDataToExcel() {
 
         ShowMask();

        try {
            var ExcelType1 = ""//ExcelTypeAry[document.getElementById("GraphSelect").selectedIndex]
            if(ExcelType1=="undefined")
            {
                ExcelType=1
            }
            if (document.getElementById("IssueTab")!=null)
             {                            
                write_to_excel(ExcelType1);
             }
             else
             {
                alert('No Records Are Availabe For Export')
             }
            
        }
        catch (ex) {
            alert('You need to have Excel Installed and Active-X Components Enabled on your System.')
            return (false);
        }
    }
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

        return Href1 + "/HtmlFiles/ExportTplt.xlsx"; 
    }
    
    
    
    
    function write_to_excel(ExcelType1) {
	
	var ExcelType=ExcelType1;
	
	try
	{
        str = "";
        var mytable = document.getElementById("IssueTab");
        var rowCount = mytable.rows.length;
        var colCount = mytable.rows(1).cells.length;
        var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
        CaliberDocumentViewerIns.LoadDocument(getTemplatePath(),false,1);
        
        var oBook = CaliberDocumentViewerIns.ExcelWorkBook;
        var oSheet = CaliberDocumentViewerIns.ExcelWorkBook.Worksheets(1); 
        
        var val=0;
        
        for (var i = 0; i < rowCount; i++) 
        {
            for (var j = 0; j < colCount; j++) 
            {
                if (i == 0) 
                {
                    str = mytable.rows[i].cells[j].innerText;
                    if(str=="Time Elapsed (Days)")
                    {
                        val=j;
                    }
                    if(j==0)
                    {
                        oBook.WorkSheets(1).cells(i+1,j+1).ColumnWidth=16.14;
                    }
                    else
                    {
                        oBook.WorkSheets(1).cells(i+1,j+1).ColumnWidth=23.14;
                    }
                    oBook.WorkSheets(1).cells(i+1,j+1).Font.Bold = true;
                    oBook.WorkSheets(1).cells(i+1,j+1).Name = "Calibri";
                    oBook.WorkSheets(1).cells(i+1,j+1).Font.Size = 11;
                    oBook.WorkSheets(1).cells(i+1,j+1).HorizontalAlignment = 3;
                    oBook.WorkSheets(1).cells(i+1,j+1).VerticalAlignment = 3;
                }
                else 
                {
                    str = mytable.rows[i].cells[j].innerText;
                    if(j==0)
                    {
                        oBook.WorkSheets(1).cells(i+1,j+1).ColumnWidth=16.14;
                    }
                    else
                    {
                        oBook.WorkSheets(1).cells(i+1,j+1).ColumnWidth=23.14;
                    }
                    oBook.WorkSheets(1).cells(i+1,j+1).Name = "Calibri";
                    oBook.WorkSheets(1).cells(i+1,j+1).Font.Size = 10;
                    oBook.WorkSheets(1).cells(i+1,j+1).HorizontalAlignment = 3;
                    oBook.WorkSheets(1).cells(i+1,j+1).VerticalAlignment = 3;
                }
                if(str.indexOf("=>")!=-1)
                {
                   str=str.replace('=>','[=>]');
                }
                oSheet.Cells(i + 1, j + 1).Value = str;           
                oBook.WorkSheets(1).cells(i+1,j+1).Borders.LineStyle = "1";
                oBook.WorkSheets(1).cells(i+1,j+1).Borders.Weight = 2;
                
                startAdd=oBook.WorkSheets(1).Cells(i+1,j+1).address(false,false);
                EndAdd=oBook.WorkSheets(1).Cells(i+1,j+1).address(false,false);
                oBook.WorkSheets(1).Range(startAdd,EndAdd).WrapText=true ;
            }
        }
            
        oSheet.autofit;
        
        oBook.WorkSheets(1).Protect("caliber_09")
        HideMask();
        oBook.Application.Dialogs(5).Show("C:\\" + "TestReport" + ".xlsx");
        CaliberDocumentViewerIns.CloseControl();        
      
      }  
        
     catch(ex)
     {
        alert(ex);
     }
  
}
    
    </script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
     <!-- Our activeX object -->
        <span style="display:none">
            <%
    Response.WriteFile("../DMSManagement/ActiveX.inc")
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
                            <asp:TableCell CssClass="MainTD">
                                <asp:Table ID="FilterTab" CssClass="SubTable" runat="server" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="left" BorderWidth="0">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TopChsrtTr" CssClass="HideRow">
                            <asp:TableCell ID="TopChrtTd" CssClass="MainTD" Width="700px">
                                <iframe id="TopChrtFrame" runat="server" style="border:none;border:solid 1px black;" width=700px height="350px"></iframe>
                            </asp:TableCell>                             
                        </asp:TableRow>
                        <asp:TableRow ID="TopChsrDetTr" CssClass="HideRow">
                           <asp:TableCell ID="TopChsrDetTD" style="overflow:auto;" CssClass="MainTD" Height="350px">
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Table ID="Reocrdtab" CssClass="SubTable" runat="server" Width="700px" BorderColor="black"
                                    CellPadding="0" CellSpacing="1" HorizontalAlign="left" BorderWidth="0">
                                    <asp:TableRow>
                                        <asp:TableCell BackColor="#fcfffa" HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell BackColor="#fcfffa" HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:TextBox ID="RecPerPageTxt" MaxLength="3" runat="server" Width="30px" CssClass="TxtCls"
                                                AutoPostBack="False" onkeypress="return IsDigit1(event);">20</asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell BackColor="#fcfffa" HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:TextBox ID="PgNoTxt" runat="server" Width="50px" MaxLength="5" CssClass="TxtCls"
                                                AutoPostBack="False" onkeypress="return IsDigit1(event);">1</asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell BackColor="#fcfffa" HorizontalAlign="Center" CssClass="MainTD">
                                            <asp:Button ID="GoBtn" runat="server" CssClass="ButCls" Text="Display" Visible="TRUE">
                                            </asp:Button>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
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
                                <%-- <input type="button" class="ButSelCls" value="Export To Excel" onclick="ExpDataToExcel()" />--%>
                                <input type="button" id="ExportBtn" value="Export To Excel" class="ButSelCls" language="javascript"
                                    runat="server" onclick="ExpDataToExcel()" name="ExportBtn">
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <%-- <input type="button" class="ButSelCls" value="Export To Excel" onclick="ExpDataToExcel()" />--%>
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
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1">
                    <asp:TextBox ID="IssueIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IssueAulIdTxt" runat="server"></asp:TextBox>
                    <input name="TxtCol" id="TxtCol" class="TxtCls" runat="server" value="1" />
                    <input name="NumCol" id="NumCol" class="TxtCls" runat="server" value="1" />
                    <select id="GraphSelect" name="GraphSelect" runat="server" class="TxtCls" onchange="GraphSel()">
                        <option value="17">Line</option>
                        <option value="0">Column 3D</option>
                        <option value="1">Column Clustered</option>
                        <option value="2">Column Clustered 3D</option>
                        <option value="3">Column Stacked</option>
                        <option value="6">Column Stacked 3D</option>
                        <option value="7">Bar 3D</option>
                        <option value="8">Bar Clustered</option>
                        <option value="9">Bar Clustered 3D</option>
                        <option value="10">Bar Stacked</option>
                        <option value="13">Bar Stacked3D </option>
                        <option value="15">Doughnut</option>
                        <option value="16">Doughnut Exploded</option>
                        <option value="18">Line 3D</option>
                        <option value="19">Line Markers</option>
                        <option value="20">Line Overlapped 3D</option>
                        <option value="21">Line Stacked</option>
                        <option value="25">Line Stacked 3D</option>
                        <option value="26">Line Stacked Markers</option>
                        <option value="27">Pie</option>
                        <option value="28">Pie 3D</option>
                        <option value="29">Pie Exploded</option>
                        <option value="30">Pie Exploded3D</option>
                        <option value="31">Pie Stacked</option>
                        <option value="32">Polar Line</option>
                        <option value="33">Polar LineMarkers</option>
                        <option value="34">Polar Markers</option>
                        <option value="35">Polar SmoothLine</option>
                        <option value="36">Polar Smooth Line Markers</option>
                        <option value="37">Radar Line</option>
                        <option value="38">Radar Line Filled</option>
                        <option value="39">Radar Line Markers</option>
                        <option value="40">Radar Smooth Line</option>
                        <option value="41">Radar Smooth Line Markers</option>
                        <option value="42">Scatter Line</option>
                        <option value="43">Scatter Line Filled</option>
                        <option value="44">Scatter Line Markers</option>
                        <option value="45">Scatter Markers</option>
                        <option value="46">Scatter Smooth Line</option>
                        <option value="47">Scatter Smooth Line Markers</option>
                        <option value="48">Smooth Line</option>
                        <option value="49">Smooth Line Markers</option>
                        <option value="50">Smooth Line Stacked</option>
                        <option value="53">Smooth Line Stacked Markers </option>
                        <option value="54">Stock HLC</option>
                        <option value="55">Stock OHLC </option>
                    </select>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Table ID="ChrtTab" runat="server">
                    </asp:Table>
                </asp:TableCell>
               
            </asp:TableRow>
        </asp:Table>
    </form>
    <!-----------Script  For Graph------------->

    <script type="text/javascript">

    function OpenPopUp()
    {
        var pageURL = "CAPATrackSheet.aspx?RptType=" + <%=Category%> + "&AcplnCnfgId=0" 
        var features = "height=800,width=950,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=200,left=100"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }


    </script>

    <script language="jscript">


   



    function handleOnLoad(TableObjId, i) {


        //  var TableObjId = "tbl" + i;
        var r, n

        var rCount = document.all(TableObjId).rows.length
        if (rCount < 1) { return (false) }
        var ColCount = parseInt(document.getElementById(TableObjId).rows(0).cells.length)

        var txtCol = parseInt(document.getElementById("TxtCol").value)
        var numColList = document.getElementById("NumCol").value

//        if ((numColList == '') || (txtCol == '')) {
//            alert("Enter Column Value(s) & Not More Than Total Columns: " + ColCount)
//            return (false)
//        }
//        if (isNaN(txtCol)) {
//            alert("Enter Numeric Value For Label Column & Not More Than Total Columns: " + ColCount)
//            return (false)
//        }

        var numColAry = new Array()
        numColAry = numColList.split(',')

//        txtCol = parseInt(txtCol) - 1
//        if ((txtCol - ColCount > 0)) {
//            alert("Enter Column Value & Not More Than Total Columns: " + ColCount)
//            return (false)
//        }
//        if ((txtCol < 0)) {
//            alert("Enter Column Value Not Less Than 1")
//            return (false)
//        }
//        var numCol
//        for (n = 0; n < numColAry.length; n++) {
//            numCol = numColAry[n]
//            if (isNaN(numCol)) {
//                alert("Enter Numeric Value For Value Column & Not More than Total Columns: " + ColCount)
//                return (false)
//            }
//            numCol = parseInt(numCol)
//            if ((numCol - ColCount > 0)) {
//                alert("Enter Column Value & Not More than Total Columns: " + ColCount)
//                return (false)
//            }
//            if ((numCol < 0)) {
//                alert("Enter Column Value Not Less Than 1")
//                return (false)
//            }

//        }

        ////////////////////////////
        var categories = new Array();
        var values;
        var ChartObj = document.getElementById("ChartSpace")
        var c = ChartObj.Constants;
        var CharTypeAry = new Array()

        ExcelTypeAry[0] = "4"; CharTypeAry[0] = c.chChartTypeColumn3D;
        ExcelTypeAry[1] = "-4100"; CharTypeAry[1] = c.chChartTypeColumnClustered;
        ExcelTypeAry[2] = "51"; CharTypeAry[2] = c.chChartTypeColumnClustered3D;
        ExcelTypeAry[3] = "54"; CharTypeAry[3] = c.chChartTypeColumnStacked;
        ExcelTypeAry[4] = "52"; CharTypeAry[4] = c.chChartTypeColumnStacked100;
        ExcelTypeAry[5] = "55"; CharTypeAry[5] = c.chChartTypeColumnStacked1003D;
        ExcelTypeAry[6] = "62"; CharTypeAry[6] = c.chChartTypeColumnStacked3D;
        ExcelTypeAry[7] = "57"; CharTypeAry[7] = c.chChartTypeBar3D;
        ExcelTypeAry[8] = "60"; CharTypeAry[8] = c.chChartTypeBarClustered;
        ExcelTypeAry[9] = "58"; CharTypeAry[9] = c.chChartTypeBarClustered3D;
        ExcelTypeAry[10] = "61"; CharTypeAry[10] = c.chChartTypeBarStacked;
        ExcelTypeAry[11] = "-4120"; CharTypeAry[11] = c.chChartTypeBarStacked100;
        ExcelTypeAry[12] = "80"; CharTypeAry[12] = c.chChartTypeBarStacked1003D;
        ExcelTypeAry[13] = "-4101"; CharTypeAry[13] = c.chChartTypeBarStacked3D;
        ExcelTypeAry[14] = "65"; CharTypeAry[14] = c.chChartTypeCombo3D;
        ExcelTypeAry[15] = "67"; CharTypeAry[15] = c.chChartTypeDoughnut;
        ExcelTypeAry[16] = "63"; CharTypeAry[16] = c.chChartTypeDoughnutExploded;
        ExcelTypeAry[17] = "64"; CharTypeAry[17] = c.chChartTypeLine;
        ExcelTypeAry[18] = "66"; CharTypeAry[18] = c.chChartTypeLine3D;
        ExcelTypeAry[19] = "5"; CharTypeAry[19] = c.chChartTypeLineMarkers;
        ExcelTypeAry[20] = "-4102"; CharTypeAry[20] = c.chChartTypeLineOverlapped3D;
        ExcelTypeAry[21] = "69"; CharTypeAry[21] = c.chChartTypeLineStacked;
        ExcelTypeAry[22] = "70"; CharTypeAry[22] = c.chChartTypeLineStacked100;
        ExcelTypeAry[23] = "68"; CharTypeAry[23] = c.chChartTypeLineStacked1003D;
        ExcelTypeAry[24] = "109"; CharTypeAry[24] = c.chChartTypeLineStacked100Markers;
        ExcelTypeAry[25] = "33"; CharTypeAry[25] = c.chChartTypeLineStacked3D;
        ExcelTypeAry[26] = "34"; CharTypeAry[26] = c.chChartTypeLineStackedMarkers;
        ExcelTypeAry[27] = "35"; CharTypeAry[27] = c.chChartTypePie;
        ExcelTypeAry[28] = "36"; CharTypeAry[28] = c.chChartTypePie3D;
        ExcelTypeAry[29] = "-4151"; CharTypeAry[29] = c.chChartTypePieExploded;
        ExcelTypeAry[30] = "82"; CharTypeAry[30] = c.chChartTypePieExploded3D;
        ExcelTypeAry[31] = "81"; CharTypeAry[31] = c.chChartTypePieStacked;
        ExcelTypeAry[32] = "105"; CharTypeAry[32] = c.chChartTypePolarLine;
        ExcelTypeAry[33] = "101"; CharTypeAry[33] = c.chChartTypePolarLineMarkers;
        ExcelTypeAry[34] = "74"; CharTypeAry[34] = c.chChartTypePolarMarkers;
        ExcelTypeAry[35] = "-4161"; CharTypeAry[35] = c.chChartTypePolarSmoothLine;
        ExcelTypeAry[36] = "73"; CharTypeAry[36] = c.chChartTypePolarSmoothLineMarkers;
        ExcelTypeAry[37] = "45"; CharTypeAry[37] = c.chChartTypeRadarLine;
        ExcelTypeAry[38] = "72"; CharTypeAry[38] = c.chChartTypeRadarLineFilled;
        ExcelTypeAry[39] = "101"; CharTypeAry[39] = c.chChartTypeRadarLineMarkers;
        ExcelTypeAry[40] = "67"; CharTypeAry[40] = c.chChartTypeRadarSmoothLine;
        ExcelTypeAry[41] = "65"; CharTypeAry[41] = c.chChartTypeRadarSmoothLineMarkers;
        ExcelTypeAry[42] = "63"; CharTypeAry[42] = c.chChartTypeScatterLine;
        ExcelTypeAry[43] = "66"; CharTypeAry[43] = c.chChartTypeScatterLineFilled;
        ExcelTypeAry[44] = "88"; CharTypeAry[44] = c.chChartTypeScatterLineMarkers;
        ExcelTypeAry[45] = "89"; CharTypeAry[45] = c.chChartTypeScatterMarkers;
        ExcelTypeAry[46] = "72"; CharTypeAry[46] = c.chChartTypeScatterSmoothLine;
        ExcelTypeAry[47] = "73"; CharTypeAry[47] = c.chChartTypeScatterSmoothLineMarkers;
        ExcelTypeAry[48] = "67"; CharTypeAry[48] = c.chChartTypeSmoothLine;
        ExcelTypeAry[49] = "65"; CharTypeAry[49] = c.chChartTypeSmoothLineMarkers;
        ExcelTypeAry[50] = "63"; CharTypeAry[50] = c.chChartTypeSmoothLineStacked;
        ExcelTypeAry[51] = "66"; CharTypeAry[51] = c.chChartTypeSmoothLineStacked100;
        ExcelTypeAry[52] = "66"; CharTypeAry[52] = c.chChartTypeSmoothLineStacked100Markers;
        ExcelTypeAry[53] = "66"; CharTypeAry[53] = c.chChartTypeSmoothLineStackedMarkers;
        ExcelTypeAry[54] = "88"; CharTypeAry[54] = c.chChartTypeStockHLC;
        ExcelTypeAry[55] = "89"; CharTypeAry[55] = c.chChartTypeStockOHLC;

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

        for (r = 0; r < rCount; r++) {
            categories[r] = document.all(TableObjId).rows(r).cells(txtCol).innerText
        }
        
        var yVal
        for (n = 0; n < numColAry.length; n++) {

            numCol = numColAry[n]
            numCol = parseInt(numCol)
            ChartObj.Charts(0).SeriesCollection.Add();
            var ColHeader = ""//document.all(TableObjId).rows(0).cells(numCol).innerText;
            ChartObj.Charts(0).SeriesCollection(n).Caption = ColHeader;
            var valuesAry = new Array();
                 for (r = 0; r < rCount; r++) {
                        yVal = document.all(TableObjId).rows(r).cells(numCol).innerText
                             if (yVal == '') { yVal = 0 }
                            if (isNaN(yVal)) { yVal = 0 }
             valuesAry[r] = yVal
                         } //for-r
            ChartObj.Charts(0).SeriesCollection(n).SetData(c.chDimValues, c.chDataLiteral, valuesAry);
            ChartObj.Charts(0).SeriesCollection(n).SetData(c.chDimCategories, c.chDataLiteral, categories);
            var valList = valuesAry.join(',')
            
//            AddStatRow(ColHeader, valList)


        } //forn

        ChartObj.Charts(0).HasLegend = true;
        //ChartObj.Charts(0).Axes(c.chAxisPositionLeft).NumberFormat = "0%";
        //ChartObj.Charts(0).Axes(c.chAxisPositionLeft).MajorUnit = 0.1;
        ChartObj.Charts(0).Type = CharTypeAry[document.getElementById("GraphSelect").value];

        //alert("onLoad complete")
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
// ChartSpace1_SelectionChange()
//-->
    </script>

    <script language="jscript">
    function ChartSpaceSelChange() {
        var ChartObj = document.getElementById("ChartSpace" + i)

        var c = ChartObj.constants;

        if (bOld) {
            switch (OldSelectionType) {
                case c.chSelectionPoint:
                case c.chSelectionPlotArea:
                case c.chSelectionLegend:
                case c.chSelectionChart:
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
    
//    GraphSel()
    
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
HtmlStr=HtmlStr & "<TD  class=MainTD><b>" & ColName & "</td>" 
HtmlStr=HtmlStr & "<TD  class=MainTD><b>Min</td><td   class=MainTD style='Background-Color:white'>" & MinValue & "</td>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Max</td><td    class=MainTD style='Background-Color:white'>" & MaxValue & "</td>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Avg</td><td    class=MainTD style='Background-Color:white'>" & AvgValue & "</td>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Sd</td><td    class=MainTD style='Background-Color:white'>" & SdValue & "</td>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Rsd</td><td   class=MainTD  style='Background-Color:white'>" & RsdValue & "</td>"
HtmlStr=HtmlStr & "</TR>" 
end sub

    </script>

    <script language="vbscript">

function CreateExcel(ExcelType)
    
    DIM Path, Obook,oExcel, fso,cnt,cnt1,filePath ,oChart ,cNumCols ,cNumRows,r,c,startAdd,EndAdd,ColCnt,Range1,Range2,tbl,Flag,tblArr,ExcelVer,j,k,l,i, subcNumCols,subcNumRows, chartaxiscnt1,chartaxiscnt2
 
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

    Obook.WorkSheets(1).Name = "DI Report Log" 

    for i=0 to 0 

        if i=0 then
           tbl="IssueTab"
        else
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
                            Obook.WorkSheets(1).cells(r+1,c+1).ColumnWidth=11
                        else
                            Obook.WorkSheets(1).cells(r+1,c+1).ColumnWidth=26
                        end if
                        Obook.WorkSheets(1).cells(r+1,c+1).FormulaR1C1=document.getElementById(tbl).rows(r).cells(c).innerText  
                        Obook.WorkSheets(1).cells(r+1,c+1).Borders.LineStyle = "1"
                        Obook.WorkSheets(1).cells(r+1,c+1).Borders.Weight = 2
                        Obook.WorkSheets(1).cells(r+1,c+1).HorizontalAlignment = 3
                        
                        startAdd=Obook.WorkSheets(1).Cells(r+1,c+1).address(false,false)
                        EndAdd=Obook.WorkSheets(1).Cells(r+1,c+1).address(false,false)
                        Obook.WorkSheets(1).Range(startAdd,EndAdd).WrapText=True
                        
                        if r=0 then
'                             Obook.WorkSheets(1).cells(r+1,c+1).Columns.Style="Good"
                        end if
                    next

                next  
                
                dim ChartReq
                dim Yseris
                ChartReq=0
                
                if ChartReq=1 then
'                  
'                    
                 end if
                    
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

'                    if ExcelVer= "Excel.Application.11" then   ' W.R.To Excel 2003
'            
'                        With oChart     
'                         .SetSourceData(Obook.WorkSheets(1).Range(startAdd,EndAdd)) 
'                         .HasTitle = True      
'                         .HasLegend = False  
'                         .SeriesCollection(1).XValues = "='Occupancy Report'!R3C2:R" & chartaxiscnt1 & "C2"  
'    '                      Obook.WorkSheets(1).Shapes("Chart 1").Height = 270   
'              
'                          With .ChartTitle            
'                               .Characters.Text = "Occupancy Report"           
'                               .Font.Size = 15              
'                          End With
'              
'                        End With 

'                    end if 

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
    PreparedBy="Prepared By: " & "<%=PreparedBy%>"
    PreparedOn="Prepared On: " & "<%=PreparedOn%>"
    
    ToatlRowCnt=Obook.WorkSheets(1).UsedRange.Rows.Count
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,1).FormulaR1C1=PreparedBy
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,4).FormulaR1C1=PreparedOn
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,1).Font.Bold=true
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,4).Font.Bold=true
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,1).Font.Size = "15"
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,4).Font.Size = "15"
    Obook.WorkSheets(1).Protect("caliber_09")
        
    oExcel.Visible = true 
    Set fso = Nothing 
    CreateExcel=true 
    
    
End function 






    </script>

    <script language="javascript">
    
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
           pageURL="../ReportConfig/ChkListPopup.aspx"
             break; 
      case 2: // DropDown
          pageURL="../ReportConfig/DepartmentList.aspx?"
             break;
      case 3: //Check bOx
             pageURL="../ReportConfig/ChkListPopup.aspx?"
             break;
      case 4: // Radi Button
            pageURL="../ReportConfig/ChkListPopup.aspx?"
             break;
      case 17: // Multi Object  Reference
            pageURL="../ReportConfig/MultirefObjPopup.aspx?"
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

</body>
</html>