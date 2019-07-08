<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ImageMappingModifyList.aspx.vb" Inherits="ControlConfiguration.ImageMappingModifyList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html lang="en">
<head id="Head1" runat="server">
    <title>Image Mapping Modify List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1"
     />
    <meta name="vs_defaultClientScript" content="JavaScript" />
        <link rel="stylesheet" href="../TRIMS.css" />

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <link href="../Plugins/JqueryModel/simplemodal.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/JqueryModel/jquery.simplemodal.js" type="text/javascript"></script>
   
    <script language="javascript">

        function doSearch() {
            var searchText = document.getElementById('Srchtxt').value;
            var targetTable = document.getElementById('FlowChatTbl');
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
       </script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="1" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Flow Chart(s)</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow>                           
                           <asp:TableCell CssClass="MainTD" Font-Bold=true HorizontalAlign="center" >Search &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Srchtxt" onkeyup="doSearch()" MaxLength="25" runat="server" CssClass="UCTxtCls" Width="200" ></asp:TextBox>
                            </asp:TableCell>
                            
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="SubHead">
                    <asp:Literal ID="SubTitleLtrl" runat="server">Modification</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="FlowChatTbl">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script type="text/javascript">

</script>

</html>
