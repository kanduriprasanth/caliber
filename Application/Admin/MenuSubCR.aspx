<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MenuSubCR.aspx.vb" Inherits="Admin.MenuSubCR" %>
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
					<TD class="MainHead">New Sub Menu Registration</TD>
				</TR>
				<!-- MAIN BODY -->
				<TR>
					<TD>
						<TABLE WIDTH="100%" class="SubTable" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0"
							style="BORDER-RIGHT:2px groove;PADDING-RIGHT:5px;BORDER-TOP:2px groove;PADDING-LEFT:5px;PADDING-BOTTOM:5px;BORDER-LEFT:2px groove;PADDING-TOP:5px;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="PADDING-TOP:5px">
									<asp:Label Runat="server" id="Label2" style="PADDING-LEFT:5px" Width="110">Category Name</asp:Label>
									<asp:DropDownList Runat="server" ID="CategoryList" AutoPostBack="True" Width="200">
										<asp:ListItem Value='1'>Course Manager</asp:ListItem>
										<asp:ListItem Value='2'>SOP Manager</asp:ListItem>
										<asp:ListItem Value='3'>System Manager</asp:ListItem>
										<asp:ListItem Value='4'>Doc. Manager</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Select Category Name"
										ControlToValidate="CategoryList">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:5px">
									<asp:Label Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="110">Module Name</asp:Label>
									<asp:DropDownList Runat="server" ID="ModuleList" AutoPostBack="True" Width="200">
										<asp:ListItem Value=''>[Select Module Name]</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator3" runat="server" Display="Dynamic" ErrorMessage="Select Module Name"
										ControlToValidate="ModuleList">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:5px">
									<asp:Label Runat="server" id="Label8" style="PADDING-LEFT:5px" Width="110">Sub Module Name</asp:Label>
									<asp:DropDownList Runat="server" ID="SubModuleList" AutoPostBack="True" Width="200">
										<asp:ListItem Value=''>[Select Sub Module Name]</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator2" runat="server" Display="Dynamic" ErrorMessage="Select Sub Module Name"
										ControlToValidate="SubModuleList">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:5px">
									<asp:Label Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="110">No. Of Sub Menus</asp:Label>
									<asp:DropDownList Runat="server" ID="MenuItems" AutoPostBack="True">
										<asp:ListItem Value='01'>01</asp:ListItem>
										<asp:ListItem Value='02'>02</asp:ListItem>
										<asp:ListItem Value='03'>03</asp:ListItem>
										<asp:ListItem Value='04'>04</asp:ListItem>
										<asp:ListItem Value='05'>05</asp:ListItem>
										<asp:ListItem Value='06'>06</asp:ListItem>
										<asp:ListItem Value='07'>07</asp:ListItem>
										<asp:ListItem Value='08'>08</asp:ListItem>
										<asp:ListItem Value='09'>09</asp:ListItem>
										<asp:ListItem Value='10'>10</asp:ListItem>
										<asp:ListItem Value='11'>11</asp:ListItem>
										<asp:ListItem Value='12'>12</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator1" runat="server" Display="Dynamic" ErrorMessage="Select No Of Menu Items"
										ControlToValidate="MenuItems">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT:5px;PADDING-LEFT:5px;PADDING-BOTTOM:5px;PADDING-TOP:5px">
									<asp:Table Runat="server" ID="MenuTable" Width="100%" CellPadding="0" CellSpacing="1" BorderWidth="0"
										style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
										<asp:TableRow CssClass="MainTD">
											<asp:TableCell style="Border-style:groove;border-width:2px;">Menu Name</asp:TableCell>
											<asp:TableCell style="Border-style:groove;border-width:2px;">Menu Path</asp:TableCell>
											<asp:TableCell style="Border-style:groove;border-width:2px;">Menu Code</asp:TableCell>
											<asp:TableCell style="Border-style:groove;border-width:2px;">Sq. No</asp:TableCell>
										</asp:TableRow>
									</asp:Table>
								</TD>
							</TR>
						</TABLE>
				<!-- MAIN FOOTER -->
				<TR>
					<TD colspan="2" class="MainFoot">
						<asp:Button Text="Submit" class="ButCls" id="btnSubmit" runat="server" onMouseOver="this.className='ButOCls'"
							onMouseOut="this.className='ButCls'"></asp:Button>
						<input type="reset" Value="Reset" class="ButCls" onMouseOver="this.className='ButOCls'"
							onMouseOut="this.className='ButCls'">
						<asp:Label id="lblErrorDisplay" ForeColor="red" runat="server"></asp:Label>
					</TD>
				</TR>
				<TR>
					<TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
							<TR>
								<TD class="SubHead">Existing Menus</TD>
							</TR>
							<TR>
								<TD>
									<asp:DataGrid CssClass="SubTable" id="DGridMenus" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False">
										<Columns>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
												<ItemTemplate>
													<asp:Label id="Label3" runat="server" Width="64px" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Menu Name">
												<ItemTemplate>
													<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_DESC") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Menu Code"
												ItemStyle-Width="80">
												<ItemTemplate>
													<asp:Label id="Label13" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_CODE") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Menu Path">
												<ItemTemplate>
													<asp:Label id="Label9" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_PATH") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Seq. NO" ItemStyle-Width="80">
												<ItemTemplate>
													<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_SUBMEN_SEQ_NUM") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Status" ItemStyle-Width="50">
												<ItemTemplate>
													<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_STATUS_ID") %>'>
													</asp:Label>
												</ItemTemplate>
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
