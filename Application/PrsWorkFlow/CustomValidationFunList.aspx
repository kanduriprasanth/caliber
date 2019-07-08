<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CustomValidationFunList.aspx.vb" Inherits="PrsWorkFlow.CustomValidationFunList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%=MainTitleLtrl.text %>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
        <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">

        function doSearch() {
            var searchText = document.getElementById('searchTerm').value;
            var targetTable = document.getElementById('FunRegTab');
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
            var targetTable = document.getElementById('FunRegTab');

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
            var targetTable = document.getElementById('FunRegTab');
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

        function FnOpenAuditPage(i, FunctionID, FunctionName) {
            var pageURL = "CustomValidationFunAuditDisplay.aspx?" + "&FunctionID=" + FunctionID + "&FunctionName=" + FunctionName

            var PWidth = 650
            var PHeight = 300
            var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
            var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

            var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();

        }
 
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
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="9">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
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
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="FunRegTab" CssClass="SubTable" runat="server" Width="100%" CellPadding="0"
                                    CellSpacing="0" HorizontalAlign="center" BorderWidth="0">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" BackColor="#dcebf2" HorizontalAlign="Right" ColumnSpan="2">
                            <span class="HideRow">
                               <img src="Image/back.png" id='Prevlnk' onclick="DisplayRecord(1)" style="cursor:hand;" title='Previous' />
                               <%--<a id='Prevlnk' onclick="DisplayRecord(1)" title='Previous' class='LblCls' style="background-image:'Image/back.bmp';font-weight: bold;color:Blue;cursor:hand;"></a>--%>
                               <img src="Image/next.png" id='NextLnk' onclick="DisplayRecord(2)" style="cursor:hand;" title='Next' />
                               <%--<a id='NextLnk' onclick="DisplayRecord(2)" title='Next'  class='LblCls' style="background-image:'Image/next.bmp';font-weight:bold;color:Blue;cursor:hand;"></a>--%>
                           </span>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Right">
                                <asp:Button ID="BtnConferm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Button ID="Button1" runat="server" CausesValidation="false"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                    <asp:TextBox ID="IssueIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IssueAulIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="PerPageTxt" runat="server" Text="20"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    <script language="javascript">
        function fnUpdateSts(RowCnt, BaseID, status) {
            // ShowMask()
            var pageURL = "CustomFunStatusChgResons.aspx?BID=" + BaseID + "&status=" + status + "&Type=1" + "&title=" + "Task Type Registration"

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
    </script>
</body>
</html>

