<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WorkFlowDetails1.aspx.vb" Inherits="TestDynamicEForm.WorkFlowDetails1" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
   <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<link rel="stylesheet" href="../TRIMS.css">
    	
    	
</head>


<body>
    <form id="form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="400" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainTD" ID="AppRevierTd">
                    <asp:Table ID="DetailsTbl" Width="100%" CellPadding="0" CellSpacing="1" HorizontalAlign="center"
                        runat="server" CssClass="SubTable">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainTD">
                     	 <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                                onclick="window.self.close()" onmouseout="this.className='ButCls'" type="button" value="Close">
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>


</html>
