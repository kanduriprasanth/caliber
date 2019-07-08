<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AccepReport.aspx.vb" Inherits="AuditReports.AccepReport" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Auditor(s)/Audtiee(s) Acceptance Log</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="Table1" runat="server" CssClass="MainTable" HorizontalAlign="center"
            BorderWidth="3" CellSpacing="0" CellPadding="0">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Auditor(s) / Auditee(s) Acceptance Log</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="Table2" runat="server" HorizontalAlign="center" CellPadding="0" CssClass="SubTable"
                        CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="7">
                                <asp:Table ID="DisTable1" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow CssClass="MainFoot">
                <asp:TableCell CssClass="MainHead">
                    <input type="button" id="ClsBtn" value="Close" class="ButCls" onMouseOver="this.className='ButOCls'"
										onMouseOut="this.className='ButCls'" onclick="FnClose()" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    <script type="text/javascript">
        function FnClose()
        {
            window.close();
        }
    </script>
</body>
</html>
