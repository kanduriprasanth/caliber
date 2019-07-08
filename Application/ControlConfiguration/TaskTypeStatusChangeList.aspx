<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TaskTypeStatusChangeList.aspx.vb" Inherits="ControlConfiguration.TaskTypeStatusChangeList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Task Type Status Change List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
       <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
<script language="javascript">

    function doSearch() {
        var searchText = document.getElementById('searchTerm').value;
        var targetTable = document.getElementById('ItemTbl');
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
        var targetTable = document.getElementById('ItemTbl');

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
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="Literal1" runat="server">Task Type</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="5">
                                <asp:Literal ID="Literal2" runat="server">Status Change</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>  
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="SrchLbl" runat="server" Text="Find" CssClass="LblCls"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="text" id="searchTerm" onkeyup="doSearch()" class="UCTxtCls" style="width:200px" />
                            </asp:TableCell>
                        </asp:TableRow>         
                        <asp:TableRow  CssClass="HideRow" ID="ItemTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ItemTbl">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell>
                            </asp:TableCell>
                            <asp:TableCell>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
             
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="ProtocolFieldKeys" Style="display: none" Width="0" Height="0" runat="server">
                    </asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldNames" Style="display: none" Width="0" Height="0" runat="server">
                    </asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldbndto" Style="display: none" Width="0" Height="0" runat="server">
                    </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">

        function fnUpdateSts(RowCnt, BaseID, status) {
            // ShowMask()
            var pageURL = "CommonStatusChange.aspx?BID=" + BaseID + "&status=" + status + "&Type=1" + "&title=" + "Task Type Registration"

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
            window.location = window.location.pathname
        }
		
        
    </script>

</body>
</html>