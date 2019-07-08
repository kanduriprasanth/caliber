<%@ Page Language="vb" AutoEventWireup="false" Codebehind="StatusPopUp.aspx.vb" Inherits="AuditObservation.StatusPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Acceptance Status</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="Table3" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="3"
            HorizontalAlign="center" CssClass="MainTable" Width="98%" EnableViewState="False">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Acceptance Status</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Table ID="DataTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="Center">
                                </asp:Table>
                            </asp:TableCell>
                </asp:TableCell>
                </asp:TableRow> </asp:Table>
                <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
