<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ResetEPassword.aspx.vb" Inherits="Admin.ResetEPassword" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<META name="vs_defaultClientScript" content="JavaScript">
		
		<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">
	</HEAD>
	<BODY MS_POSITIONING="GridLayout">
		<FORM id="Form1" method="post" runat="server">
			<TABLE WIDTH="500" Height="200" class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
			<!-- MAIN HEADER -->
			<TR><TD class="MainHead">E-sign Password Reset</TD></TR>
			<!-- MAIN BODY -->
			
				<TR><TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="Border-style:groove;border-width:2px;">
						<TR><TD class="MainTD" style="padding-Top:5px;">
							<ASP:LABEL Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="160">User's Name</ASP:LABEL>
							<ASP:DROPDOWNLIST Runat="server" ID="UserList" AutoPostBack="True" Width=200>
							</ASP:DROPDOWNLIST>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Select User Name" ControlToValidate="UserList">*</ASP:REQUIREDFIELDVALIDATOR>
							</TD>
						</TR>
						<TR><TD class="MainTD">
							<ASP:LABEL Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="160">Temorary Password Allotted</ASP:LABEL>
							<ASP:TEXTBOX ID=Password  CssClass=TxtCls TextMode=Password  Runat=server Width=200 MaxLength=20></ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator3" runat="server" Display="Dynamic" ErrorMessage="Enter New Password" ControlToValidate="Password">*</ASP:REQUIREDFIELDVALIDATOR>
						</TD></TR>
						
						<TR><TD class="MainTD">
							<ASP:LABEL Runat="server" id="Label2" style="PADDING-LEFT:5px" Width="160">Retype Password</ASP:LABEL>
							<ASP:TEXTBOX ID="RePassword" CssClass=TxtCls TextMode=Password  Runat=server Width=200 MaxLength=20></ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator1" runat="server" Display="Dynamic" ErrorMessage="Retype Password" ControlToValidate="RePassword">*</ASP:REQUIREDFIELDVALIDATOR>
							<ASP:COMPAREVALIDATOR ID=CMPVal Runat=server Display=Dynamic ErrorMessage="Passwords Doesn't match correct" ControlToValidate="RePassword" ControlToCompare="Password">*</ASP:COMPAREVALIDATOR>
						</TD></TR>
						</TABLE>
					</TD>
				</TR>
			
				<!-- MAIN FOOTER -->
				<TR><TD class="MainFoot">
						<ASP:BUTTON id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'" Width=60></ASP:BUTTON>
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="reset" value="Reset" style="width:60px;">
				</TD></TR>
			</TABLE>
			<ASP:VALIDATIONSUMMARY id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		</FORM>
	</BODY>
</HTML>
