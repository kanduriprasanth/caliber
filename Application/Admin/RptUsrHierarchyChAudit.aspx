<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RptUsrHierarchyChAudit.aspx.vb" Inherits="Admin.RptUsrHierarchyChAudit"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>RptUsrHierarchyChAudit</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<%--<LINK href="CUSTOM.CSS" type="text/css" rel="stylesheet">--%>
		<script language="javascript" src="../JScript/Common.js"></script>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language=javascript>
		function chk()
		{
			var cnt=0;
			if(document.all.item("ChkDiff",0)!=null)
			{
				var len=document.all("ChkDiff").length;
			}
			else
			{
				return;
			}
			var i;
			if(document.all("ChkMain",0).checked)
				cnt++;
			for(i=0;i<len;i++)
			{
				if(document.all("ChkDiff")(i).checked)
					cnt++;
				if(cnt==3)
				{
					alert('Select Atmost Two Versions');
					document.getElementById('Form1').reset();
					return
				}
			}
			
		}

		</script>
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="600" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Audit Trail</TD>
				</TR>
				<TR>
					<TD vAlign="top">
						<TABLE class="SubTable" style="BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; BORDER-BOTTOM: 2px groove"
							cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR>
								<TD class="SubHead" colSpan="2">Change User Hierarchy Revision Audit Trail</TD>
							</TR>
							<tr>
								<td class="MainTD" style="WIDTH: 80px">User Name</td>
								<td class="MainTD"><b>:</b>
									<asp:label id="lblUserName" Runat="server"></asp:label></td>
							</tr>
							<TR>
								<TD class="MainTD" style="WIDTH: 80px">Role</TD>
								<TD class="MainTD"><B>:</B>
									<ASP:LABEL id="lblRoleName" Runat="server"></ASP:LABEL></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="WIDTH: 80px">Category</TD>
								<TD class="MainTD" style="WIDTH: 90%"><B>:</B>
									<ASP:LABEL id="lblCategoryName" Runat="server"></ASP:LABEL></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="PADDING-TOP: 0px" vAlign="top">
						<TABLE class="SubTable" style="BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; BORDER-BOTTOM: 2px groove"
							cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR>
								<TD style="BACKGROUND-COLOR: gray" vAlign="top">
									<DIV style="DISPLAY: block; OVERFLOW: scroll; HEIGHT: 300px" valign="top"><asp:datagrid id="Datagrid1" runat="server" AutoGenerateColumns="False" Width="100%" BorderWidth="0"
											CellSpacing="1" CellPadding="0" CssClass="SubTable">
											<Columns>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="40"
													ItemStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Hierarchy Set By">
													<ItemTemplate>
														<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Initiated_By") %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Hierarchy Set On"
													ItemStyle-Width="140">
													<ItemTemplate>
														<asp:Label id="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.I_ON") %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Version No."
													ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label8" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Version")%>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Select*" ItemStyle-Width="80"
													ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label9" runat="server" Text='<%# GetMainCheckbox(DataBinder.Eval(Container, "DataItem.Login_ID"),DataBinder.Eval(Container, "DataItem.Version")) %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
											</Columns>
										</asp:datagrid>
										<asp:datagrid id="DataGrid2" runat="server" AutoGenerateColumns="False" Width="100%" BorderWidth="0"
											CellSpacing="1" CellPadding="0" CssClass="SubTable" ShowHeader="False">
											<Columns>
												<asp:TemplateColumn ItemStyle-CssClass="MainTD" ItemStyle-Width="40" ItemStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+2 %>'>Label</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn ItemStyle-CssClass="MainTD">
													<ItemTemplate>
														<asp:Label id="Label2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Initiated_By") %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn ItemStyle-CssClass="MainTD" ItemStyle-Width="140">
													<ItemTemplate>
														<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.I_ON") %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn ItemStyle-CssClass="MainTD" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label10" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Version") %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn ItemStyle-CssClass="MainTD" ItemStyle-Width="80" ItemStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label1" runat="server" Text='<%# GetCheckbox(DataBinder.Eval(Container, "DataItem.UHIsID"),DataBinder.Eval(Container, "DataItem.Version")) %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
											</Columns>
										</asp:datagrid></DIV>
								</TD>
							</TR>
						</TABLE>
						<BR>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="MainTD"><SPAN><FONT color="red" size="2"><B>*</FONT>Note:</B> Select <B>1</B>
										Version To View The Settings or Any <B>2</B> Versions For Comparison.</SPAN>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><asp:button id="btnSubmit" CssClass="ButexCls" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'"
							runat="server" Width="90" Text="Show Details"></asp:button>&nbsp;
						<input class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="window.history.back()"
							onmouseout="this.className='ButCls'" type="button" value="Back">
					</TD>
				</TR>
			</TABLE>
			<ASP:TEXTBOX id="txtUserName" style="DISPLAY: none" Runat="server" Width="0" Height="0"></ASP:TEXTBOX><ASP:TEXTBOX id="txtCategoryName" style="DISPLAY: none" Runat="server" Width="0" Height="0"></ASP:TEXTBOX><ASP:TEXTBOX id="txtRoleName" style="DISPLAY: none" Runat="server" Width="0" Height="0"></ASP:TEXTBOX></form>
	</body>
	<script language=javascript>
	//context menu		

if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}
//-->
</script>
</HTML>
