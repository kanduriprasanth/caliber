<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RePrintReqLst.aspx.vb" Inherits="Dossier.RePrintReqLst" %>

 
<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Dossier Re-Print</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="Table1" runat="server" cssclass="MainTable" HorizontalAlign="center" BorderWidth="0"
				CELLSPACING="0" CELLPADDING="0">
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server">Dossier Re-Print</ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LITERAL id="SubTitleLtrl" runat="server">Dossier Re-Print</ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<asp:TableRow CSSClass="HideRow">
								<asp:TableCell CSSClass="HideRow" ColumnSpan="6">
								 
								</asp:TableCell>
							</asp:TableRow>
							<ASP:TABLEROW CSSClass="HideRow">
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
									<ASP:LINKBUTTON id="ActLb" Height="100%" Runat="server" Width="100%"></ASP:LINKBUTTON>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="6"></ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW CSSClass="HideRow">
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
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="40px"
										MaxLength="5">1</ASP:TEXTBOX>
					                     &nbsp;<input type="button" onClick="submit()" class='ButCls' onMouseOver="this.className='ButOCls'"
										onMouseOut="this.className='ButCls'" Value='Display'>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TableCell CssClass="MainTD">A. R. No. For Re-print</ASP:TableCell>
								<ASP:TableCell CssClass="MainTD">
									<ASP:TextBox Runat="server" CssClass="txtcls" ID="ARNo"></ASP:TextBox>
									<ASP:RequiredFieldValidator ID="RequiredFieldValidator1" Runat="server" ControlToValidate="ARNo" ErrorMessage="Enter A.R. No. For Re-print">&nbsp;</ASP:RequiredFieldValidator>
									<ASP:Label Runat="server" ID="ARNo1" ForeColor="red"></ASP:Label>
								</ASP:TableCell>
								<ASP:TableCell CssClass="MainTD" ColumnSpan="4">
									<ASP:Button Runat="server" ID="ARBtn" Text="GO" class='ButCls' onMouseOver="this.className='ButOCls'"
										onMouseOut="this.className='ButCls'"></ASP:Button>
								</ASP:TableCell>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="7">
									<ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
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
			</asp:table>
		</form>
		
	</body>
</HTML>
