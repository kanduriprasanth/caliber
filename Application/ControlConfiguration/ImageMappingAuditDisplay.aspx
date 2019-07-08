<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ImageMappingAuditDisplay.aspx.vb" Inherits="ControlConfiguration.ImageMappingAuditDisplay" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Flow Chart Audit Display</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server" ID="Table1" EnableViewState="False">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTd" Width="20%" valign="top">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ATLinksTab">
                                </asp:Table>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTd" Width="80%" valign="top">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                                    HorizontalAlign="center" ID="ATDispTab">
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="RecTable" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="4">
                                            <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                                <asp:TableRow>
                                                    <asp:TableCell ColumnSpan="4" CssClass="IAHeadTD" Text="Events">
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:LinkButton ID="ActLb" Height="100%" runat="server" Width="100%"></asp:LinkButton>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="4">
                                <asp:Table ID="RecTable1" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
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