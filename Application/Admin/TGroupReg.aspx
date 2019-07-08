<%@ Page Language="vb" AutoEventWireup="false" Codebehind="TGroupReg.aspx.vb" Inherits="Admin.TGroupReg1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>GroupReg</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="f1" name="f1" method="post" runat="server">
			<asp:ValidationSummary id="ValidationSummary2" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px"
				runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="550" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Group Registration</TD>
				</TR>
				<TR>
					<TD style="PADDING-BOTTOM:0px">
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead" colspan="3">New User Group Registration</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label8" style="PADDING-LEFT:5px">User Group Category</asp:Label></TD>
								<TD class="MainTD">
									<asp:DropDownList Runat="server" ID="GroupCategory" CssClass="TxtCls" Width="195">
										<asp:ListItem Value="2">[Select Group Category]</asp:ListItem>
										<asp:ListItem Value="0">General Category</asp:ListItem>
										<asp:ListItem Value="1">SOP Category</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator3" runat="server" InitialValue="2" Display="Dynamic" ErrorMessage="Select Group Category"
										ControlToValidate="GroupCategory">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label1" style="PADDING-LEFT:5px">New User Group Name </asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="GroupName" CssClass="TxtCls" Width="195" MaxLength="30"></asp:textbox>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator1" runat="server" Display="Dynamic" ErrorMessage="Enter Group Name"
										ControlToValidate="GroupName">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label2" style="PADDING-LEFT:5px">Description </asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="Description" CssClass="TxtCls" Width="195" TextMode="MultiLine"></asp:textbox>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator2" runat="server" Display="Dynamic" ErrorMessage="Enter Description"
										ControlToValidate="Description">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:button id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></asp:button>
						<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="WIDTH:60px">
					</TD>
				</TR>
				<TR>
					<TD><br>
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead" colspan="3">Existing User Groups</TD>
							</TR>
							<TR>
								<TD>
									<asp:DataGrid CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False">
										<Columns>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
												<ItemTemplate>
													<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Group Name">
												<ItemTemplate>
													<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.GroupName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Group Category">
												<ItemTemplate>
													<asp:Label id="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.GroupType") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Registered By">
												<ItemTemplate>
													<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedBy") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Registered On">
												<ItemTemplate>
													<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedOn") %>'>
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
			</TABLE>
		</form>
	</body>
</HTML>
