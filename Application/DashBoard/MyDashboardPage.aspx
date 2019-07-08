<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MyDashboardPage.aspx.vb" Inherits="DashBoard.MyDashboardPage" %>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
    <title>My Dashboard Page</title>
    <LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
	
</head>
<body>
    		<form id="Form1" method="post" runat="server">
			<asp:table id="Table1" runat="server" cssclass="MainTable" HorizontalAlign="center" BorderWidth="3"
				CELLSPACING="0" CELLPADDING="0">
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server"> My Dashboard Page</ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="Table2" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW ID="ChrtTr">
								<ASP:TABLECELL VerticalAlign=Middle HorizontalAlign=Center CSSClass="MainTD" ID="ChrtTd" ColumnSpan="7">
									
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW CssClass="HIdeRow">
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="7">
									Page Unique Code & Title : <ASP:LITERAL id="SubTitleLtrl" runat="server"></ASP:LITERAL>
									Drilldown Level: <ASP:LITERAL id="DrilldownLevelLtrl" runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW CssClass="HIdeRow">
								 
							</ASP:TABLEROW>
							<ASP:TABLEROW >
								<ASP:TABLECELL ColumnSpan="7">
									<ASP:TABLE id="SummaryChartTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%">
										
										</ASP:TABLE>
										
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							 
							<ASP:TABLEROW CssClass="HIdeRow">
								<ASP:TABLECELL CssClass="MainTD" HorizontalAlign=center>
									<ASP:LITERAL id="MaxRecLtrl" Runat="server" >Total Records</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecCntLtrl" Runat="server">0</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" HorizontalAlign=center>
									<ASP:LITERAL id="RecPerPageLtrl" Runat="server" >Records Per Page</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
										Width="50px">50</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" HorizontalAlign=center>
									<ASP:LITERAL id="PgNoLtrl" Runat="server" > Page No.</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5">1</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" HorizontalAlign=center>
									   <asp:Button ID="BtnDisplay" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
                                    AccessKey="C" onMouseOut="this.className='ButCls'" Text="Display" ></asp:Button>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW >
								<ASP:TABLECELL ColumnSpan="7">
									<ASP:TABLE id="ListTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
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
</html>
