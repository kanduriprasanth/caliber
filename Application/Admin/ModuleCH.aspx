<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ModuleCH.aspx.vb" Inherits="Admin.ModuleCH" %>
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
		
		
		
			<TABLE WIDTH="600" Height="200" class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
			<!-- MAIN HEADER -->
			<TR><TD class="MainHead">Module Change</TD></TR>
			
			<!-- MAIN BODY -->
			<TR><TD>
					<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="Border-style:groove;border-width:2px;">
					<TR><TD class="MainTD" style="padding-Top:5px;">
						<asp:Label Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="100">Category Name</asp:Label>
						<asp:DropDownList Runat="server" ID="CategoryList" AutoPostBack="True">						
							<asp:ListItem Value='1'>Course Manager</asp:ListItem>
							<asp:ListItem Value='2'>SOP Manager</asp:ListItem>
							<asp:ListItem Value='3'>System Manager</asp:ListItem>
							<asp:ListItem Value='4'>Doc. Manager</asp:ListItem>
						</asp:DropDownList>
						<asp:RequiredFieldValidator id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Select Category Name" ControlToValidate="CategoryList">*</asp:RequiredFieldValidator>
						</TD>
					</TR>
					</TABLE>
			</td></tr>
				
			<TR><TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
						<TR><TD class="SubHead">Existing Modules</TD></TR>
						<TR><TD>
							<asp:DataGrid CssClass="SubTable" id="DGridModules" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False">
							<COLUMNS>
									<asp:TemplateColumn HeaderText="Edit Column" HeaderStyle-CssClass=HeadTD ItemStyle-CssClass="MainTD" ItemStyle-Width="70">
										<ItemTemplate>
										<asp:LinkButton text=Edit CommandName=Edit Runat=server ID="Linkbutton7" CausesValidation=False></asp:LinkButton>
										</ItemTemplate>
										
										<EditItemTemplate>
										<asp:LinkButton text=Update CommandName=Update CausesValidation=False  Runat=server ID="Linkbutton1"></asp:LinkButton>
										<asp:LinkButton text=Cancel CausesValidation=False CommandName=Cancel  Runat=server ID="Linkbutton2"></asp:LinkButton>
										</EditItemTemplate>										
									</asp:TemplateColumn>
										
									<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Module ID" ItemStyle-Width="60">
									<ITEMTEMPLATE><asp:Label id="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_MOD_ID") %>'></asp:Label></ItemTemplate>
									<EditItemTemplate><asp:textbox CssClass=txtcls Width=50 id="Textbox7" ReadOnly=True runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_MOD_ID") %>'></asp:textbox></EditItemTemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Module Name">
									<ITEMTEMPLATE><asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_MOD_DESC") %>'></asp:Label></ItemTemplate>
									<EditItemTemplate><asp:textbox CssClass=txtcls Width=180 MaxLength=30 id="Textbox1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_MOD_DESC") %>'></asp:textbox></EditItemTemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Seq. NO" ItemStyle-Width="60">
									<ITEMTEMPLATE><asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_MOD_SEQ_NUM") %>'></asp:Label></ItemTemplate>
									<EditItemTemplate><asp:textbox CssClass=txtcls Width=40 MaxLength=2 id="Textbox2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_MOD_SEQ_NUM") %>'></asp:textbox></EditItemTemplate>
									</asp:TemplateColumn>
																		
									<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Module State" ItemStyle-Width="110">
									<ITEMTEMPLATE><asp:Label id="Label2" runat="server" Text='<%# fnCategoryNameDisplay(DataBinder.Eval(Container, "DataItem.AD_MOD_CAT_ID")) %>'></asp:Label></ItemTemplate>
									<EditItemTemplate><asp:textbox CssClass=txtcls Width=30 MaxLength=1 id="Textbox5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_MOD_CAT_ID") %>'></asp:textbox></EditItemTemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Status" ItemStyle-Width="50">
									<ITEMTEMPLATE><asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_STATUS_ID") %>'></asp:Label></ItemTemplate>
									<EditItemTemplate><asp:textbox CssClass=txtcls Width=30 MaxLength=1 id="Textbox4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_STATUS_ID") %>'></asp:textbox></EditItemTemplate>
									</asp:TemplateColumn>
							</Columns>
							</asp:DataGrid>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR><TD style="Padding-Bottom:5px;">
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="Border-style:groove;border-width:2px;">
						<TR>
							<TD class="MainTD" style="Border-style:groove;border-width:2px;" align=center><A href="ModuleCR.aspx">Module Create</A></TD>
							<TD class="MainTD" style="Border-style:groove;border-width:2px;" align=center><A href="ModuleCH.aspx">Module Change</A></TD>
							<TD class="MainTD" style="Border-style:groove;border-width:2px;" align=center><A href="MenuCR.aspx">Menu Create</A></td>
							<TD class="MainTD" style="Border-style:groove;border-width:2px;" align=center><A href="MenuCH.aspx">Menu Change</A></td> 
							<TD class="MainTD" style="Border-style:groove;border-width:2px;" align=center><A href="MenuSubCR.aspx">Sub Menu Create</A></td>
							<TD class="MainTD" style="Border-style:groove;border-width:2px;" align=center><A href="MenuSubCH.aspx">Sub Menu Change</A></td> 
						</TR>
						</TABLE>
				</TD></TR>
			</TABLE>
			<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
		</form>
	</body>
</HTML>
