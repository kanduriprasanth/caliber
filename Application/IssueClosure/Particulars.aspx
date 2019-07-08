<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Particulars.aspx.vb" Inherits="IssueClosure.Particulars" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
 <link rel="stylesheet" href="../TRIMS.css">
<head runat="server">
    <title>Untitled Page</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">

    <link href="../TRIMS.css" rel="stylesheet">
</head>
<body>
    <form id="form1" method="post" runat="server">
    <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
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
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="3">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell CssClass="RevisionTD" ColumnSpan="3">
                                <asp:Literal ID="PertucularsTD" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                       
                        </asp:Table>
                     <!-----------End of Base table------------->
                </asp:TableCell>
                 
             </asp:TableRow>
             
             <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <input type="button" onMouseOver="this.className='ButOCls'" Class='ButCls' onMouseOut="this.className='ButCls'"
				                value="Back" style=" WIDTH: 80px; HEIGHT: 20px" Width="70" onclick="Javascript: window.history.back(-1)">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
             
            </asp:Table>
    </form>
</body>
</html>
