<%@ Page Language="vb" AutoEventWireup="false" Codebehind="usermessages.aspx.vb" Inherits="Admin.usermessages" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl2" Src="SearchCtrl2.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<%--<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<SCRIPT language="javascript" src='../JScript/Common.js'></SCRIPT>
		<script language="javascript" src="../JScript/Common2.js"></script>
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE WIDTH="700" Height="200" class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0"
				CELLPADDING="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
							<TR>
								<TD class="SubHead"><asp:Literal ID="SubHeadLtrl" Runat="server"></asp:Literal> </TD>
							</TR>
							
							<TR>
								<TD><asp:table id="Table2" runat="server" HorizontalAlign="center" cellspacing="1" CELLPADDING="0"
										width="100%" CSSClass="SubTable">
										<asp:TableRow>
											<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
												<uc1:SearchCtrl2 id="SearchCtrl1" runat="server"></uc1:SearchCtrl2>
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
							<TR>
							
							
							<TR>
								<TD>
									<asp:DataGrid CssClass="SubTable" id="DGridMessages" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PagerStyle-Mode="NumericPages"
										PageSize="20" PagerStyle-CssClass="PagerTD" PagerStyle-PageButtonCount="15" PagerStyle-HorizontalAlign="Center">
										<Columns>
											<asp:TemplateColumn HeaderText="S.No.">
												<HeaderStyle CssClass="HeadTD"></HeaderStyle>
												<ItemStyle CssClass="MainTD"></ItemStyle>
												<ItemTemplate>
													<asp:Label id=Ll3 runat="server" Width="17px" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Request Type">
												<HeaderStyle CssClass="HeadTD"></HeaderStyle>
												<ItemStyle CssClass="MainTD"></ItemStyle>
												<ItemTemplate>
													<asp:Label id=Label1 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Requesttype") %>' width="106px">
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Requested By">
												<HeaderStyle CssClass="HeadTD"></HeaderStyle>
												<ItemStyle CssClass="MainTD"></ItemStyle>
												<ItemTemplate>
													<asp:Label id=Label10 runat="server" Width="150px" Text='<%# DataBinder.Eval(Container, "DataItem.requestor") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Date &amp; Time">
												<HeaderStyle CssClass="HeadTD"></HeaderStyle>
												<ItemStyle CssClass="MainTD"></ItemStyle>
												<ItemTemplate>
													<asp:Label id=Label6 runat="server" Width="117px" Text='<%# DataBinder.Eval(Container, "DataItem.datetime1") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderText="Message">
												<HeaderStyle CssClass="HeadTD"></HeaderStyle>
												<ItemStyle CssClass="MainTD"></ItemStyle>
												<ItemTemplate>
													<asp:Label id=Label2 runat="server" Width="100px" Text='<%# DataBinder.Eval(Container, "DataItem.Message") %>'>
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
