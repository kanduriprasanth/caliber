<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SAPQAMS.index" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Read Material Data</title>
    <LINK href="../TRIMS.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
     <div align="center">
    <asp:table id="HeadTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="50%">
				
				<asp:TableRow ID="TableRow1" CssClass="subhead" runat="server" >
					<asp:TableCell ID="TableCell1" CssClass="MainHead" runat="server">
				SAP-QAMS Interface
				</asp:TableCell>
				</asp:TableRow></asp:table>
				<asp:table id="Table1"  runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="50%">
				 
				
				
				<asp:TableRow ID="TableRow3" runat="server" CssClass="MainTd"> 
				<asp:TableCell ID="TableCell3" CssClass="MainTd" Font-Bold="True" ColumnSpan="2" runat="server"> 
				<asp:HyperLink ID="HyperLink1" runat=server Text="Material Details" NavigateUrl= "../SAPQAMS/MatRead.aspx" />
				</asp:TableCell>
				</asp:TableRow>
				
				<asp:TableRow ID="TableRow10" runat="server" CssClass="MainTd"> 
				<asp:TableCell ID="TableCell10" CssClass="MainTd" Font-Bold="True" ColumnSpan="2" runat="server"> 
				<asp:HyperLink ID="HyperLink9" runat=server Text="Batch Details" NavigateUrl= "../SAPQAMS/BatRead.aspx" />
				</asp:TableCell>
				</asp:TableRow>
				
				
								
				</asp:table>
    </div>
    </form>
</body>
</html>
