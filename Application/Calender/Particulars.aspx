<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Particulars.aspx.vb" Inherits="Calender.Particulars" %>
<HTML>
	<HEAD>
		<title>SampParticulars</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center"
				cssclass="MainTable"   runat="server" EnableViewState="false">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table1">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="2">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="2">
									<ASP:TABLE id="DataTab" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell  CssClass="MainFoot">
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainFoot">
									<input type="button" onMouseOver="this.className='ButOCls'" Class='ButCls' accessKey="C"
										onMouseOut="this.className='ButCls'" Value='Back' onclick='window.history.back()' Width="70">
								</asp:TableCell>
								<asp:TableCell CssClass="MainFoot" HorizontalAlign="Right"></asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
		</FORM></body>
</HTML>