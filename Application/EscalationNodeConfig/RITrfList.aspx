<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RITrfList.aspx.vb" Inherits="EscalationNodeConfig.RITrfList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>RITrfList</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center" cssclass="MainTable"
				 runat="server" id="Table1">
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
								<asp:TableCell CSSClass="SubHead" ColumnSpan="6">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							 <asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</asp:TableCell>
							</asp:TableRow>
							<asp:Tablerow>
								<asp:TableCell CssClass="MainTD" ColumnSpan="3" Width="30%">
									<asp:LinkButton id="CRLb" Runat="server" Width="100%" Height="100%"></asp:LinkButton>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ColumnSpan="3" Width="30%">
									<asp:LinkButton id="MOLb" Runat="server" Width="100%" Height="100%"></asp:LinkButton>
								</asp:TableCell>
							</asp:Tablerow>
								<ASP:TABLEROW>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecCntLtrl" Runat="server">0</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px">10</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" MaxLength="5" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px">1</ASP:TEXTBOX>
								</ASP:TABLECELL>
								
							
							</ASP:TABLEROW>
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
</HTML>
