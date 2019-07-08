<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AuditList.aspx.vb" Inherits="AuditTemplate.AuditList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>AuditList</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" runat="server" method="post">
        <asp:Table ID="Table1" runat="server" BorderWidth="3" CellPadding="0" CellSpacing="0"
            CssClass="MainTable" EnableViewState="False" HorizontalAlign="center" Width="100%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" CellPadding="0" CellSpacing="1" CssClass="SubTable"
                        HorizontalAlign="center" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6" CssClass="SubHead">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6" CssClass="MainTD">
                                <uc1:searchctrl id="SearchCtrl1" runat="server"></uc1:searchctrl>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:LinkButton ID="ActLb" runat="server" Height="100%" Width="100%"></asp:LinkButton>
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="4" CssClass="MainTD"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RecPerPageTxt" runat="server" MaxLength="4" AutoPostBack="False" CssClass="TxtCls"
                                    Width="50px">10</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" runat="server" MaxLength="4" AutoPostBack="False" CssClass="TxtCls" Width="50px">1</asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="DisTable" runat="server" CellPadding="0" CellSpacing="1" CssClass="SubTable"
                                    HorizontalAlign="center" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
