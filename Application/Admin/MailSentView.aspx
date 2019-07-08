<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MailSentView.aspx.vb" Inherits="Admin.MailSentView" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<style>
		.MenuAnc{Padding:2px;width:90px;border-style:groove;border-width:2px;}
		.MenuAncOver{Padding:2px;width:90px;border-style:groove;border-width:2px;background-color:#AA4400;Color:White;}
		.ToAnc{border-style:groove;border-width:0px;Text-Decoration:none;Color:black;Padding:2px;}
		.ToAncOver{border-style:outset;border-width:1px;Text-Decoration:none;Color:black;Padding:1px;}
		</style>
	</HEAD>
	
	<body MS_POSITIONING="GridLayout" bottommargin=0 rightmargin=0>
		<form id="f1" name="f1" method="post" runat="server">
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			
			<TABLE class="MainTable" height="400" cellSpacing="0" cellPadding="0" width="720" align="center" border="0">
			<!-- MAIN HEADER -->
			<TR><TD class="MainHead" colspan=2>Caliber Mail - Sent Message View</TD></TR>
			<TR><TD style="Padding-Right:0px;Width:120px;" valign=top>
			
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" height=100% style="border-style:groove;border-width:2px;" valign=top>
							<TR>
								<TD class="MainTD" valign=top align=center>
									<BR>
									<A href="MailInbox.aspx" class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">Inbox</a><BR>
									<A href="MailCompose.aspx"  class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">Compose</a><BR>
									<A href="MailSent.aspx" class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">Sent Mails</a><BR>
									<A href="MailDeleted.aspx" class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">Deleted Mails</a><BR><BR>
									
									<%--<A href="AppMail.aspx" class=MenuAnc onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">System Mails</a>--%>
								</TD>
							</TR>
						</TABLE>			
						
			</TD><TD valign=top> <!--''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''-->
			
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="border-style:groove;border-width:2px;">
							<TR><TD class="MainTD" style="Padding-Top:5px;font-size:10pt;">
							<asp:Label Runat=server ID="Label5"><B>Message sent from</b> <asp:Label Runat=server ID="lblMessageFrom"></asp:Label></asp:Label></TD></TR>
						</TABLE>
						
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="border-style:groove;border-width:2px;">	
							
							<TR><TD class="MainTD" style="Padding-Top:2px;width:75px;" valign=top>
								<asp:Label Runat=server ID="Label2" Width=70>To</asp:Label><b>:</b></TD>
								<TD class="MainTD" style="Padding-Top:2px;" valign=top>
								<asp:Label Runat=server ID="lblTo"></asp:Label></TD></TR>
								
							<TR><TD class="MainTD" style="Padding-Top:2px;" valign=top>
								<asp:Label Runat=server ID="Label4" Width=70>Cc</asp:Label><b>:</b></TD>
								<TD class="MainTD" style="Padding-Top:2px;" valign=top>
								<asp:Label Runat=server ID="lblCc"></asp:Label></TD></TR>
								
							<TR><TD class="MainTD" style="Padding-Top:2px;" valign=top>
								<asp:Label Runat=server ID="Label9" Width=70>Subject</asp:Label><b>:</b></TD>
								<TD class="MainTD" style="Padding-Top:2px;" valign=top>
								<asp:Label Runat=server ID="lblSubject"></asp:Label></TD></TR>
								
							<TR><TD class="MainTD" style="Padding-Top:2px;" valign=top>
								<asp:Label Runat=server ID="Label11" Width=70>Sent On</asp:Label><b>:</b></TD>
								<TD class="MainTD" style="Padding-Top:2px;" valign=top>
								<asp:Label Runat=server ID="lblSentOn"></asp:Label></TD></TR>
						</TABLE>
						
						<DIV width="100%" style="border-style:groove;border-width:2px;Padding:3px;">
							<DIV valign=top STYLE="height:295px;overflow:scroll;border-style:double;border-width:1px;border-color:gray;Background-color:white;font-size:x-small;">
								<asp:Literal Runat=server ID="Literal1"></asp:Literal>
							</DIV>
						</DIV>
			
			</TD></TR>
			</TABLE>
</form>

<SCRIPT ID=clientEventHandlersJS LANGUAGE=javascript>
<!--

//-->
</SCRIPT>
</body>
</HTML>
