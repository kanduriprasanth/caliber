<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PrintLog.aspx.vb" Inherits="AuditReports.PrintLog" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ObsResponsePrint</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <table width="100%" border="1" cellspacing="1" cellpadding="1" class="MainTable"
            align="center">
            <tr>
                <td align="center" class="MainHead">
                    Print Log
                </td>
            </tr>
            <tr>
                <td colspan="10">
                    <asp:Table ID="Table1" Width="100%" runat="server" BackColor="#ffffff" HorizontalAlign="center"
                        CellPadding="0" CellSpacing="0" Border="1" BorderColor="black">
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">Search By</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                                <asp:RadioButtonList ID="SrchByRBL" runat="server" CssClass="RBList" RepeatDirection=Horizontal>
                                    <asp:ListItem Value=1>Audit Code</asp:ListItem>
                                    <asp:ListItem Value=2>Checklist Code</asp:ListItem>
                                    <asp:ListItem Value=3>Department/Site</asp:ListItem>
                                    <asp:ListItem Value=4>Audit Area(s)</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">Search Text</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="SrchTxt" Width="200px" runat="server" CssClass="TxtCls" Text="%"></asp:TextBox>
                            </asp:TableCell>
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
                                <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="40px"
                                    MaxLength="5">1</asp:TextBox>
                                &nbsp;<input type="button" onclick="submit()" class='ButCls' onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'" value='Display'>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Table ID="DisTable" Width="100%" runat="server" BackColor="#ffffff" HorizontalAlign="center"
                        CellPadding="0" CellSpacing="0" Border="1" BorderColor="black">
                    </asp:Table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

