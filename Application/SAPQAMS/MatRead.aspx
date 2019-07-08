<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MatRead.aspx.cs" Inherits="SAPQAMS.MatRead" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Read Material Data</title>
    <LINK href="../TRIMS.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div align="left"><asp:HyperLink ID="HyperLink4" runat=server Text="Back To The List" NavigateUrl= "~/SAPQAMS/index.aspx" /></div>
    <div>
    <ASP:TABLE id="Table" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="50%">
							
					<ASP:TableRow ID ="MatNoRw" CssClass ="MainTd">
					         <asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Material Number
		                     </asp:TableCell>
							<ASP:TableCell>
							           <asp:TextBox ID ="MatNo"  Text ="1449" runat="server" CssClass ="TxtCls"/>
							 </ASP:TableCell>
					</ASP:TableRow>
					
					<ASP:TableRow ID ="PltNoRw" CssClass ="MainTd">
					<asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Plant Number
		                     </asp:TableCell>
                            <ASP:TableCell>
                                        <asp:TextBox ID ="Plant" Text ="1000" runat="server"  CssClass ="TxtCls"/>
                                        <asp:Button ID="Get" runat="server" Text="Get From SAP" OnClick="Get_Click" CssClass ="ButexCls"/>
							</ASP:TableCell>
					</ASP:TableRow>
					
					
					<ASP:TableRow CssClass ="HideRow" ID="DisTableTr" >
                            <ASP:TableCell ColumnSpan = "4">
                                  <ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">   
							</ASP:TABLE>    
							</ASP:TableCell>
					</ASP:TableRow>
					
	</ASP:TABLE>
    </div>
    </form>
</body>
</html>
