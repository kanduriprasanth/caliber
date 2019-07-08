<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ResetPassword.aspx.vb" Inherits="Admin.ResetPassword" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<META name="vs_defaultClientScript" content="JavaScript">
		
		<%--<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">--%>
		<SCRIPT language="javascript" src='../JScript/Common.js'></SCRIPT>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<BODY MS_POSITIONING="GridLayout">
		<FORM id="Form1" method="post" runat="server">
			<TABLE WIDTH="500"  class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0"
				CELLPADDING="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal></TD>
				</TR>
				<!-- MAIN BODY -->
				<TR>
								<TD class="SubHead">Reset Password</TD>
							</TR>
				<TR>
					<TD valign="top">
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" class="SubTable" CELLSPACING="1" CELLPADDING="0" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="MainTD" style="height: 23px">
									<ASP:LABEL Runat="server" id="UsersNameLbl" style="PADDING-LEFT:5px" Width="180"></ASP:LABEL>
									<ASP:DROPDOWNLIST Runat="server" ID="UserList" AutoPostBack="True" Width="200"></ASP:DROPDOWNLIST>
									<ASP:REQUIREDFIELDVALIDATOR id="UsersNameErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="UserList">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="TempPswAlltdLbl" style="PADDING-LEFT:5px" Width="180">  </ASP:LABEL>
									<ASP:TEXTBOX ID="Password" CssClass="TxtCls" TextMode="Password" Runat="server" Width="200" MaxLength="25"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="TempPswAlltdErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="Password">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" valign="top" style="height: 25px">
									<ASP:LABEL Runat="server" id="ReTypePswLbl" style="PADDING-LEFT:5px" Width="180"></ASP:LABEL>
									<ASP:TEXTBOX ID="RePassword" CssClass="TxtCls" TextMode="Password" Runat="server" Width="200"
										MaxLength="25"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="ReTypePswErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="RePassword">*</ASP:REQUIREDFIELDVALIDATOR>
									<ASP:COMPAREVALIDATOR ID="ReTypePswCvalMsg" Runat="server" Display="Dynamic" 
										ControlToValidate="RePassword" ControlToCompare="Password">*</ASP:COMPAREVALIDATOR>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot" valign="top">
						<ASP:BUTTON id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></ASP:BUTTON>
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="DISPLAY:none">
					</TD>
				</TR>
			</TABLE>
			<ASP:VALIDATIONSUMMARY id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		</FORM>
	</BODY>
	
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
