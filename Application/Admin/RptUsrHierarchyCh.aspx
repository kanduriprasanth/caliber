<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RptUsrHierarchyCh.aspx.vb" Inherits="Admin.RptRoleCh"%>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>RptRoleCh</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
	<%--	<link rel="stylesheet" href="CUSTOM.CSS" type="text/css">--%>
	<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script type="text/javascript">
        document.oncontextmenu=new Function("return false")
		
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="700" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"> <asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead" style="HEIGHT: 20px"><asp:Literal ID="SubHeadLtrl" Runat="server"></asp:Literal></TD>
							</TR>
							
							<TR>
					<TD>
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table2">
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</asp:TableCell>
							</asp:TableRow>
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
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="True" Width="50px"
										MaxLength="5">1</ASP:TEXTBOX>
										
										&nbsp;<input type="button" onClick="submit()" class='ButCls' onMouseOver="this.className='ButOCls'"
											onMouseOut="this.className='ButCls'" Value='Display'>
									</ASP:TABLECELL>
							</ASP:TABLEROW>
						</asp:Table>
					</TD>
				</TR>
							<TR>
								<TD>
									<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PagerStyle-Mode="NumericPages"
										PageSize="20" PagerStyle-CssClass="PagerTD" PagerStyle-PageButtonCount="15" PagerStyle-HorizontalAlign="Center">
										<Columns>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="40">
												<ItemTemplate>
													<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="User Name">
												<ItemTemplate>
													<asp:HyperLink id="Hyperlink1" Runat="server" NavigateUrl='<%# "RptUsrHierarchyChAudit.aspx?User_ID=" &amp; DataBinder.Eval(Container, "DataItem.Login_ID")%>' text='<%# DataBinder.Eval(Container, "DataItem.UserName") %>'>
													</asp:HyperLink>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Role">
												<ItemTemplate>
													<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Rolename") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Category">
												<ItemTemplate>
													<asp:Label id="Label10" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Category") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Hierarchy Set By">
												<ItemTemplate>
													<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Initiated_By") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Hierarchy Set On">
												<ItemTemplate>
													<asp:Label id="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.I_ON") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
									</ASP:DATAGRID>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<input onclick="window.navigate('AuditTrial.aspx')" class="ButCls" onmouseover="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" type="button" value="Back" style="WIDTH:60px">
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
