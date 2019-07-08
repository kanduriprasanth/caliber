<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RptIPAddress.aspx.vb" Inherits="Admin.RptIPAddress" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>RptIPAddress</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
    
	<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">	--%>
	<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	
	<body MS_POSITIONING="GridLayout">
	
		<form id="f1" name="f1" method="post" runat="server">
		<asp:ValidationSummary id="ValidationSummary2" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
		
		<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="550" align="center" border="0">
		<!-- MAIN HEADER -->
		<TR><TD class="MainHead">Audit Trail</TD></TR>
		<TR><TD>
		
				<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
				<TR><TD class="SubHead">Client IP Address Audit Trail</TD></TR>
				<TR><TD>
						<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging=True PagerStyle-Mode=NumericPages PageSize=10 PagerStyle-CssClass=PagerTD PagerStyle-PageButtonCount=15 PagerStyle-HorizontalAlign=Center>
						<Columns>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
								<ItemTemplate>
									<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="IP Address">
								<ItemTemplate>
									<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.IPAddress") %>'>
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
									<asp:Label id="Label2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedOn") %>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Current Status" ItemStyle-Width="85">
								<ItemTemplate>
									<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Status")%>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
						</Columns>
						</asp:DataGrid>
				</TD></TR>
				</TABLE>
				
		</TD></TR>
		<!-- MAIN FOOTER -->
		<TR><TD class="MainFoot">
		<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="button" value="Back" style="width:60px;" onclick="window.navigate('AuditTrial.aspx')">
		</TD></TR>
		</TABLE>
			
		</form>
  </body>
</html>
