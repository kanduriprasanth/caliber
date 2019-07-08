<%@ Register TagPrefix="uc1" TagName="SearchCtrlForWorkList" Src="SearchCtrlForWorkList.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WorkListGen.aspx.vb" Inherits="AuditPlanning.WorkListGen"%>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>WorkListGen</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="Table1" runat="server" EnableViewState="False" cssclass="MainTable" HorizontalAlign="center"
				BorderWidth="0" CELLSPACING="0" CELLPADDING="0">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server">Task AuditPlanning</asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="CrTopTable">
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="7">
									<asp:Literal id="SubTitleLtrl" runat="server">Task List</asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="7">
									<uc1:SearchCtrlForWorkList id="SearchCtrl1" runat="server"></uc1:SearchCtrlForWorkList>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ColumnSpan="7">
									<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
										HorizontalAlign="center" ID="Table2">
										<ASP:TableRow>
											<asp:TableCell Width="25" CssClass="MainTD">
												<span>From: </span>
											</asp:TableCell>
											<asp:TableCell Width="150" CssClass="MainTD">
												<uc1:CaliberCalender id="FromDate" runat="server"></uc1:CaliberCalender>
											</asp:TableCell>
											<ASP:TableCell Width="25" CssClass="MainTD">
												<span>To: </span>
											</ASP:TableCell>
											<asp:TableCell Width="150" CssClass="MainTD">
												<uc1:CaliberCalender id="ToDate" runat="server"></uc1:CaliberCalender>
											</asp:TableCell>
										</ASP:TableRow>
									</asp:Table>
								</asp:TableCell>
							</asp:TableRow>
							<asp:Tablerow>
								<asp:TableCell CssClass="MainTD">
									<asp:Literal id="MaxRecLtrl" Runat="server">Total Records</asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Literal id="MaxRecCntLtrl" Runat="server">0</asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Literal id="RecPerPageLtrl" Runat="server">Records per page</asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox ID="RecPerPageTxt" MaxLength="3" Runat="server" Width="30px" CssClass="TxtCls" AutoPostBack="False">10</asp:TextBox>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Literal id="PgNoLtrl" Runat="server">Page No.</asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox ID="PgNoTxt" Runat="server" Width="50px" MaxLength="5" CssClass="TxtCls" AutoPostBack="False">1</asp:TextBox>
								</asp:TableCell>
								<ASP:TableCell CssClass="MainTd" HorizontalAlign="Left">
									<asp:button id="BtnDisplay" cssClass='ButCls' accessKey="C" runat="server" text="Display" Width="70"
										CausesValidation="False"></asp:button>
								</ASP:TableCell>
							</asp:Tablerow>
							<asp:TableRow>
								<asp:TableCell ColumnSpan="7">
									<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
										HorizontalAlign="center" ID="WListTab"></asp:Table>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
	</body>
</HTML>
