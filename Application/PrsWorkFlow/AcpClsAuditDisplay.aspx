<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AcpClsAuditDisplay.aspx.vb"
    Inherits="PrsWorkFlow.AcpClsAuditDisplay" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>AuditDisplay</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server" ID="Table1">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="Table2" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="center">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="ATLinksTabTd" CssClass="MainTd" valign="top" Width="20%">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ATLinksTab">
                                </asp:Table>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTd" Width="80%" valign="top">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                                    HorizontalAlign="center" ID="ATDispTab">
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="DataTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="DataTab2Tr" runat="server" CssClass="HideRow">
                                        <asp:TableCell>
                                            <asp:Table ID="DataTab2" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="AppStsTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="DataTab3Tr" runat="server" CssClass="HideRow">
                                        <asp:TableCell>
                                            <asp:Table ID="DataTab3" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
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
