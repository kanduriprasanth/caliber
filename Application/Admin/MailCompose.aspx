<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MailCompose.aspx.vb" Inherits="Admin.MailCompose" %>
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
	<body MS_POSITIONING="GridLayout" bottommargin="0" rightmargin="0" onbeforeunload="fnCloseObject()">
		<form id="f1" name="f1" method="post" runat="server">
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" height="400" cellSpacing="0" cellPadding="0" width="720" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead" colspan="2">Caliber Mail - Compose</TD>
				</TR>
				<TR>
					<TD style="PADDING-RIGHT:0px;WIDTH:120px" valign="top">
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" height="100%" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove"
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
									<A href="JavaScript:fnOpenAddress()" class="MenuAnc" onmouseover="this.className='MenuAncOver'"
										onmouseout="this.className='MenuAnc'">Address Book</A><BR>
									<BR>
									<%--<A href="AppMail.aspx" class="MenuAnc" onmouseover="this.className='MenuAncOver'" onmouseout="this.className='MenuAnc'">
										System Mails</A>--%>
								</TD>
							</TR>
						</TABLE>
					</TD>
					<TD> <!--''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''-->
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" colspan="2" style="FONT-SIZE:10pt;PADDING-TOP:5px">
									<asp:Label Runat="server" ID="Label5"><img src="../Images/CreateMail.bmp"> <B>Create a new Mail message</asp:Label></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="WIDTH:100px;PADDING-TOP:5px" align="right">
									<asp:RequiredFieldValidator ID="RFV1" ControlToValidate="Too" Runat="server" ErrorMessage="'To' field cannot be empty"
										Display="Dynamic">*</asp:RequiredFieldValidator>
									<A href="JavaScript:fnOpenAddress()" class="ToAnc" onmouseover="this.className='ToAncOver'"
										onmouseout="this.className='ToAnc'"><img border="0" src="../Images/Book.bmp" title="Select Recipient(s)">
										To: </A>
								</TD>
								<TD class="MainTD" style="PADDING-RIGHT:3px;PADDING-TOP:5px"><asp:TextBox ID="Too" Runat="server" ReadOnly="true" CssClass="txtCls" Width="100%" ></asp:TextBox>
								<asp:TextBox ID="TooHide" Runat="server" CssClass="HideRow" Width="100%" ></asp:TextBox></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="WIDTH:100px;PADDING-TOP:5px" align="right">
									<A href="JavaScript:fnOpenAddress()" class="ToAnc" onmouseover="this.className='ToAncOver'"
										onmouseout="this.className='ToAnc'"><img border="0" src="../Images/Book.bmp" title="Select Recipient(s)">
										Cc: </A>
								</TD>
								<TD class="MainTD" style="PADDING-RIGHT:3px;PADDING-TOP:5px"><asp:TextBox ID="Cc" ReadOnly="true" Runat="server" CssClass="txtCls" Width="100%" ></asp:TextBox>
								<asp:TextBox ID="CcHide" Runat="server" CssClass="HideRow" Width="100%" ></asp:TextBox></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-BOTTOM:5px;WIDTH:100px;PADDING-TOP:5px" align="right"><asp:Label Runat="server" ID="Label3">
								<asp:RequiredFieldValidator ID="Requiredfieldvalidator1" ControlToValidate="Subject" Runat="server" ErrorMessage="'Subject' field cannot be empty"
											Display="Dynamic">*</asp:RequiredFieldValidator>
								Subject: </asp:Label></TD>
								<TD class="MainTD" style="PADDING-RIGHT:3px;PADDING-BOTTOM:5px;PADDING-TOP:5px"><asp:TextBox ID="Subject" Runat="server" CssClass="txtCls" Width="455" MaxLength="100"></asp:TextBox></TD>
							</TR>
						</TABLE>
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="PADDING-TOP:5px">
									<asp:Label Runat="server" ID="Label4" Width="160">
							<asp:RequiredFieldValidator ID="Requiredfieldvalidator2" ControlToValidate="Message" Runat="server" ErrorMessage="'Write Message' field cannot be empty"
											Display="Dynamic">*</asp:RequiredFieldValidator>
							Write Message </asp:Label>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT:3px;PADDING-TOP:2px">
									<asp:TextBox ID="Message" TextMode="MultiLine" Rows="14" Runat="server" CssClass="txtCls" Width="100%" onkeypress="taLimit()" onkeyup="taCount()"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-BOTTOM:5px;PADDING-TOP:5px">
									<asp:Button Runat="server" Width="60" Text="Send" style="BORDER-RIGHT:2px outset; BORDER-TOP:2px outset; BORDER-LEFT:2px outset; BORDER-BOTTOM:2px outset"
										ID='SendButtom' CssClass="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'"></asp:Button>
									<input type="button" value="Cancel" style="BORDER-RIGHT:2px outset; BORDER-TOP:2px outset; BORDER-LEFT:2px outset; WIDTH:60px; BORDER-BOTTOM:2px outset"
										onclick="window.navigate('../BodyHome.aspx')" Class="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'">
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<asp:TextBox ID="ToKeys" Runat="server"  Width="0" Height="0" style="DISPLAY:none"></asp:TextBox>
			<asp:TextBox ID="CcKeys" Runat="server"  Width="0" Height="0" style="DISPLAY:none"></asp:TextBox>
		</form>
		<SCRIPT ID="clientEventHandlersJS" LANGUAGE="javascript">
<!--
var winObj
function errorHandler() {
  winObj = null;
  fnOpenAddress()
  return true;
}

function fnOpenAddress(){
	if(winObj!=null)winObj.focus();
	
	window.onerror = errorHandler;
	
	if(winObj==null){
		var pageURL = "MailAddress.aspx"
		var features = "height=400,width=520,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=10,left=50"
		winObj = window.open(pageURL,'ValDocumentNo',features)
		if(winObj.opener == null) winObj.opener=self;
		winObj.focus();
	}
}

function fnSetTo(argTxt,argValue){
	document.getElementById('Too').value = argTxt
	document.getElementById('TooHide').value = argTxt
	document.getElementById('ToKeys').value = argValue
}
function fnSetCc(argTxt,argValue){
	document.getElementById('Cc').value = argTxt
	document.getElementById('CcHide').value = argTxt
	document.getElementById('CcKeys').value = argValue
}

function fnGetTo() { return (document.getElementById('TooHide').value) }
function fnGetToKeys(){return(document.getElementById('ToKeys').value)}
function fnGetCc(){return(document.getElementById('CcHide').value)}
function fnGetCcKeys(){return(document.getElementById('CcKeys').value)}

function fnCloseObject(){
	if(winObj != null)
	winObj.close();
}
//-->
		</SCRIPT>
		
		<SCRIPT language="javascript">

	
		
	   //TEXTAREA VALIDATIONS FOR THE LENGHT
		var taMaxLength = 3000
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Chars")
			}
			//if (visCnt) visCnt.innerText=taObj.maxLength-taObj.value.length;
		}		
		</SCRIPT>
	</body>
</HTML>
