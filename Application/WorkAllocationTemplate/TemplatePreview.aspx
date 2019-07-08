<%@ Page Language="vb" AutoEventWireup="false" Codebehind="TemplatePreview.aspx.vb" Inherits="WorkAllocationTemplate.TemplatePreview" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="HeaderTr" CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell ID="HeaderTd" CssClass="MainTD" runat="server"></asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="BodyTr" runat="server">
                            <asp:TableCell ID="BodyTd" CssClass ="MainTD" runat="server"></asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="FooterTr" CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell ID="FooterTd" CssClass="MainTD" runat="server"></asp:TableCell>
                        </asp:TableRow>
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                     					<INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" 
							onmouseout="this.className='ButCls'" type="button" value="Close" onclick="window.self.close()"> 
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
