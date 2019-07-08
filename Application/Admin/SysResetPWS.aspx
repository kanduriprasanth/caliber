<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SysResetPWS.aspx.vb" Inherits="Admin.SysResetPWS" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<META name="vs_defaultClientScript" content="JavaScript">
		
		<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">
	</HEAD>
	<BODY MS_POSITIONING="GridLayout" style='BACKGROUND-COLOR:#ffffff' onload="document.getElementById('UserName').focus()">
		<FORM id="Form1" method="post" runat="server">
			<TABLE WIDTH="500" class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0"
				style='BORDER-TOP-WIDTH:1px;BORDER-LEFT-WIDTH:1px;BORDER-BOTTOM-WIDTH:1px;BORDER-RIGHT-WIDTH:1px'>
				<TR>
					<TD class="MainHead">Login Password</TD>
				</TR>
				<TR>
					<TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="SubHead" colspan="3">Reset Login Password</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-TOP:5px">
									<ASP:LABEL Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="140">User ID</ASP:LABEL>
									<ASP:TEXTBOX ID="UserName" CssClass="TxtCls" Runat="server" Width="180" MaxLength="20" TextMode="Password"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator2" runat="server" Display="Dynamic" ErrorMessage="Enter User Name"
										ControlToValidate="UserName">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="140">New Password</ASP:LABEL>
									<ASP:TEXTBOX ID="Password" CssClass="TxtCls" TextMode="Password" Runat="server" Width="180" MaxLength="20"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator3" runat="server" Display="Dynamic" ErrorMessage="Enter New Password"
										ControlToValidate="Password">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label2" style="PADDING-LEFT:5px" Width="140">Retype Password</ASP:LABEL>
									<ASP:TEXTBOX ID="RePassword" CssClass="TxtCls" TextMode="Password" Runat="server" Width="180"
										MaxLength="20"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator1" runat="server" Display="Dynamic" ErrorMessage="Retype Password"
										ControlToValidate="RePassword">*</ASP:REQUIREDFIELDVALIDATOR>
									<ASP:COMPAREVALIDATOR ID="CMPVal" Runat="server" Display="Dynamic" ErrorMessage="Passwords Doesn't match correct"
										ControlToValidate="RePassword" ControlToCompare="Password">*</ASP:COMPAREVALIDATOR>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style='PADDING-TOP:0px'>
						<TABLE style="BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; BORDER-BOTTOM: 2px groove"
							cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label3" style="PADDING-LEFT:1px" Width="140">Reason
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Enter Reason(s)"
											ControlToValidate="Reasons">*</ASP:REQUIREDFIELDVALIDATOR>
							</ASP:LABEL>
								</TD>
								<TD class="MainTD">
									<ASP:TEXTBOX ID="Reasons" CssClass="TxtCls" TextMode="MultiLine" Runat="server" Width="320"></ASP:TEXTBOX>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<ASP:BUTTON id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></ASP:BUTTON>
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="WIDTH:60px">
					</TD>
				</TR>
			</TABLE>
			<ASP:PANEL Visible="False" ID="Panel1" Runat="server">
				<DIV style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; MARGIN-TOP: 5px; PADDING-LEFT: 5px; MARGIN-LEFT: 80px; BORDER-LEFT: #999999 1px solid; WIDTH: 500px; BORDER-BOTTOM: #999999 1px solid; HEIGHT: 20px; BACKGROUND-COLOR: lightyellow">
					<TABLE height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
						<TR>
							<TD width="20"><IMG src="../Images/ExlamatrySmall.gif"></TD>
							<TD align="left"><SPAN style="PADDING-LEFT: 2px; FONT-SIZE: 8pt; COLOR: red; FONT-FAMILY: Arial">
									<ASP:LITERAL id="Literal1" Runat="server"></ASP:LITERAL></SPAN></TD>
						</TR>
					</TABLE>
				</DIV>
			</ASP:PANEL>
			<ASP:TEXTBOX ID="SPESign" Runat="server" ReadOnly="True" Width="0" Height="0" style="DISPLAY:none"></ASP:TEXTBOX>
			<ASP:TEXTBOX ID="SPMaxLen" Runat="server" ReadOnly="True" Width="0" Height="0" style="DISPLAY:none"></ASP:TEXTBOX>
			<ASP:TEXTBOX ID="SPComplexity" Runat="server" ReadOnly="True" Width="0" Height="0" style="DISPLAY:none"></ASP:TEXTBOX>
			<ASP:VALIDATIONSUMMARY id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		</FORM>
		<SCRIPT language="javascript">
<!--
 function ClientValidate(){
	
	if(Page_IsValid){
		var SPMaxLen = document.getElementById('SPMaxLen').value
		var SPComplexity = document.getElementById('SPComplexity').value
		var pass = document.getElementById('Password').value
		if(pass.length - SPMaxLen < 0){
			alert("Minimum Password Length should be '"+ SPMaxLen +"' Characters")
			return(false);
		}else{
			if(PswComplexityChk(SPComplexity,pass))
				return(true);
			else{
				if(SPComplexity=="Medium")
				alert("Enter Password Which includes Alpha numeric Characters")
				if(SPComplexity=="High")
				alert("Enter Password Which includes Alpha numeric and Special Characters")				
				return(false);
			}
		}
		return(true);
   }
}

   
//Password Complexity function Validation
function PswComplexityChk(SPComplexity,PwsValue){
	var reqChars = "0123456789"
	if(SPComplexity == "Medium"){
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
	}
	
	if(SPComplexity == "High"){
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
		
		reqChars ="`~!@#$%^&*()-_=+[{]}\|,<.>/?"
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
	}
	return(true);
}
// -->
		</SCRIPT>
	</BODY>
</HTML>
