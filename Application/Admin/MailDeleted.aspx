<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MailDeleted.aspx.vb" Inherits="Admin.MailDeleted" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<style>
		.MenuAnc { BORDER-RIGHT: 2px groove; PADDING-RIGHT: 2px; BORDER-TOP: 2px groove; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; BORDER-LEFT: 2px groove; WIDTH: 90px; PADDING-TOP: 2px; BORDER-BOTTOM: 2px groove }
		.MenuAncOver { BORDER-RIGHT: 2px groove; PADDING-RIGHT: 2px; BORDER-TOP: 2px groove; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; BORDER-LEFT: 2px groove; WIDTH: 90px; COLOR: white; PADDING-TOP: 2px; BORDER-BOTTOM: 2px groove; BACKGROUND-COLOR: #aa4400 }
		.ToAnc { BORDER-RIGHT: 0px groove; PADDING-RIGHT: 2px; BORDER-TOP: 0px groove; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; BORDER-LEFT: 0px groove; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: 0px groove; TEXT-DECORATION: none }
		.ToAncOver { BORDER-RIGHT: 1px outset; PADDING-RIGHT: 1px; BORDER-TOP: 1px outset; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; BORDER-LEFT: 1px outset; COLOR: black; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; TEXT-DECORATION: none }
		</style>
	</HEAD>
	<body MS_POSITIONING="GridLayout" bottommargin="0" rightmargin="0">
		<form id="f1" name="f1" method="post" runat="server">
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" height="400" cellSpacing="0" cellPadding="0" width="720" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead" colspan="2">Caliber Mail - Deleted Mails</TD>
				</TR>
				<TR>
					<TD style="PADDING-RIGHT:0px;WIDTH:120px" valign="top">
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" height="100%" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove"
							valign="top">
							<TR>
								<TD class="MainTD" valign="top" align="center">
									<BR>
									<A href="MailInbox.aspx" class="MenuAnc" onmouseover="this.className='MenuAncOver'"
										onmouseout="this.className='MenuAnc'">Inbox</A><BR>
									<A href="MailCompose.aspx" class="MenuAnc" onmouseover="this.className='MenuAncOver'"
										onmouseout="this.className='MenuAnc'">Compose</A><BR>
									<A href="MailSent.aspx" class="MenuAnc" onmouseover="this.className='MenuAncOver'"
										onmouseout="this.className='MenuAnc'">Sent Mails</A><BR>
									<A href="MailDeleted.aspx" class="MenuAnc" onmouseover="this.className='MenuAncOver'"
										onmouseout="this.className='MenuAnc'">Deleted Mails</A><BR>
									<BR>
								<%--	<A href="AppMail.aspx" class="MenuAnc" onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">
										System Mails</A>--%>
								</TD>
							</TR>
						</TABLE>
					</TD>
					<TD valign="top"> <!--''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''-->
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="FONT-SIZE:10pt;PADDING-TOP:5px">
									<asp:Label Runat="server" ID="Label5">
										<B>Deleted Mails for</B></asp:Label>
									<asp:Label Runat="server" ID="lblDeletedFor"></asp:Label></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:3px">
									<asp:Label Runat="server" ID="Label1">Total Messages <b>:</b></asp:Label>
									<asp:Label Runat="server" ID="lblTotalMsgs"></asp:Label></TD>
							</TR>
						</TABLE>
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="PADDING-TOP:3px">
									<asp:CheckBox Runat="server" Text="Select all displayed messages " ID="SelectAll" onClick="fnSelectAll()"></asp:CheckBox>&nbsp;
									<asp:Button Runat="server" Width="60" Text="Delete" style="BORDER-RIGHT:2px outset;BORDER-TOP:2px outset;BORDER-LEFT:2px outset;BORDER-BOTTOM:2px outset"
										ID='DeleteButtom' CssClass="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'"></asp:Button>
								</TD>
							</TR>
						</TABLE>
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT:5px;PADDING-LEFT:5px;PADDING-BOTTOM:10px;PADDING-TOP:5px">
									<asp:DataGrid id="Datagrid1" CssClass="SubTable" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PagerStyle-Mode="NumericPages"
										PageSize="15" PagerStyle-CssClass="PagerTD" PagerStyle-PageButtonCount="15" PagerStyle-HorizontalAlign="Center">
										<Columns>
											<asp:TemplateColumn HeaderStyle-CssClass="SubHead" ItemStyle-CssClass="MainTD" HeaderText=" " ItemStyle-Width="20"
												ItemStyle-HorizontalAlign="Center">
												<ItemTemplate>
													<%# fnGetCheckBox(DataBinder.Eval(Container, "DataItem.AD_IUM_ID"))%>
													</asp:CheckBox>&nbsp;
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="SubHead" ItemStyle-CssClass="MainTD" HeaderText="Sent From">
												<ItemTemplate>
													<asp:HyperLink id="Hyperlink1" Runat=server NavigateUrl='<%# "MailDeletedView.aspx?IUMID=" &amp; DataBinder.Eval(Container, "DataItem.AD_IUM_ID")%>' text='<%# DataBinder.Eval(Container, "DataItem.SentFrom") %>'>
													</asp:HyperLink>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="SubHead" ItemStyle-CssClass="MainTD" HeaderText="Subject">
												<ItemTemplate>
													<asp:Label id="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Subject")%>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="SubHead" ItemStyle-CssClass="MainTD" HeaderText="Recived On"
												ItemStyle-Width="135">
												<ItemTemplate>
													<asp:Label id="Label8" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SentOn")%>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
									</asp:DataGrid>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			</TD></TR></TABLE>
		</form>
		<SCRIPT ID="clientEventHandlersJS" LANGUAGE="javascript">
<!--
function fnSelectAll(){
	
	if(document.getElementById("Mails")!=null){
		var MailsCount = document.all("Mails").length
		if(isNaN(MailsCount)) MailsCount=0
		var flag = document.getElementById("SelectAll").checked;
		
		if(MailsCount>0){
			for(i=0;i<MailsCount;i++)
			document.all("Mails")(i).checked = flag;
		}else
		document.all("Mails").checked = flag;
	}
}

function fnMailsClick(){
	var MailsCount = document.all("Mails").length
	if(isNaN(MailsCount)) MailsCount=0
	var flag = true;
		
	if(MailsCount>0){
		for(i=0;i<MailsCount;i++){
			if(!document.all("Mails")(i).checked){
			flag=false;break;}
		}
	}else
	flag=document.all("Mails").checked;
	
	document.getElementById("SelectAll").checked = flag;
}
//-->
		</SCRIPT>
	</body>
</HTML>
