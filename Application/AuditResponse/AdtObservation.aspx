<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AdtObservation.aspx.vb" Inherits="AuditResponse.AdtObservation"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>AdtObservation</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" runat="server" WIDTH="100%" cssclass="MainTable" HorizontalAlign="center"
				BorderWidth="3" CELLSPACING="0" CELLPADDING="0">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Text="Observation Details" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:Table runat="server" CSSClass="SubTable" width="500%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table1">
							<asp:TableRow id="LotInfoTr">
								<asp:TableCell CssClass="MainTD" columnspan="2">
									<asp:Table id="LotInfoTab" runat="server" cssclass="SubTable" width="100%"></asp:Table>
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
								<asp:TableCell>
									<input type="button" onMouseOver="this.className='ButOCls'" Class='ButCls' accessKey="C"
										onMouseOut="this.className='ButCls'" Value='Close' onclick='window.close()' Width="70">
								</asp:TableCell>
								<asp:TableCell HorizontalAlign="Right"></asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
			</form>
	</body>
</HTML>
