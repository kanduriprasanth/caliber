<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RptPasswordReset.aspx.vb" Inherits="Admin.RptPasswordReset" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl3" Src="SearchCtrl3.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <HEAD>
    <TITLE></TITLE>
    <META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <META name=vs_defaultClientScript content="JavaScript">
    
	<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">	--%>
	<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	   <script language="javascript" src="../JScript/Common2.js"></script>
	    <script type="text/javascript">
        document.oncontextmenu=new Function("return false");
        </script>
	</HEAD>
	
	<BODY MS_POSITIONING="GridLayout">
	
		<FORM id="f1" name="f1" method="post" runat="server">
		<ASP:VALIDATIONSUMMARY id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		
		<TABLE class="MainTable" height="100" cellSpacing="0" cellPadding="0" width="750" align="center" border="0">
		<!-- MAIN HEADER -->
		<TR><TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal> </TD></TR>
		
		<TR><TD>
		
				<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
				<TR><TD class="SubHead"><asp:Literal ID="SubHeadLtrl" Runat="server"></asp:Literal></TD></TR>
				<TR>
								<TD><asp:table id="Table2" runat="server" HorizontalAlign="center" cellspacing="1" CELLPADDING="0"
										width="100%" CSSClass="SubTable">
										<asp:TableRow>
											<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
												<uc1:SearchCtrl3 id="SearchCtrl1" runat="server"></uc1:SearchCtrl3>
											</asp:TableCell>
										</asp:TableRow>
										<ASP:TABLEROW>
											<ASP:TABLECELL CssClass="MainTD">
												<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
											</ASP:TABLECELL>
											<ASP:TABLECELL CssClass="MainTD">
												<ASP:LITERAL id="MaxRecCntLtrl" Runat="server">0</ASP:LITERAL>
											</ASP:TABLECELL>
											<ASP:TABLECELL CssClass="MainTD">
												<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
											</ASP:TABLECELL>
											<ASP:TABLECELL CssClass="MainTD">
												<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
													Width="50px">20</ASP:TEXTBOX>
											</ASP:TABLECELL>
											<ASP:TABLECELL CssClass="MainTD">
												<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
											</ASP:TABLECELL>
											<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="True" Width="50px" MaxLength="5">1</ASP:TEXTBOX>
										
										&nbsp;<input type="button" onClick="submit()" class='ButCls' onMouseOver="this.className='ButOCls'"
													onMouseOut="this.className='ButCls'" Value='Display'>
									</ASP:TABLECELL>
										</ASP:TABLEROW>
									</asp:table></TD>
							</TR>
				<TR><TD>
						<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging=True PagerStyle-Mode=NumericPages PageSize=20 PagerStyle-CssClass=PagerTD PagerStyle-PageButtonCount=15 PagerStyle-HorizontalAlign=Center>
						<COLUMNS>
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
							<ITEMTEMPLATE><ASP:LABEL id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Requested By">
							<ITEMTEMPLATE><ASP:LABEL id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RequestBy") %>'></ASP:LABEL></ITEMTEMPLATE>
							</ASP:TEMPLATECOLUMN>
							
							<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Requested On" >
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