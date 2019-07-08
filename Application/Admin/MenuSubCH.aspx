<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MenuSubCH.aspx.vb" Inherits="Admin.MenuSubCH" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE WIDTH="700" Height="200" class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0"
				CELLPADDING="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Sub Menu Change</TD>
				</TR>
				<!-- MAIN BODY -->
				<TR>
					<TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="PADDING-TOP:5px">
									<ASP:LABEL Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="130">Category Name</ASP:LABEL>
									<ASP:DROPDOWNLIST Runat="server" ID="CategoryList" AutoPostBack="True" Width="200">
										<asp:ListItem Value='1'>Course Manager</asp:ListItem>
										<asp:ListItem Value='2'>SOP Manager</asp:ListItem>
										<asp:ListItem Value='3'>System Manager</asp:ListItem>
										<asp:ListItem Value='4'>Doc. Manager</asp:ListItem>
									</ASP:DROPDOWNLIST>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Select Category Name"
										ControlToValidate="CategoryList">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:5px">
									<asp:Label Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="130">Module Name</asp:Label>
									<asp:DropDownList Runat="server" ID="ModuleList" AutoPostBack="True" Width="200">
										<asp:ListItem Value=''>[Select Module Name]</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator3" runat="server" Display="Dynamic" ErrorMessage="Select Module Name"
										ControlToValidate="ModuleList">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-BOTTOM:5px;PADDING-TOP:5px">
									<asp:Label Runat="server" id="Label8" style="PADDING-LEFT:5px" Width="130">Sub Module Name</asp:Label>
									<asp:DropDownList Runat="server" ID="SubModuleList" AutoPostBack="True" Width="200">
										<asp:ListItem Value=''>[Select Sub Module Name]</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator2" runat="server" Display="Dynamic" ErrorMessage="Select Sub Module Name"
										ControlToValidate="SubModuleList">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="PADDING-TOP:0px">
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="SubHead">Existing Sub Menus</TD>
							</TR>
							<TR>
								<TD>
									<asp:DataGrid CssClass="SubTable" id="DGridMenus" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False">
										<Columns>
											<asp:TemplateColumn HeaderText="Edit Column" HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD"
												ItemStyle-Width="80">
												<ItemTemplate>
													<asp:LinkButton text="Edit" CommandName="Edit" Runat="server" ID="Linkbutton7" CausesValidation="False"></asp:LinkButton>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:LinkButton text="Update" CommandName="Update" CausesValidation="False" Runat="server" ID="Linkbutton1"></asp:LinkButton>
													<asp:LinkButton text="Cancel" CausesValidation="False" CommandName="Cancel" Runat="server" ID="Linkbutton2"></asp:LinkButton>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Sub Menu ID"
												ItemStyle-Width="70">
												<ItemTemplate>
													<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMENU_ID") %>'>
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:textbox CssClass=txtcls Width=50 id="Textbox7" ReadOnly=True runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMENU_ID") %>'>
													</asp:textbox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Sub Menu Name">
												<ItemTemplate>
													<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_DESC") %>'>
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:textbox id="Textbox1" CssClass=txtcls MaxLength=30 Width=140 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_DESC") %>'>
													</asp:textbox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Sub Menu Code"
												ItemStyle-Width="90">
												<ItemTemplate>
													<asp:Label id="Label13" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_CODE") %>'>
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:textbox CssClass=txtcls Width=60 id="Textbox2" MaxLength=30 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_CODE") %>'>
													</asp:textbox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Sub Menu Path">
												<ItemTemplate>
													<asp:Label id="Label9" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_PATH") %>'>
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:textbox CssClass=txtcls Width=200 id="Textbox3" MaxLength=100 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_PATH") %>'>
													</asp:textbox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Seq. NO" ItemStyle-Width="60">
												<ItemTemplate>
													<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_SEQ_NUM") %>'>
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:textbox CssClass=txtcls Width=30 id="Textbox4" MaxLength=2 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_SEQ_NUM") %>'>
													</asp:textbox>
												</EditItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Status" ItemStyle-Width="50">
												<ItemTemplate>
													<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_STATUS_ID") %>'>
													</asp:Label>
												</ItemTemplate>
												<EditItemTemplate>
													<asp:textbox CssClass=txtcls Width=25 id="Textbox5" MaxLength=1 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_STATUS_ID") %>'>
													</asp:textbox>
												</EditItemTemplate>
											</asp:TemplateColumn>
										</Columns>
									</asp:DataGrid>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="PADDING-BOTTOM:5px">
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove"
									align="center"><A href="ModuleCR.aspx">Module Create</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove"
									align="center"><A href="ModuleCH.aspx">Module Change</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove"
									align="center"><A href="MenuCR.aspx">Menu Create</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove"
									align="center"><A href="MenuCH.aspx">Menu Change</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove"
									align="center"><A href="MenuSubCR.aspx">Sub Menu Create</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove"
									align="center"><A href="MenuSubCH.aspx">Sub Menu Chage</A></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
		</form>
	</body>
</HTML>
