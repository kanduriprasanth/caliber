<%@ Page Language="C#" AutoEventWireup="true" Codebehind="DMSSearchConfig.aspx.cs"
    Inherits="DMSManagement.DMSSearchConfig" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>DMS Search Configurations</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script type='text/javascript'>
    
    function ReloadValues()
    {
        document.getElementById("ChangeBtn").click();
    }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" HorizontalAlign="center" CssClass="MainTable"
            runat="server">
            <asp:TableRow CssClass="MainHead">
                <asp:TableCell>
                    <asp:Literal ID="MainTitleLtrl" runat="server">DMS Search Config</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="2"></asp:TableCell>
                            <asp:TableCell ColumnSpan="2"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="4">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CodeTd" ColumnSpan="2"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="2" Text="--"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="RepositoryTypeTd"
                                ColumnSpan="2"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:DropDownList ID="RepositoryTypeDdl" runat="server" CssClass="RBList" Width="200px"
                                    AutoPostBack="true" OnSelectedIndexChanged="RepositoryTypeDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="NoOfSearchOptionsTd"
                                ColumnSpan="2"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:TextBox ID="NoOfSearchOptionsTxt" runat="server" CssClass="TxtCls" MaxLength="1"
                                    AutoPostBack="true" Width="60px" Text="1" OnTextChanged="NoOfSearchOptionsTxt_TextChanged"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" Style="font-weight: bold;" ID="MultySearchTd"></asp:TableCell>
                            <asp:TableCell CssClass="HideRow">
                                <asp:RadioButtonList ID="MultySearchRbn" runat="server" CssClass="RBList" RepeatDirection="Horizontal"
                                    AutoPostBack="true">
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="SearchOptnTbl">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" OnClick="btnConfirm_Click">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Button ID="ChangeBtn" runat="server" Text="123" OnClick="ChangeBtn_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
