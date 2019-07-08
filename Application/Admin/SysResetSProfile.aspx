<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SysResetSProfile.aspx.vb" Inherits="Admin.SysResetSProfile" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<META name="vs_defaultClientScript" content="JavaScript">
		
		<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">
	</HEAD>
	<BODY MS_POSITIONING="GridLayout" style='Background-Color:#FFFFFF;'>
		<FORM id="Form1" method="post" runat="server">
			
				<TABLE WIDTH="500"  class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style='border-width:1px;border-color"#999999;Border-Top:1px;'>
				<TR><TD class="MainHead">IP Address</TD></TR>
				<TR><TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="Border-style:groove;border-width:2px;">
						<TR><TD class="SubHead" colspan="2">Disable IP Address Based Security</TD></TR>
						<TR><TD colspan=2 class="MainTD" style="padding-Top:5px;">						
							<ASP:CHECKBOX ID="IPBased" Runat="server" Text=" Disable IP Address Based Security" Checked=True onClick='this.checked=true;'></ASP:CHECKBOX>
						</TD></TR>						
						<TR><TD class="MainTD">
							<ASP:LABEL Runat="server" id="Label3" style="PADDING-LEFT:5px" Width="100">Reasons
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Enter Reasons(s)" ControlToValidate="Reasons">*</ASP:REQUIREDFIELDVALIDATOR>
							</ASP:LABEL>
						</TD>
						<TD class="MainTD" >
							<ASP:TEXTBOX ID=Reasons CssClass=TxtCls TextMode=MultiLine Runat=server Width=350></ASP:TEXTBOX>
						</TD></TR>
					</TABLE>
				</TD></TR>
				
				<!-- MAIN FOOTER -->
				<TR><TD class="MainFoot">
						<ASP:BUTTON id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'" Width=60></ASP:BUTTON>
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="reset" value="Reset" style="width:60px;">
				</TD></TR>
			</TABLE>
			<ASP:PANEL Visible=False  ID=Panel1 Runat=server>
			<DIV style="WIDTH:500px;HEIGHT: 20px;Background-Color:Lightyellow;Padding-Left:5px;Border-style:solid;border-width:1px;border-color:#999999;margin-left:80px;margin-Top:5px;">
				<TABLE cellpadding=0 cellspacing=0 border=0 width=100% height=100%>
				<TR><TD width=20><IMG src="../Images/ExlamatrySmall.gif"></TD>
				<TD align=left><SPAN style='font-family:Arial;font-size:8pt;Color:Red;Padding-Left:2px;'><ASP:LITERAL ID="Literal1" Runat=server></ASP:LITERAL></SPAN></TD>
				</TR>
				</TABLE>
			</DIV>
			</ASP:PANEL>
						
			<ASP:VALIDATIONSUMMARY id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		</FORM>

</BODY>
</HTML>
