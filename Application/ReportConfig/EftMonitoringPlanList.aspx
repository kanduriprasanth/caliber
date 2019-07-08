<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EftMonitoringPlanList.aspx.vb" Inherits="CAPAWORKS.EftMonitoringPlanList" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center" cssclass="MainTable"
				runat="server" id="Table1" EnableViewState="False"  Width="98%">
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW CssClass="HideRow">
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LITERAL id="SubTitleLtrl" runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="6">
									<ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
			</asp:table>
			
		</form>
		
	</body>
</HTML>
