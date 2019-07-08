<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserAccStatusHis.aspx.vb" Inherits="Admin.UserAccStatusHis" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <HEAD>
    <TITLE>RptAccStatus</TITLE>
    <META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <META name=vs_defaultClientScript content="JavaScript">
    
   <%-- <LINK rel=stylesheet href=CUSTOM.CSS type=text/css>--%>
   <LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
  </HEAD>
  <BODY MS_POSITIONING="GridLayout">

    <FORM id="Form1" method="post" runat="server">

			<TABLE class="MainTable" cellSpacing="0" cellPadding="0" width="650" align="center" border="0">
			<!-- MAIN HEADER -->
			<TR><TD class="MainHead">User Account Status History - <ASP:LABEL ID=lblUserName Runat=server ></ASP:LABEL></TD></TR>
			<TR><TD>
	
						<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging=True PagerStyle-Mode=NumericPages PageSize=20 PagerStyle-CssClass=PagerTD PagerStyle-PageButtonCount=15 PagerStyle-HorizontalAlign=Center>
						<COLUMNS>
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="SubHead" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="40">
									<ITEMTEMPLATE>
										<ASP:LABEL id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</ASP:LABEL>
									</ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>								
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="SubHead" ItemStyle-CssClass="MainTD" HeaderText="Status Revised By"  ItemStyle-Width="110">
									<ITEMTEMPLATE>
										<ASP:LABEL id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedBy") %>'></ASP:LABEL>
									</ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="SubHead" ItemStyle-CssClass="MainTD" HeaderText="Revised On" ItemStyle-Width="140">
									<ITEMTEMPLATE>
										<ASP:LABEL id="Label10" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedOn") %>'></ASP:LABEL>
									</ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="SubHead" ItemStyle-CssClass="MainTD" HeaderText="Revised Status"  ItemStyle-Width="90">
									<ITEMTEMPLATE>
										<ASP:LABEL id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Status") %>'></ASP:LABEL>
									</ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="SubHead" ItemStyle-CssClass="MainTD" HeaderText="Reason" ItemStyle-Width="150">
									<ITEMTEMPLATE>
										<ASP:LABEL id="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedRem") %>'></ASP:LABEL>
									</ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>
							</COLUMNS>
						</ASP:DATAGRID>					
				
				</TD></TR>
			
				<!-- MAIN FOOTER -->
				<TR><TD class="MainFoot">					
					<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="button" value="Back" style="width:60px;" onclick="window.history.back()">
				</TD></TR>
			</TABLE>
    </FORM>

  </BODY>
</HTML>
