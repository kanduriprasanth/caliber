<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index.aspx.vb" Inherits="SAPBATSTS.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Batch Detials</title>
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
				<asp:HyperLink ID="HyperLink1" runat="server" Text="User Mapping" NavigateUrl= "../SAPBATSTS/USERMap.aspx" />
				</asp:TableCell>
				</asp:TableRow>
				
				<asp:TableRow ID="TableRow10" runat="server" CssClass="MainTd"> 
				<asp:TableCell ID="TableCell10" CssClass="MainTd" Font-Bold="True" ColumnSpan="2" runat="server"> 
				<asp:HyperLink ID="HyperLink9" runat=server Text="Batch Selection" NavigateUrl= "../SAPBATSTS/BatSelection.aspx" />
				</asp:TableCell>
				</asp:TableRow>
				
				<asp:TableRow ID="TableRow2" runat="server" CssClass="MainTd"> 
				<asp:TableCell ID="TableCell2" CssClass="MainTd" Font-Bold="True" ColumnSpan="2" runat="server"> 
				<asp:HyperLink ID="HyperLink2" runat=server Text="Recomendation" NavigateUrl= "../SAPBATSTS/UnderRecList.aspx" />
				</asp:TableCell>
				</asp:TableRow>
				
				<asp:TableRow ID="TableRow4" runat="server" CssClass="MainTd"> 
				<asp:TableCell ID="TableCell4" CssClass="MainTd" Font-Bold="True" ColumnSpan="2" runat="server"> 
				<asp:HyperLink ID="HyperLink3" runat=server Text="Approval 1" NavigateUrl= "../SAPBATSTS/UnderApp1List.aspx" />
				</asp:TableCell>
				</asp:TableRow>
				
				<asp:TableRow ID="TableRow5" runat="server" CssClass="MainTd"> 
				<asp:TableCell ID="TableCell5" CssClass="MainTd" Font-Bold="True" ColumnSpan="2" runat="server"> 
				<asp:HyperLink ID="HyperLink4" runat=server Text="Approval 2" NavigateUrl= "../SAPBATSTS/UnderApp2List.aspx" />
				</asp:TableCell>
				</asp:TableRow>
				
				
								
				</asp:table>
    </div>
    </form>
</body>
</html>
