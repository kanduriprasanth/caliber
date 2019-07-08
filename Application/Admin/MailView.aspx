<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MailView.aspx.vb" Inherits="Admin.MailView" %>
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
					<TD class="MainHead" colspan="2">Caliber Mail - Message View</TD>
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
									<%--<A href="AppMail.aspx" class="MenuAnc" onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">
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
										<B>Message for</B>
										<asp:Label Runat="server" ID="lblMessageFor"></asp:Label>
									</asp:Label></TD>
							</TR>
						</TABLE>
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="WIDTH:80px;PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="Label1" Width="75">From</asp:Label><b>:</b></TD>
								<TD class="MainTD" style="PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="lblFrom"></asp:Label></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="Label2" Width="75">To</asp:Label><b>:</b></TD>
								<TD class="MainTD" style="PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="lblTo"></asp:Label></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="Label4" Width="75">Cc</asp:Label><b>:</b></TD>
								<TD class="MainTD" style="PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="lblCc"></asp:Label></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="Label9" Width="75">Subject</asp:Label><b>:</b></TD>
								<TD class="MainTD" style="PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="lblSubject"></asp:Label></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="Label11" Width="75">Recived On</asp:Label><b>:</b></TD>
								<TD class="MainTD" style="PADDING-TOP:2px" valign="top">
									<asp:Label Runat="server" ID="lblRecivedOn"></asp:Label></TD>
							</TR>
						</TABLE>
						<DIV width="100%" style="BORDER-RIGHT:2px groove;PADDING-RIGHT:3px;BORDER-TOP:2px groove;PADDING-LEFT:3px;PADDING-BOTTOM:3px;BORDER-LEFT:2px groove;PADDING-TOP:3px;BORDER-BOTTOM:2px groove">
							<DIV valign="top" STYLE="BORDER-RIGHT:gray 1px double;BORDER-TOP:gray 1px double;FONT-SIZE:x-small;OVERFLOW:scroll;BORDER-LEFT:gray 1px double;BORDER-BOTTOM:gray 1px double;HEIGHT:295px;BACKGROUND-COLOR:white">
								<asp:Literal Runat="server" ID="Literal1"></asp:Literal>
							</DIV>
						</DIV>
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT ID="clientEventHandlersJS" LANGUAGE="javascript">
<!--

//-->
		</SCRIPT>
	</body>
</HTML>
