<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ExcelTEmplateGen.aspx.vb" Inherits="IssueTypeConfig.ExcelTEmplateGen" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Template</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False" Width="350px">
            <asp:TableRow ID="TableRow1" Height="20px" runat="server">
                <asp:TableCell ID="TableCell1" CssClass="MainHead" runat="server">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
               
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan =2>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table2">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                         <asp:TableCell  CssClass="MainHead"  >
                 <asp:Button ID="ReGenBtn" runat="server" onMouseOver="this.className='ButOCls'" CssClass='ButCls'
                                    AccessKey="C" onMouseOut="this.className='ButCls'" Text="Generate Execl File" Width="80"></asp:Button>
                </asp:TableCell>
                </asp:TableRow>
                
                   <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                            </asp:TableCell>
                        </asp:TableRow>
                       
                        
                        
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
