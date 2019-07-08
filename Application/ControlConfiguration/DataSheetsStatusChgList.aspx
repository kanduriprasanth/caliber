<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DataSheetsStatusChgList.aspx.vb" Inherits="ControlConfiguration.DataSheetsStatusChgList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html lang="en">
<head id="Head1" runat="server">
    <title>Data Sheet Status Change List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
        <link rel="stylesheet" href="../TRIMS.css" />

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <link href="../Plugins/JqueryModel/simplemodal.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/JqueryModel/jquery.simplemodal.js" type="text/javascript"></script>
<script language="javascript">

    function doSearch() {
        var searchText = document.getElementById('searchTerm').value;
        var targetTable = document.getElementById('DataScheetsDetTbl');
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
                targetTable.rows(rowIndex).className = '';
            }
        }
    }

    function DisplayRecord(type) {
        var type = type;
        var currrentrec = parseInt(document.getElementById("PerPageTxt").value);
        var targetTable = document.getElementById('DataScheetsDetTbl');

        if (type == 2) {
            if (currrentrec >= targetTable.rows.length - 1) {
                return (false);
            }

            document.getElementById("PerPageTxt").value = parseInt(document.getElementById("PerPageTxt").value) + 20;
            for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
                if (rowIndex != 0) {
                    if (rowIndex > currrentrec && rowIndex <= parseInt(document.getElementById("PerPageTxt").value)) {
                        targetTable.rows(rowIndex).className = '';
                    }
                    else {
                        targetTable.rows(rowIndex).className = 'HideRow';
                    }
                }
            }

        }
        else {
            if (currrentrec - 20 <= 0) {
                return (false);
            }

            document.getElementById("PerPageTxt").value = currrentrec - 20;
            for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
                if (rowIndex != 0) {
                    if (rowIndex <= currrentrec - 20 && rowIndex <= parseInt(document.getElementById("PerPageTxt").value)) {
                        targetTable.rows(rowIndex).className = '';
                    }
                    else {
                        targetTable.rows(rowIndex).className = 'HideRow';
                    }
                }
            }
        }

    }

    function DisplayInitialRecord() {
        var targetTable = document.getElementById('TaskRegTab');
        for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
            if (rowIndex != 0) {
                if (rowIndex <= parseInt(document.getElementById("PerPageTxt").value)) {
                    targetTable.rows(rowIndex).className = '';
                }
                else {
                    targetTable.rows(rowIndex).className = 'HideRow';
                }
            }
        }
    }

    //    setTimeout("DisplayInitialRecord()",100);

    function FnOpenAuditPage(i, DataTyp, CtrlId) {
        // ShowMask()
        var pageURL = "ControlConfigAudDisplay.aspx?DataTyp=" + DataTyp + "&CtrlId=" + CtrlId

        var PWidth = 650
        var PHeight = 300
        var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
        var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

        var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
        SpWinObj = window.open(pageURL, 'SpecCodes', features)
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();

    }

    //        function fnOpenControlCfgLst_Ret()
    //        {
    //        HideMask()
    //        }          
    </script>
   
    
    <style type="text/css">
    
        .MainTd1 
        {
            
            font-weight:10; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            border:solid #5fa8cf 1 pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .SubHeadTD
        {
            
            font-weight:300; 
            Background-Color:#dcebf2;
            font-family:Verdana,Arial;
            font-size:8pt;
            border:solid #5fa8cf 1 pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
    </style>
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="1" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead" ColumnSpan="2">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Data Sheet</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                    <asp:Literal ID="SubTitleLtrl" runat="server">Status Change List</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="SrchLbl" runat="server" Text="Find" CssClass="LblCls"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="text" id="searchTerm" onkeyup="doSearch()" class="TxtCls" style="width:200px" />
                            </asp:TableCell>
                        </asp:TableRow>
            <asp:TableRow>
            
                <asp:TableCell ColumnSpan="2">
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="DataScheetsDetTbl">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script type="text/javascript">

    function AjaxStatusChange(RowCnt, DataShhetID) {
        // ShowMask()
        var Status = $("#Status" + RowCnt).val();
        var pageURL = "CommonStatusChange.aspx?DataShhetID=" + DataShhetID + "&Status=" + Status + "&Type=4" + "&title=" + "Data Sheet(s)"
        var PWidth = 650
        var PHeight = 300
        var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
        var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

        var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
        SpWinObj = window.open(pageURL, 'SpecCodes', features)
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();

    }
    function fnPageRefresh() {
        window.location.href = window.location.href
    }

    function FnOpenPreviewPage(Type, SheetId) {
        if (Type == 1) {
            if (document.getElementById("NoOfColTxt").value != "" && document.getElementById("DataShtDDL").value != "") {
                var SheetType = document.getElementById("DataShtDDL").value;
                var Title = document.getElementById("RowCapTxt").value;
                var TitleBold = document.getElementById("BoldTitleChk").checked ? 1 : 0;
                var TitleFont = document.getElementById("TitleFontDDl").value;
                var TitleFontSize = document.getElementById("TitleFontSzeDDl").value;
                var TitleAlign = document.getElementById("TitleAlgnDDl").value;
                var noOfColumns = document.getElementById("NoOfColTxt").value;
                var ColumnsBold = document.getElementById("BoldCapChk").checked ? 1 : 0;
                var ColumnsWidthUnits = document.getElementById("WidthUnitsDdl").value;
                var ColumnsFont = document.getElementById("FontDDl").value;
                var ColumnsFontSize = document.getElementById("FontSzeDDl").value;
                var ColumnsAlign = document.getElementById("ColTextAlignDdl").value;
                var ObsTpltId = document.getElementById("ObservationIdTxt").value;
                ObsTpltId = (ObsTpltId == "" ? 0 : ObsTpltId)
                var WidthArr = [];
                var ColTitleArr = [];
                var ColNameArr = [];
                var ColumnWidth = "";
                var ColumnCaptions = "";
                var ColumnNamesList = ""

                var RecordsPerRow = 0
                var DisplayType = document.getElementById("DisplayModeDdl").value;
                if (DisplayType == "2") {
                    RecordsPerRow = document.getElementById("RecordsPerRowDdl").value;
                }

                var NoofRows = document.getElementById("NoofRowsTxt").value;
                for (var i = 0; i < noOfColumns; i++) {
                    WidthArr[i] = document.getElementById("WidthTxt_" + i).value;
                    ColTitleArr[i] = document.getElementById("ColTxt_" + i).value;
                    ColNameArr[i] = document.getElementById("ColDDL_" + i).value;

                }
                ColumnWidth = WidthArr.join(",");
                ColumnCaptions = ColTitleArr.join("$@$");
                ColumnNamesList = ColNameArr.join("$@$");

                SetPopDimensions()
                var pageURL = "../CAPAWORKS/Preview.aspx?"; //&Type="+1+"&Width=" + Width + "&ColTitle=" + ColTitle + "&RowCaption=" + RowCaption + "&BindingCol=" + BindingCol + "&Font=" + Font + "&FontSze=" + FontSze + "&TitleAlgn=" + TitleAlgn + "&WidthMeasure=" + WidthMeasure + "&DefaultRows=" + DefaultRows ;

                pageURL += "&Type=" + Type;
                pageURL += "&SType=" + SheetType;
                pageURL += "&ObsTpltId=" + ObsTpltId;
                pageURL += "&Title=" + Title;
                pageURL += "&TitleBold=" + TitleBold;
                pageURL += "&TitleFont=" + TitleFont;
                pageURL += "&TitleFontSize=" + TitleFontSize;
                pageURL += "&TitleAlign=" + TitleAlign;
                pageURL += "&noOfColumns=" + noOfColumns;
                pageURL += "&ColumnsBold=" + ColumnsBold;
                pageURL += "&ColumnsWidthUnits=" + ColumnsWidthUnits;
                pageURL += "&ColumnsFont=" + ColumnsFont;
                pageURL += "&ColumnsFontSize=" + ColumnsFontSize;
                pageURL += "&ColumnsAlign=" + ColumnsAlign;
                pageURL += "&ColumnWidth=" + ColumnWidth;
                pageURL += "&ColumnCaptions=" + ColumnCaptions;
                pageURL += "&DefaultRows=" + NoofRows;
                pageURL += "&DisplayType=" + DisplayType;
                pageURL += "&RecordsPerRow=" + RecordsPerRow;
                pageURL += "&ColumnNamesList=" + ColumnNamesList;

            }
            else {
                return false;
            }
        }
        else {
            var pageURL = "../CAPAWORKS/Preview.aspx?";
            pageURL += "&Type=" + Type;
            pageURL += "&SheetId=" + SheetId;
        }
        var yval = screen.availHeight - 40;
        var xval = screen.availWidth;
        SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,menubar=no,resizable=yes,status=no,scrollbars=yes,top=1,left=1");
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();
    }



</script>

</html>
