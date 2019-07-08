<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ModuleCR.aspx.vb" Inherits="Admin.ModuleCR" %>
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
			<TABLE WIDTH="550" Height="200" class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0"
				CELLPADDING="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">New Module Registration</TD>
				</TR>
				<!-- MAIN BODY -->
				<TR>
					<TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="PADDING-TOP:5px">
									<asp:Label Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="100">Category Name</asp:Label>
									<asp:DropDownList Runat="server" ID="CategoryList" AutoPostBack="True">
										<asp:ListItem Value=''>[Select Category Name]</asp:ListItem>
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
								<TD class="MainTD" style="PADDING-TOP:5px; HEIGHT:27px">
									<asp:Label Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="100">No. Of Modules</asp:Label>
									<asp:DropDownList Runat="server" ID="ModuleItems" AutoPostBack="True">
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
									<asp:RequiredFieldValidator id="Requiredfieldvalidator5" runat="server" Display="Dynamic" ErrorMessage="Select No Of Module Items"
										ControlToValidate="ModuleItems">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT:5px;PADDING-LEFT:5px;PADDING-BOTTOM:5px;PADDING-TOP:5px">
									<asp:Table Runat="server" ID="ModuleTable" Width="70%" CellPadding="0" CellSpacing="0" BorderWidth="0"
										style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
										<asp:TableRow CssClass="MainTD">
											<asp:TableCell style="Border-style:groove;border-width:2px;">Module Name</asp:TableCell>
											<asp:TableCell style="Border-style:groove;border-width:2px;">Seq. No</asp:TableCell>
										</asp:TableRow>
									</asp:Table>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:Button Text="Submit" class="ButCls" id="btnSubmit" runat="server" onMouseOver="this.className='ButOCls'"
							onMouseOut="this.className='ButCls'"></asp:Button>
						<input type="reset" Value="Reset" class="ButCls" onMouseOver="this.className='ButOCls'"
							onMouseOut="this.className='ButCls'">
					</TD>
				</TR>
				<TR>
					<TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
							<TR>
								<TD class="SubHead">Existing Modules</TD>
							</TR>
							<TR>
								<TD>
									<asp:DataGrid CssClass="SubTable" id="DGridModules" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False">
										<COLUMNS>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
												<ITEMTEMPLATE>
													<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
												</ITEMTEMPLATE>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Module Name">
												<ITEMTEMPLATE>
													<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_MOD_DESC") %>'>
													</asp:Label>
												</ITEMTEMPLATE>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Seq. NO" ItemStyle-Width="60">
												<ITEMTEMPLATE>
													<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_MOD_SEQ_NUM") %>'>
													</asp:Label>
												</ITEMTEMPLATE>
											</asp:TemplateColumn>
											<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Module Status"
												ItemStyle-Width="120">
												<ITEMTEMPLATE>
													<ASP:LABEL id="Label9" runat="server" Text='<%# fnCategoryNameDisplay(DataBinder.Eval(Container, "DataItem.AD_MOD_CAT_ID")) %>'>
													</ASP:LABEL>
												</ITEMTEMPLATE>
											</ASP:TEMPLATECOLUMN>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Status" ItemStyle-Width="50">
												<ITEMTEMPLATE>
													<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AD_STATUS_ID") %>'>
													</asp:Label>
												</ITEMTEMPLATE>
											</asp:TemplateColumn>
										</COLUMNS>
									</asp:DataGrid>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="PADDING-BOTTOM:5px">
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove"
									align="center"><A href="ModuleCR.aspx">Module Create</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove"
									align="center"><A href="ModuleCH.aspx">Module Change</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove"
									align="center"><A href="MenuCR.aspx">Menu Create</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove"
									align="center"><A href="MenuCH.aspx">Menu Change</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove"
									align="center"><A href="MenuSubCR.aspx">Sub Menu Create</A></TD>
								<TD class="MainTD" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove"
									align="center"><A href="MenuSubCH.aspx">Sub Menu Chage</A></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<asp:Label id="lblErrorDisplay" runat="server" ForeColor="red"></asp:Label>
			<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
		</form>
	</body>
</HTML>
