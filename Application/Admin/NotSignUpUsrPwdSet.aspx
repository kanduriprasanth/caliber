<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NotSignUpUsrPwdSet.aspx.vb" Inherits="Admin.NotSignUpUsrPwdSet" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD id="Head1">
		<title>Temporary Password ReSet</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript" src="../CaliberCommonCtrls/Reports.js"></script>
		<STYLE>v\:* { BEHAVIOR: url(#default#VML) }
		</STYLE>
	</HEAD>
	<body>
		<form id="form1" runat="server">
			<div>
				<asp:Table ID="tt" CssClass="MainTable" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
					Width="90%" runat="server">
					<asp:TableRow Height="10">
						<asp:TableCell CssClass="MainHead" ColumnSpan="3">
							<asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
						</asp:TableCell>
					</asp:TableRow>
					<asp:TableRow>
						<asp:TableCell ColumnSpan="3">
							<asp:Table ID="SelRepsTab" CssClass="SubTable" runat="server" Width="100%" CellPadding="0"
								CellSpacing="1" HorizontalAlign="center" >
								<asp:TableRow>
										<asp:TableCell CssClass="SubHead" ColumnSpan="5">
											<asp:Literal ID="SubTitleLtrl" runat="server">User Particulars</asp:Literal>
										</asp:TableCell>
									</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="MainTD" ID="CatTd"></asp:TableCell>
									<asp:TableCell CssClass="MainTD" ColumnSpan="4">
										<asp:Literal id="CatTxt" runat="server"></asp:Literal>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="MainTD" ID="RoleTd"></asp:TableCell>
									<asp:TableCell CssClass="MainTD" ColumnSpan="4">
										<asp:Literal id="RoleTxt" runat="server"></asp:Literal>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="MainTD" ID="FnameTd"></asp:TableCell>
									<asp:TableCell CssClass="MainTD" ColumnSpan="4">
										<asp:Literal id="FnameTxt" runat="server"></asp:Literal>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="MainTD" ID="LnameTd"></asp:TableCell>
									<asp:TableCell CssClass="MainTD" ColumnSpan="4">
										<asp:Literal id="LnameTxt" runat="server"></asp:Literal>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="MainTD" ID="UserNameAllotTd"></asp:TableCell>
									<asp:TableCell CssClass="MainTD" ColumnSpan="4">
										<asp:Literal id="UserNameAllotTxt" runat="server"></asp:Literal>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="MainTD" ID="PwdAttotTd"></asp:TableCell>
									<asp:TableCell CssClass="MainTD" ColumnSpan="4">
										<asp:TextBox id="PwdAttotTxt" TextMode="Password" runat="server" CssClass="TxtCls" MaxLength="25"
											Width="200px" AccessKey="C" TabIndex="2"></asp:TextBox>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell CssClass="MainTD" ID="ReTypPwdTd"></asp:TableCell>
									<asp:TableCell CssClass="MainTD" ColumnSpan="4">
										<asp:TextBox id="ReTypPwdTxt" TextMode="Password" runat="server" CssClass="TxtCls" MaxLength="25"
											Width="200px" AccessKey="C" TabIndex="2"></asp:TextBox>
									</asp:TableCell>
								</asp:TableRow>
							</asp:Table>
						</asp:TableCell>
					</asp:TableRow>
					<asp:TableRow CssClass="MainFoot">
						<asp:TableCell>
							<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
								HorizontalAlign="center" ID="Table2" BorderWidth="0">
								<asp:TableRow CssClass="HideRow" Height="0">
									<asp:TableCell></asp:TableCell>
									<asp:TableCell></asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell >
										<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
											accessKey="C" onMouseOut="this.className='ButCls'"></asp:Button>
									</asp:TableCell>
									<asp:TableCell HorizontalAlign="Right" CssClass="HideRow">
										<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
											onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
									</asp:TableCell>
								</asp:TableRow>
							</asp:Table>
						</asp:TableCell>
					</asp:TableRow>
					<asp:TableRow CssClass="HideRow" Height="0">
						<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
							<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
							<input type="hidden" name="CopySubObj" value="0">
						</asp:TableCell>
					</asp:TableRow>
				</asp:Table>
			</div>
		</form>
	</body>
</HTML>
