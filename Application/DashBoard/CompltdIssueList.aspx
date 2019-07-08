<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CompltdIssueList.aspx.vb" Inherits="DashBoard.CompltdIssueList" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl4.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="Table1" runat="server" cssclass="MainTable" HorizontalAlign="center" BorderWidth="3"
				CELLSPACING="0" CELLPADDING="0">
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="Table2" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LITERAL id="SubTitleLtrl" runat="server">Work List</ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW CSSClass="HideRow">
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
									<ASP:LINKBUTTON id="ActLb" Height="100%" Runat="server" Width="100%"></ASP:LINKBUTTON>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="4"></ASP:TABLECELL>
							</ASP:TABLEROW>
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
									<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
										Width="50px">20</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5">1</ASP:TEXTBOX>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="7">
									<ASP:TABLE id="DisTable1" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
									<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
								</asp:TableCell>
							</asp:TableRow>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
			</asp:table></form>
	</body>
</HTML>



