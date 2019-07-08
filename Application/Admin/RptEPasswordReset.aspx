<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RptEPasswordReset.aspx.vb" Inherits="Admin.RptEPasswordReset" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <HEAD>
    <TITLE></TITLE>
    <META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <META name=vs_defaultClientScript content="JavaScript">
    
	<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">	--%>
	<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	<script type="text/javascript">
    document.oncontextmenu=new Function("return false");
    </script>
	</HEAD>
	
	<BODY MS_POSITIONING="GridLayout">
	
		<FORM id="f1" name="f1" method="post" runat="server">
		<ASP:VALIDATIONSUMMARY id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		
		<TABLE class="MainTable" height="100" cellSpacing="0" cellPadding="0" width="750" align="center" border="0">
		<!-- MAIN HEADER -->
		<TR><TD class="MainHead">Audit Trail</TD></TR>
		<TR><TD>
		
				<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
				<TR><TD class="SubHead">E-sign Password Reset Audit Trail</TD></TR>
				<TR><TD>
						<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging=True PagerStyle-Mode=NumericPages PageSize=20 PagerStyle-CssClass=PagerTD PagerStyle-PageButtonCount=15 PagerStyle-HorizontalAlign=Center>
						<COLUMNS>
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="45">
							<ITEMTEMPLATE><ASP:LABEL id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Requested By">
							<ITEMTEMPLATE><ASP:LABEL id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.UserName") %>'></ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Requested On" ItemStyle-Width="135">
							<ITEMTEMPLATE><ASP:LABEL id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RequestOn") %>'></ASP:LABEL></ITEMTEMPLATE>							
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Reason">
							<ITEMTEMPLATE><ASP:LABEL id="Label2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Message") %>'></ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Reset By">
							<ITEMTEMPLATE><ASP:LABEL id="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ApprovedBy") %>'></ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Reset On" ItemStyle-Width="135">
							<ITEMTEMPLATE><ASP:LABEL id="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ApprovedOn") %>'></ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
						</COLUMNS>
						</ASP:DATAGRID>
				</TD></TR>
				</TABLE>
				
		</TD></TR>
		<!-- MAIN FOOTER -->
		<TR><TD class="MainFoot">
		<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="button" value="Back" style="width:60px;" onclick="window.navigate('AuditTrial.aspx')">
		</TD></TR>
		</TABLE>
			
		</FORM>
  </BODY>
</HTML>