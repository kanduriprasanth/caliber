<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AppAlert.aspx.vb" Inherits="Admin.AppAlert" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>AppAlert</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="700" align="center"
				border="0">
				<TR>
					<TD class="MainHead">Task&nbsp;Alert</TD>
				</TR> <!-- MAIN HEADER -->
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead" colspan="3">Tasks For Action</TD>
							</TR>
							<TR>
								<TD>
									<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PagerStyle-Mode="NumericPages"
										PageSize="20" PagerStyle-CssClass="PagerTD" PagerStyle-PageButtonCount="15" PagerStyle-HorizontalAlign="Center">
										<COLUMNS>
											<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
												<ITEMTEMPLATE>
													<ASP:LABEL id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</ASP:LABEL>
												</ITEMTEMPLATE>
											</ASP:TEMPLATECOLUMN>
											<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Event">
												<ITEMTEMPLATE>
													<ASP:LABEL id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Message") %>'>
													</ASP:LABEL>
												</ITEMTEMPLATE>
											</ASP:TEMPLATECOLUMN>
											<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Initiated By">
												<ITEMTEMPLATE>
													<ASP:LABEL id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitBy") %>'>
													</ASP:LABEL>
												</ITEMTEMPLATE>
											</ASP:TEMPLATECOLUMN>
											<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Initiated On"
												ItemStyle-Width="130">
												<ITEMTEMPLATE>
													<ASP:LABEL id="Label10" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitOn") %>'>
													</ASP:LABEL>
												</ITEMTEMPLATE>
											</ASP:TEMPLATECOLUMN>
											<asp:TemplateColumn HeaderText="Action" HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD">
												<ItemTemplate>
													<asp:Hyperlink id="Label2"  runat="server" text='<%# DataBinder.Eval(Container, "DataItem.Action")%>' NavigateUrl ='<%# GetHyperLink(DataBinder.Eval(Container, "DataItem.ActionPage"), DataBinder.Eval(Container, "DataItem.EventById"), DataBinder.Eval(Container, "DataItem.Message")) %>'>
													</asp:Hyperlink>
												</ItemTemplate>
											</asp:TemplateColumn>
										</COLUMNS>
									</ASP:DATAGRID>
								</TD>
							</TR>
						</TABLE>
				<TR>
					<TD class="MainFoot"><!-- MAIN FOOTER -->
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="button" value="Back" style="WIDTH:60px" onclick="window.navigate('../BodyHome.aspx')">
					</TD>
				</TR>
				</TD></TR>
			</TABLE>
		</form>
	</body>
</HTML>
