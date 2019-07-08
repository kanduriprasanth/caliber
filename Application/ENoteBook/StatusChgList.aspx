<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="StatusChgList.aspx.vb" Inherits="ENoteBook.StatusChgList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>StatusChgList</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
 		<link rel="stylesheet" href="../TRIMS.css">
 		<script language="javascript" src="../JScript/Common2.js"></script>
		
  </head>
  <body MS_POSITIONING="GridLayout">

    <form id="Form1" method="post" runat="server">
<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center" cssclass="MainTable"
				Width="98%" runat="server" id="Table1" EnableViewState=False >
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="CrTopTable">
						<asp:TableRow>
					<asp:TableCell CSSClass="SubHead" ColumnSpan=6>
						<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
						  <asp:TableRow >
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</asp:TableCell>
							</asp:TableRow>
							<asp:Tablerow>
								<asp:TableCell CssClass="MainTD" ColumnSpan="3">
									<asp:LinkButton id="ActLb" Runat="server" Width="100%" Height="100%"></asp:LinkButton>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ColumnSpan="3">
									<asp:LinkButton id="InActLb" Runat="server" Width="100%" Height="100%"></asp:LinkButton>
								</asp:TableCell>
								</asp:Tablerow>
									<asp:Tablerow>
										<asp:TableCell CssClass="MainTD">
									<asp:Literal id="MaxRecLtrl" Runat="server"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Literal id="MaxRecCntLtrl" Runat="server">0</asp:Literal>
								</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
									<asp:Literal id="RecPerPageLtrl" Runat="server"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox ID="RecPerPageTxt" Runat="server" Width="50px" CssClass="TxtCls" AutoPostBack="False" MaxLength='3'>10</asp:TextBox>
								</asp:TableCell>
							
								<asp:TableCell CssClass="MainTD">
									<asp:Literal id="PgNoLtrl" Runat="server"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox ID="PgNoTxt" Runat="server" Width="50px" CssClass="TxtCls" AutoPostBack="False" MaxLength='5'>1</asp:TextBox>
								</asp:TableCell>
							
							</asp:Tablerow>
							<asp:TableRow>
								<asp:TableCell ColumnSpan="6">
									<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
										HorizontalAlign="center" ID="DisTable"></asp:Table>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
    </form>

  </body>
</html>
