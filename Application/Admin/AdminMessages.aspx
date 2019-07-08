<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AdminMessages.aspx.vb" Inherits="Admin.AdminMessages1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <HEAD>
    <TITLE></TITLE>
    <META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <META name=vs_defaultClientScript content="JavaScript">
    
	<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">	
	</HEAD>
	
	<BODY MS_POSITIONING="GridLayout">
	
		<FORM id="f1" name="f1" method="post" runat="server">
		<ASP:VALIDATIONSUMMARY id="ValidationSummary2" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		
		<TABLE class="MainTable" height="100" cellSpacing="0" cellPadding="0" width="720" align="center" border="0">
		<!-- MAIN HEADER -->
		<TR><TD class="MainHead">Messages</TD></TR>
		<TR><TD>
		
				<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
				<TR><TD class="SubHead">User Requests</TD></TR>
				<TR><TD>
						<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging=True PagerStyle-Mode=NumericPages PageSize=20 PagerStyle-CssClass=PagerTD PagerStyle-PageButtonCount=15 PagerStyle-HorizontalAlign=Center>
						<COLUMNS>
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="40">
							<ITEMTEMPLATE><ASP:LABEL id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Request Type" ItemStyle-Width="120">
							<ITEMTEMPLATE><ASP:LABEL id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RequestType")%>'></ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Requested By">
							<ITEMTEMPLATE><ASP:LABEL id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.UserName") %>'></ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Date & Time" ItemStyle-Width="120">
							<ITEMTEMPLATE><ASP:LABEL id="Label2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RequestOn") %>'></ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Message">
							<ITEMTEMPLATE><ASP:LABEL id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Message") %>'></ASP:LABEL></ITEMTEMPLATE>							
							</ASP:TEMPLATECOLUMN>
						</COLUMNS>
						</ASP:DATAGRID>
				</TD></TR>
				</TABLE>
				
		</TD></TR>
		<!-- MAIN FOOTER -->
		<TR><TD class="MainFoot">
		<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="button" value="Home" style="width:60px;" onclick="window.navigate('../BodyHome.aspx')">
		</TD></TR>
		</TABLE>
			
		</FORM>
  </BODY>
</HTML>