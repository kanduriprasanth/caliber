<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AppMail.aspx.vb" Inherits="Admin.AppMail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<META content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<META content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<META content="JavaScript" name="vs_defaultClientScript">
		
		<STYLE>
		.MenuAnc{Padding:2px;width:90px;border-style:groove;border-width:2px;}
		.MenuAncOver{Padding:2px;width:90px;border-style:groove;border-width:2px;background-color:#AA4400;Color:White;}
		.ToAnc{border-style:groove;border-width:0px;Text-Decoration:none;Color:black;Padding:2px;}
		.ToAncOver{border-style:outset;border-width:1px;Text-Decoration:none;Color:black;Padding:1px;}
		</STYLE>
	</HEAD>
	
	<BODY MS_POSITIONING="GridLayout" bottommargin=0 rightmargin=0>
		<FORM id="f1" name="f1" method="post" runat="server">
			<ASP:VALIDATIONSUMMARY id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
			
			<TABLE class="MainTable" height="400" cellSpacing="0" cellPadding="0" width="720" align="center" border="0">
			<!-- MAIN HEADER -->
			<TR><TD class="MainHead" colspan=2>Caliber Mail - System Mails</TD></TR>
			<TR><TD style="Padding-Right:0px;Width:120px;" valign=top>
			
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" height=100% style="border-style:groove;border-width:2px;" valign=top>
							<TR>
								<TD class="MainTD" valign=top align=center>
									<BR>
									<A href="MailInbox.aspx" class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">Inbox</a><BR>
									<A href="MailCompose.aspx"  class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">Compose</a><BR>
									<A href="MailSent.aspx" class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">Sent Mails</a><BR>
									<A href="MailDeleted.aspx" class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">Deleted Mails</a><BR><BR>
									
									<A href="AppMail.aspx" class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">System Mails</a>
								</TD>
							</TR>
						</TABLE>			
						
			</TD><TD valign=top> <!--''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''-->
			
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="border-style:groove;border-width:2px;">
							<TR><TD class="MainTD" style="Padding-Top:5px;font-size:10pt;">
							<ASP:LABEL Runat=server ID="Label5"><B>System Mails For</b></ASP:LABEL> <ASP:LABEL Runat=server ID="lblInboxFor"></ASP:LABEL></TD></TR>
						</TABLE>
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="border-style:groove;border-width:2px;">
						<TR><TD class="MainTD" style="Padding:5px;padding-bottom:10px;">
								<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging=True PagerStyle-Mode=NumericPages PageSize=20 PagerStyle-CssClass=PagerTD PagerStyle-PageButtonCount=15 PagerStyle-HorizontalAlign=Center>
								<COLUMNS>
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
								<ITEMTEMPLATE><ASP:LABEL id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</ASP:LABEL></ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>
								
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Event">
								<ITEMTEMPLATE><ASP:LABEL id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Subject") %>'></ASP:LABEL></ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>
								
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Originated By">
								<ITEMTEMPLATE><ASP:LABEL id="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AlertBy") %>'></ASP:LABEL></ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>
								
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Originated On" ItemStyle-Width="130">
								<ITEMTEMPLATE><ASP:LABEL id="Label10" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.AlertOn") %>'></ASP:LABEL></ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>
								
								<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Action Required">
								<ITEMTEMPLATE><ASP:LABEL id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Message") %>'></ASP:LABEL></ITEMTEMPLATE>
								</ASP:TEMPLATECOLUMN>
								</COLUMNS>
								</ASP:DATAGRID>
						</TD></TR>
						</TABLE>
			
			</TD></TR>
			</TABLE>
</FORM>

<SCRIPT ID=clientEventHandlersJS LANGUAGE=javascript>
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
</BODY>
</HTML>
