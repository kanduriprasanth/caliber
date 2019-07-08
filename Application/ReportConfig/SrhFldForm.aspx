<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SrhFldForm.aspx.vb" Inherits="ReportConfig.SrhFldForm" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
     <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body >
<form id="Form1" runat="server">
    <asp:table id="tt" cellpadding="0" cellspacing="0" borderwidth="3" horizontalalign="center"
        cssclass="MainTable" width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow >
                            <asp:TableCell CssClass="MainTd" ColumnSpan="2"  >
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                       <asp:TableRow >
                       <asp:TableCell >
                        <asp:Table ID="ResTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                CssClass="SubTable" Width="100%">
                                </asp:Table>
                       </asp:TableCell>
                       </asp:TableRow>
                        
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign=Left>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit">
                                </asp:Button>
                                
                                
                                
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:Button ID="BtnNext" runat="server" onMouseOver="this.className='ButOCls'" Class='HideRow'
                                    AccessKey="C" onMouseOut="this.className='ButCls'" ></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                               <asp:DropDownList ID="ColConfgDDL" runat="server" CssClass="HideRow" Width="200Px"></asp:DropDownList>
                               <asp:TextBox ID="FilReqTxt" runat="server" ></asp:TextBox>
                               <asp:TextBox ID="FilTxt" runat="server" ></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:table>
</form>
</body>
</html>
